const { request, response } = require('express');
const express = require('express');
const server = express();

const cors = require('cors');
server.use(cors());


server.use(express.json());
server.use(express.urlencoded({ extended: 1 }));

const mysql = require('mysql');
const mysqlConnection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '',
    database: 'm5'
}); // создание соединения с сервером

mysqlConnection.connect((err) => {
    if (!err) {
        console.log('Connected to database');
    }
})

// // /coins/1
// server.get('/coins/:num', (request, response) => {
//     
//     let query = `
//         select 
//         m5.coins.id, m5.coins.avers , m5.coins.name , m5.coins.short_description
//         from m5.coins
//         join m5.coin_catalogs cc on cc.id=m5.coins.coin_catalog_id 
//         where cc.id=${request.params.num}
//     `;

//     mysqlConnection.query(query, (err, data) => {
//         response.status(200).json(data);
//     });

// })

server.get('/coins/', (request, response) => {
    console.log(request.query);
    let condition = ``;
    let i=0;
    for(let nameCondition in request.query) {
        let and='';
        let or = '';

        if (i>0 && condition.length>0) {
            and=" and ";
            or=" or ";

        }
        if(nameCondition === 'catalogID') {
            condition += `${and}c.coin_catalog_id=${request.query[nameCondition]}`
        }
        if(nameCondition === 'compositionID') {
            condition += `${and}c.composition_id=${request.query[nameCondition]}`
        }
        if(nameCondition === 'qualityID') {
            condition += `${and}c.quality_id=${request.query[nameCondition]}`
        }
        if(nameCondition === 'inputSearchField') {
            condition += `${and}(c.name like '%${request.query[nameCondition]}%' or `;
            condition += `${and}c.short_description like '%${request.query[nameCondition]}%' or `;
            condition += `${and}c.description like '%${request.query[nameCondition]}%')`;
        }
        if(nameCondition === 'countryID') {
            condition += `${and}country_id=${request.query[nameCondition]}`
        }
        if(nameCondition === 'name') {
            condition += `${and}name='${request.query[nameCondition]}'`
        }
        if(nameCondition === 'priceFrom') {
            condition += `${and}price>${request.query[nameCondition]}`
        }
        if(nameCondition === 'priceTo') {
            condition += `${and}price<${request.query[nameCondition]}`
        }
        if(nameCondition === 'yearFrom') {
            condition += `${and}year>${request.query[nameCondition]}`
        }
        if(nameCondition === 'yearTo') {
            condition += `${and}year<${request.query[nameCondition]}`
        }

        i++;
    }
    console.log(condition);
  
    let query = `
        select
        c.id, c.avers , c.name , c.short_description
        from m5.coins c
        where ${condition}
        `;
    mysqlConnection.query(query, (err, data) => {
        response.status(200).json(data);
    });
})

server.get('/coin-catalogs', (request, response) => {


    let query = `
    select m5.coin_catalogs.* from m5.coin_catalogs
    `;

    mysqlConnection.query(query, (err, data) => {
        response.status(200).json(data);
    });

})

// server.get('/countries', (request, response) => {

//     let query = `
//     select m5.countries.* from m5.countries
//     `;
//     mysqlConnection.query(query, (err, data) => {
//         response.status(200).json(data);
//     });

// })

// server.get('/compositions', (request, response) => {

//     let query = `
//     select m5.compositions.* from m5.compositions
//     `;
//     mysqlConnection.query(query, (err, data) => {
//         response.status(200).json(data);
//     });

// })

// server.get('/qualities', (request, response) => {

//     let query = `
//     select m5.qualities.* from m5.qualities
//     `;
//     mysqlConnection.query(query, (err, data) => {
//         response.status(200).json(data);
//     });

// })

server.get('/filters', (request, response) => {
    let filters = request.query.filters;
    filters = filters.split(',');
    let result = {};
    let i = 0;

    filters.forEach((filter) => {

        let query = `
        select m5.${filter}.* from m5.${filter}
        `;

        mysqlConnection.query(query, (err, data) => {
            i++;
            if (err) {

                response.json('Произошла ошибка.')
                return;
            }
            // console.log(data);
            result[filter] = data;
            if (i >= filters.length) {
                response.status(200).json(result);
                return;
            }
            // console.log(result)
        });
    })

})

server.get('/coin/:id', (request, response) => {

    let query = `
        select 
        coin.avers,
        coin.revers,
        coin.name,
        coin.short_description,
        coin.description,
        coin.year ,
        coin.weight ,
        coin .price ,
        coin.denomination,
        c.name name_country,
        c2.name name_metal,
        q.name name_quality,
        cu.name name_currency_unit,
        c3.symbol 
        from m5.coins coin
        join m5.countries c on c.id=coin.country_id 
        join m5.compositions c2 on c2.id=coin.composition_id 
        join m5.currency_units cu on cu.id=coin.currency_unit_id 
        join m5.qualities q on q.id=coin .quality_id
        join m5.currencies c3 on c3.id = coin .currency_id 
        where m5.coin.id=${request.params.id}
    `;
    mysqlConnection.query(query, (err, data) => {
        // console.log(data)
        response.status(200).json(data);
    });

})

server.listen(3002, () => {
    console.log('Сервер запущен и доступен по адресу: http://localhost:3002');
});