const testmodel = require('../model/testmodel');

module.exports = {
    gettest: async (req, res, next) => {
        const test = await testmodel.find();
        res.json({
            result: test.map(res => {
                return {
                    id: res.id,
                    name: res.name,
                }
            })
        })
    },

    inserttest: async (req, res) => {
        const test = await new testmodel({
            name: req.body.name,
            surname: req.body.surname
        }).save()
        res.json({ "messagssse": "inserted", id: test.id, name: test.name })

    }
}