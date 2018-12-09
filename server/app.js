//CONNECTION OF MODULES

const sql = require("msnodesqlv8");
const fs = require('fs');
const http = require('http');
const url = require('url');
var querystring=require('querystring'); 

//STRING FOR CONNECTION TO DATABASE

const connectionString = "server=localhost\\sqlexpress2;Database=Library;Trusted_Connection=Yes;Driver={SQL Server Native Client 11.0}";

//SERVER CREATION
//for that we need to use method of Object http, so we get server  which can tell us about the request, our task to write a callback function 
//which will ask the server how to process the request and how to form the response

const server = http.createServer((req, res)=>{
	var dataRes;
	const pathName = url.parse(req.url, true).pathname;
	const id = url.parse(req.url, true).query.id;
	

	/*var urlencodedParser = bodyParser.urlencoded({ extended: false });

	console.log(req.body);*/

	//if a requested page is the home page, we return the html file of it

	if(pathName === '/' || pathName == '/home'){

		//tell browser about status of this page and data type

		res.writeHead(200, { 'Content-type': 'text/html'});
		
		//${__dirname} - startpoint(index.js), /html/index.html - path to the requested file, required encoding - 'utf-8' and a callback
		//function, method end() for sending response with data
		fs.readFile(`${__dirname}/html/index.html`, 'utf-8', (err, data) => {
			res.end(data);
		})
	}// IMAGES
	//check if there is in the path an extension of image(jpg, png, gif...)
	//if found return image
    else if ((/\.(jpg|jpeg|png|gif)$/i).test(pathName)) {
        fs.readFile(`${__dirname}/${pathName}`, (err, data) => {
            res.writeHead(200, { 'Content-type': 'image/jpg'});
            res.end(data);
        });
    }//we want the page of all books
    else if(pathName === '/books'){
    	res.writeHead(200, { 'Content-type': 'text/html'});
    	const query = "SELECT Books.id_book as id_book, Books.name as name, Author.name +' '  + Author.lastname as id_author, Books.year_publish as year_publish FROM Books" +
    	" join Author on Books.id_author = Author.id_author";

    	fs.readFile(`${__dirname}/html/books.html`, 'utf-8', (err, data) => {
    		
			var someVar = [];

			sql.query(connectionString, query, function(err, rows){
			  if(err) {
			    throw err;
			  } else {
			    setValue(rows);
			  }
			});

			function setValue(value) {
			  someVar = value;
			  var str ='';
			  for(var i = 0; i < someVar.length; i++){
			  	str += '<td>' + someVar[i].name + '</td>';
			  	str += '<td>' + someVar[i].id_author + '</td>';
			  	str += '<td>'+ someVar[i].year_publish + '</td>';
			  	str += '<td><a href="/book?id=' + someVar[i].id_book + 
			  	'"><button>Show detail</button></a></td></tr>';
			  }
			  //const oneBook = someVar[0];
			  let output = data.replace(/{%str%}/g,str);
			  
			  res.end(output);
			}
		})
    }//we want to see detail
    else if(pathName === '/book' && id !== undefined){
    	res.writeHead(200, { 'Content-type': 'text/html'});
    	const query = "Select Books.name as name,  Author.name +' '  + Author.lastname as id_author, Publisher.name as " + 
    	"id_publish, Books.year_publish as year_publish, Books.number_pages as number_pages, Books.book_description as " + 
    	"book_description, Books.picture as picture from Books join Author on Books.id_author = Author.id_author " + 
    	" join Publisher on Books.id_publish = Publisher.id_publisher where id_book = ?";

    	fs.readFile(`${__dirname}/html/book.html`, 'utf-8', (err, data) => {
    		var books = [];
			

			sql.query(connectionString, query, [id],function(err, rows){
			  if(err) {
			    throw err;
			  } else {
			    setValue(rows);
			  }
			});

			function setValue(value) {
			  books = value;

			  const oneBook = books[0];
			  if(oneBook !== undefined){
				  let output = data.replace(/{%name%}/g,oneBook.name);
				  output = output.replace(/{%id_author%}/g,oneBook.id_author);
				  output = output.replace(/{%publicher%}/g,oneBook.id_publish);
				  output = output.replace(/{%year_publish%}/g,oneBook.year_publish);
				  output = output.replace(/{%pages%}/g,oneBook.number_pages);
				  output = output.replace(/{%description%}/g,oneBook.book_description);
				  output = output.replace(/{%img%}/g,'src="img/' + oneBook.picture + '"');
				  res.end(output);
				}else{
					res.end("Not found!");
				}
			}
		})
    }
    //we want to search books
     else if(pathName === '/search'){
    	res.writeHead(200, { 'Content-type': 'text/html'});
    	fs.readFile(`${__dirname}/html/search.html`, 'utf-8', (err, data) => {
			res.end(data);
		})
    }//recieve data from form
    else if(pathName === '/searchAction'){
    	var stringData = '';
    	const query1 = "SELECT Books.id_book as id_book, Books.name as name, Author.name +' '  + Author.lastname as id_author, Books.year_publish as year_publish FROM Books" +
      " join Author on Books.id_author = Author.id_author where Books.year_publish = ?";

      const query2 = "SELECT Books.id_book as id_book, Books.name as name, Author.name +' '  + Author.lastname as id_author, Books.year_publish as year_publish FROM Books" +
      " join Author on Books.id_author = Author.id_author where Author.lastname = ?";

      const query3 = "SELECT Books.id_book as id_book, Books.name as name, Author.name +' '  + Author.lastname as id_author, Books.year_publish as year_publish FROM Books" +
      " join Author on Books.id_author = Author.id_author join Publisher on Books.id_publish = Publisher.id_publisher where Publisher.name = ?";

      var query4 = "select DISTINCT Books.id_book as id_book, Books.name as name, Author.name + ' ' + " + "Author.lastname as id_author, Books.year_publish as year_publish from Books " + 
		 "join Author on Books.id_author = Author.id_author join ForSearch on ForSearch.id_book " + 
		 "= Books.id_book where ";
    	req.on('data', function(chunk){
    		stringData+=chunk;
		});
		var ob;
    	req.on('end', function() { 
            console.log(stringData + "<-Posted Data Test"); 
			var ob = (querystring.parse(stringData)); 
			console.log(ob);
			console.log(ob.year);
			viewPos(ob)
			
     	}); 
     	function viewPos(ob){
     		console.log(ob);
			console.log(ob.year);
			if(ob.author != ''){
				var author = ob.author;
				res.writeHead(200, { 'Content-type': 'text/html'});
    			fs.readFile(`${__dirname}/html/books.html`, 'utf-8', (err, data) => {
					var someVar = [];

			        sql.query(connectionString, query2,[author], function(err, rows){
			          if(err) {
			            throw err;
			          } else {
			            setValue(rows);
			          }
			        });
			        function setValue(value) {
			          someVar = value;
			          var str ='';
			          for(var i = 0; i < someVar.length; i++){
			            str += '<td>' + someVar[i].name + '</td>';
			            str += '<td>' + someVar[i].id_author + '</td>';
			            str += '<td>'+ someVar[i].year_publish + '</td>';
			            str += '<td><a href="/book?id=' + someVar[i].id_book + 
			            '"><button>Show detail</button></a></td></tr>';
			          }
			          //const oneBook = someVar[0];
			          let output = data.replace(/{%str%}/g,str);
			          
			          res.end(output);
			        }
				})
			}
			else if(ob.publisher != ''){
               var publisher = ob.publisher;
				res.writeHead(200, { 'Content-type': 'text/html'});
    			fs.readFile(`${__dirname}/html/books.html`, 'utf-8', (err, data) => {
					var someVar = [];

			        sql.query(connectionString, query3,[publisher], function(err, rows){
			          if(err) {
			            throw err;
			          } else {
			            setValue(rows);
			          }
			        });
			        function setValue(value) {
			          someVar = value;
			          var str ='';
			          for(var i = 0; i < someVar.length; i++){
			            str += '<td>' + someVar[i].name + '</td>';
			            str += '<td>' + someVar[i].id_author + '</td>';
			            str += '<td>'+ someVar[i].year_publish + '</td>';
			            str += '<td><a href="/book?id=' + someVar[i].id_book + 
			            '"><button>Show detail</button></a></td></tr>';
			          }
			          //const oneBook = someVar[0];
			          let output = data.replace(/{%str%}/g,str);
			          
			          res.end(output);
			        }
				})
			}
     		else if(ob.year != ''){
     			var year = ob.year;
				res.writeHead(200, { 'Content-type': 'text/html'});
    			fs.readFile(`${__dirname}/html/books.html`, 'utf-8', (err, data) => {
					var someVar = [];

			        sql.query(connectionString, query1,[year], function(err, rows){
			          if(err) {
			            throw err;
			          } else {
			            setValue(rows);
			          }
			        });
			        function setValue(value) {
			          someVar = value;
			          var str ='';
			          for(var i = 0; i < someVar.length; i++){
			            str += '<td>' + someVar[i].name + '</td>';
			            str += '<td>' + someVar[i].id_author + '</td>';
			            str += '<td>'+ someVar[i].year_publish + '</td>';
			            str += '<td><a href="/book?id=' + someVar[i].id_book + 
			            '"><button>Show detail</button></a></td></tr>';
			          }
			          //const oneBook = someVar[0];
			          let output = data.replace(/{%str%}/g,str);
			          
			          res.end(output);
			        }
				})
			}else if(ob.keywords != ''){
				var mas = ob.keywords.trim().split(' ');
				console.log(mas);
				for(var i = 0; i < mas.length; i++){
					if(mas[i] == ''){
						continue;
					}
					if(i != (mas.length - 1)){
						query4 += "ForSearch.key_value = '" + mas[i] + "' or " ;
					}else{
						query4 += "ForSearch.key_value = '" + mas[i] + "'";
					}
				}
				res.writeHead(200, { 'Content-type': 'text/html'});
    			fs.readFile(`${__dirname}/html/books.html`, 'utf-8', (err, data) => {
					var someVar = [];

			        sql.query(connectionString, query4, function(err, rows){
			          if(err) {
			            throw err;
			          } else {
			            setValue(rows);
			          }
			        });
			        function setValue(value) {
			          someVar = value;
			          var str ='';
			          for(var i = 0; i < someVar.length; i++){
			            str += '<td>' + someVar[i].name + '</td>';
			            str += '<td>' + someVar[i].id_author + '</td>';
			            str += '<td>'+ someVar[i].year_publish + '</td>';
			            str += '<td><a href="/book?id=' + someVar[i].id_book + 
			            '"><button>Show detail</button></a></td></tr>';
			          }
			          //const oneBook = someVar[0];
			          let output = data.replace(/{%str%}/g,str);
			          
			          res.end(output);
			        }
				})
				//console.log(query4);

			}else{
				res.writeHead(200, { 'Content-type': 'text/html'});
    			fs.readFile(`${__dirname}/html/notFound.html`, 'utf-8', (err, data) => {
					res.end(data);
				})
			}
     	}

     	
		

    }
	// URL NOT FOUND
    else {
        res.writeHead(404, { 'Content-type': 'text/html'});
        res.end('URL was not found on the server!');
    }
})
//keep listening on a certain port and on a certain IP address
server.listen(1337, '127.0.0.1', () => {
    console.log('Listening for requests now');
});