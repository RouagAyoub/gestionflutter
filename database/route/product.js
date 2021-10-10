
const express = require('express');
const router = express.Router();
const { gettest, inserttest } = require('../logic/test');

router.get('/', gettest);
router.post('/', inserttest);

module.exports = router;