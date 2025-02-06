import connect from "../../db.js";
export const resController = 
    {
        getLikeListResId : async (req, res) => {

            try {
                let params = req.params
                const { resId } = params
                const [likes] = await connect.query(
                    'SELECT * FROM  like_res WHERE res_id = ?',
                    [resId]
                );
                res.status(200).json(likes);
            } catch (error) {
                res.status(500).json({ error: error.message });
            }
        },
        getLikeListUserId:  async (req, res) => {

            try {
                const { user_id } = req.params
                const queryString = 'SELECT * FROM  like_res WHERE user_id = ?'
                const [result] = await connect.query(queryString, [user_id])
                res.send(result)
            } catch (error) {
                res.status(500).json({ error: error.message });
            }
        },
        likeRest: async (req, res) => {
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
        },
        unLike: async (req, res) => {
            try {
                const queryString = 'DELETE FROM like_res WHERE res_id = ? AND user_id = ?';
                const body = req.body
                const { res_id, user_id } = body
                const [result] = await connect.execute(queryString, [res_id, user_id]);
                return res.status(200).json({
                    result: result
                });
        
        
            } catch (error) {
                res.status(500).json({ error: error.message })
            }
        },
        createRate: async (req, res) => {
            try {
                const { user_id, res_id, amount, date_rate } = req.body;
        
                const rateDate = date_rate ?? new Date()
        
        
        
                const queryString = `INSERT INTO rate_res(user_id, res_id, amount, date_rate) VALUES (?, ?, ?, ?)`;
                const [result] = await connect.execute(queryString, [user_id, res_id, amount, rateDate]);
        
                return res.status(201).json({
        
                    result: result
                });
        
            } catch (error) {
                console.error("Error creating rate:", error);
                return res.status(500).json({ error: error.message });
            }
        },
        getRateByRest: async (req, res) => {
            try {
                const { res_id } = req.params;
                const queryString = 'SELECT * FROM rate_res WHERE res_id = ?';
        
        
                const [result] = await connect.query(queryString, [res_id]);
        
        
                return res.send(result)
        
            } catch (error) {
        
                res.status(500).json({ error: error.message });
            }
        },
        getRateByUser : async (req, res) => {
            try {
                const { user_id } = req.params;
                const queryString = 'SELECT * FROM rate_res WHERE user_id = ?';
        
        
                const [result] = await connect.query(queryString, [user_id]);
        
        
                return res.send(result)
        
            } catch (error) {
        
                res.status(500).json({ error: error.message });
            }
        },
    }






