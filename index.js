import express from "express";
import connect from "./db.js";
import rootRoutes from "./src/routes/rootRoutes.js";
const app = express()

const port = 3000
app.listen(port, () => {
    console.log('test 3000')
})


app.use(express.json())
app.use(rootRoutes)



// get like list
// app.get('/get-likes-by-res/:resId', async (req, res) => {

//     try {
//         let params = req.params
//         const { resId } = params
//         const [likes] = await connect.query(
//             'SELECT * FROM  like_res WHERE res_id = ?',
//             [resId]
//         );
//         res.status(200).json(likes);
//     } catch (error) {
//         res.status(500).json({ error: error.message });
//     }
// });
// app.get('/get-likes-by-user/:user_id', async (req, res) => {

//     try {
//         const { user_id } = req.params
//         const queryString = 'SELECT * FROM  like_res WHERE user_id = ?'
//         const [result] = await connect.query(queryString, [user_id])
//         res.send(result)
//     } catch (error) {
//         res.status(500).json({ error: error.message });
//     }
// });
// like
app.post('/like-rest', async (req, res) => {
    try {
        const { res_id, user_id, date_like } = req.body;


        const likeDate = date_like ?? new Date();


        const queryString = `INSERT INTO like_res (res_id, user_id, date_like) VALUES (?, ?, ?)`;
        const [result] = await connect.execute(queryString, [res_id, user_id, likeDate]);


        return res.status(201).json({
           
            result: result
        });

    } catch (error) {

        res.status(500).json({ error: error.message });
    }
});

// unlike
// app.delete('/unlike-rest', async (req, res) => {
//     try {
//         const queryString = 'DELETE FROM like_res WHERE res_id = ? AND user_id = ?';
//         const body = req.body
//         const { res_id, user_id } = body
//         const [result] = await connect.execute(queryString, [res_id, user_id]);
//         return res.status(200).json({
//             result: result
//         });


//     } catch (error) {
//         res.status(500).json({ error: error.message })
//     }
// })





// post create rate
// app.post('/create-rate', async (req, res) => {
//     try {
//         const { user_id, res_id, amount, date_rate } = req.body;

//         const rateDate = date_rate ?? new Date()



//         const queryString = `INSERT INTO rate_res(user_id, res_id, amount, date_rate) VALUES (?, ?, ?, ?)`;
//         const [result] = await connect.execute(queryString, [user_id, res_id, amount, rateDate]);

//         return res.status(201).json({

//             result: result
//         });

//     } catch (error) {
//         console.error("Error creating rate:", error);
//         return res.status(500).json({ error: error.message });
//     }
// });


// get rate res
// by res id
// app.get('/get-rate-rest-by-rest/:res_id', async (req, res) => {
//     try {
//         const { res_id } = req.params;
//         const queryString = 'SELECT * FROM rate_res WHERE res_id = ?';


//         const [result] = await connect.query(queryString, [res_id]);


//         return res.send(result)

//     } catch (error) {

//         res.status(500).json({ error: error.message });
//     }
// });


// by user id
// app.get('/get-rate-rest-by-user/:user_id', async (req, res) => {
//     try {
//         const { user_id } = req.params;
//         const queryString = 'SELECT * FROM rate_res WHERE user_id = ?';


//         const [result] = await connect.query(queryString, [user_id]);


//         return res.send(result)

//     } catch (error) {

//         res.status(500).json({ error: error.message });
//     }
// });



// app.post('/add-order', async (req, res) => {
//     try {
//         const { user_id, food_id, amount, code, arr_sub_id } = req.body;



//         const queryString = 'INSERT INTO orders (user_id, food_id, amount, code, arr_sub_id) VALUES (?, ?, ?, ?, ?)';


//         const [result] = await connect.execute(queryString, [user_id, food_id, amount, code, arr_sub_id]);


//         return res.send(result)

//     } catch (error) {

//         res.status(500).json({ error: error.message });
//     }
// });