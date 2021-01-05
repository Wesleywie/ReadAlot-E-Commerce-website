using System;

namespace Readalot_Service
{
    partial class Temp_Shopping_Cart
    {

        partial class Shipping_Address
        {
            public Shipping_Address(int invoiceID, string street, string city, string province, string zipCode)
            {
                this.Invoice_ID = invoiceID;
                this.Street = street;
                this.City = city;
                this.Province = province;
                this.Zip_Code = zipCode;
            }
        }

        partial class Invoice
        {
            public Invoice(int userID, string date)
            {
                this.User_ID = userID;
                this.Invoice_Date = Convert.ToDateTime(date);
            }
        }

        partial class Invoice_Item
        {
            public Invoice_Item(int invoiceID, string isbn, int quantity)
            {
                this.Invoice_ID = invoiceID;
                this.Book_ISBN = isbn;
                this.Quantity = quantity;
            }
        }

        partial class TextBook
        {
            public TextBook(string isbn, string author, string name, string description, string category, decimal price, int quantity, string imgSource)
            {
                this.Book_ISBN = isbn;
                this.Book_Author = author;
                this.Book_Name = name;
                this.Book_Description = description;
                this.Book_Category = category;
                this.Book_Price = price;
                this.Book_Quantity = quantity;
                this.Book_ImageSource = imgSource;
            }
        }

        partial class User
        {
            public User(string title, string fName, string lName, string email, string password, string userType)
            {
                this.Title = title;
                this.F_Name = fName;
                this.L_Name = lName;
                this.E_Mail = email;
                this.Password = password;
                this.UserType = userType;
            }
        }
    }

}