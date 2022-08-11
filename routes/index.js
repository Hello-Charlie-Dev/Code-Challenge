var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.get('/musicplayer', function(req, res, next) {
  res.render('musicplayer', { title: 'Music Player' });
});

router.get('/anagrama', function(req, res, next) {
  res.render('anagrama', { title: 'Anagrama' });
});

module.exports = router;
