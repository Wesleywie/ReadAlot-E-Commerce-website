using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace Readalot_Service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "ReadalotService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select ReadalotService.svc or ReadalotService.svc.cs at the Solution Explorer and start debugging.
    public class ReadalotService : IReadalotService
    {
        ReadalotDataClassesDataContext db;

        public ReadalotService()
        {
            db = new ReadalotDataClassesDataContext();
        }


        public bool PasswordMatcher(string OPass, string CPass) // password matcher fucntion OPass = Origial Password
        {                                                       // CPass = Confirm Pasword
            if (OPass == CPass)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public void Register(string title, string fName, string lName, string email, string password)
        {
            if ((fName != null) && (lName != null) && (email != null) && (password != null))
            {

                User newUser = new User(title, fName, lName, email.ToLower(), password, "Client");

                db.Users.InsertOnSubmit(newUser);
                db.SubmitChanges();
            }
        }

        public String UserExists(string email, string password)
        {

            var user = (from u in db.Users
                        where u.E_Mail.Equals(email)
                        select u).FirstOrDefault();

            if (user != null) // returns true if not null
            {
                return user.E_Mail;
            }
            else
            {
                return "";
            }

        }


        public User getUserInfoByEmail(string email)
        {

            return (from e in db.Users
                    where e.E_Mail == email.ToLower()
                    select e).FirstOrDefault();
        }

        public void registerAdmin(string title, string fName, string lName, string email, string password)
        {
            if ((fName != null) && (lName != null) && (email != null) && (password != null))
            {

                User newAdmin = new User(title, fName, lName, email.ToLower(), SHA2Hash.ComputeSha256Hash(password), "Administrator");

                db.Users.InsertOnSubmit(newAdmin);
                db.SubmitChanges();
            }
        }

        public bool deleteUserByEmail(string email)
        {

            dynamic user = (from e in db.Users
                            where e.E_Mail == email.ToLower()
                            select e).FirstOrDefault();

            if (user != null)
            {
                db.Users.DeleteOnSubmit(user);
                db.SubmitChanges();

                return true;
            }

            return false;
        }

        public List<User> getAllUsers()
        {

            return (from e in db.Users
                    select e).ToList();
        }


        //PRODUCT MANAGEMENT

        public void addNewProduct(string isbn, string title, string authors, string subject, string description, int price, int quantity, string imgsrc)
        {
            dynamic newProduct = new TextBook(isbn, title, authors, subject, description, price, quantity, imgsrc);

            db.TextBooks.InsertOnSubmit(newProduct);
            db.SubmitChanges();
        }

        public bool deleteProductByISBN(string isbn)
        {
            dynamic product = (from e in db.TextBooks
                               where e.Book_ISBN == isbn
                               select e).FirstOrDefault();

            if (product != null)
            {
                db.TextBooks.DeleteOnSubmit(product);
                db.SubmitChanges();

                return true;
            }

            return false;
        }

        public bool deleteProductByTitle(string title)
        {
            dynamic product = (from e in db.TextBooks
                               where e.Book_Name.ToLower() == title.ToLower()
                               select e).FirstOrDefault();

            if (product != null)
            {
                db.TextBooks.DeleteOnSubmit(product);
                db.SubmitChanges();

                return true;
            }

            return false;
        }

        public TextBook getProductByISBN(string isbn)
        {
            return (from e in db.TextBooks
                    where e.Book_ISBN == isbn
                    select e).FirstOrDefault();
        }

        public List<TextBook> getProductByTitle(string title)
        {
            return (from e in db.TextBooks
                    where e.Book_Name == title
                    select e).ToList();
        }

        public List<TextBook> getProductByAuthor(string author)
        {
            return (from e in db.TextBooks
                    where e.Book_Author.Contains(author)
                    select e).ToList();
        }

        public List<TextBook> getAllProducts()
        {
            return (from e in db.TextBooks
                    select e).ToList();
        }

        public List<TextBook> getProductByCat(string type)
        {
            dynamic TextBooks = (from e in db.TextBooks
                                 where e.Book_Category.Equals(type)
                                 select e).ToList();

            return TextBooks;
        }

        public TextBook getBook(string ISBN)
        {
            var FoundBook = (from e in db.TextBooks
                             where e.Book_ISBN.Equals(ISBN)
                             select e).FirstOrDefault();

            TextBook txtbook = new TextBook
            {
                Book_ISBN = FoundBook.Book_ISBN,
                Book_Name = FoundBook.Book_Name,
                Book_Author = FoundBook.Book_Author,
                Book_Description = FoundBook.Book_Description,
                Book_Category = FoundBook.Book_Category,
                Book_Price = FoundBook.Book_Price,
                Book_Quantity = FoundBook.Book_Quantity,
                Book_ImageSource = FoundBook.Book_ImageSource,
            };

            return txtbook;


        }

        public List<TextBook> getProductByfilter(string type, int filter)
        {

            List<TextBook> TextBooks = null;

            if (filter == 1) //asc
            {
                TextBooks = (from e in db.TextBooks
                             where e.Book_Category.Equals(type)
                             orderby e.Book_Price ascending
                             select e).ToList();
            }
            else if(filter == 2) //desc
            {
               TextBooks = (from e in db.TextBooks
                            where e.Book_Category.Equals(type)
                            orderby e.Book_Price descending
                            select e).ToList();
            }
            else if(filter == 3) //asc name
            {
                TextBooks = (from e in db.TextBooks
                             where e.Book_Category.Equals(type)
                             orderby e.Book_Name ascending
                             select e).ToList();
            }
            else if(filter == 4) //desc name
            {
                TextBooks = (from e in db.TextBooks
                             where e.Book_Category.Equals(type)
                             orderby e.Book_Name descending
                             select e).ToList();
            }

            return TextBooks;
        }
    }
}
