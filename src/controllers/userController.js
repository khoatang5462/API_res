import connect from "../../db.js";

export const userController = {
  addOrder:  async (req, res) => {
        try {
            const { user_id } = req.params;
            const queryString = 'SELECT * FROM rate_res WHERE user_id = ?';
    
    
            const [result] = await connect.query(queryString, [user_id]);
    
    
            return res.send(result)
    
        } catch (error) {
    
            res.status(500).json({ error: error.message });
        }
    }
}