using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace Readalot_Service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IReadalotService" in both code and config file together.
    [ServiceContract]
    public interface IReadalotService
    {
        [OperationContract]
        String UserExists(string email, string password);

        [OperationContract]
        bool PasswordMatcher(String OPass, String CPass);

        [OperationContract]
        void Register(string title, string fName, string lName, string email, string password);

        [OperationContract]
        User getUserInfoByEmail(string email);

        [OperationContract]
        void registerAdmin(string title, string fName, string lName, string email, string password);

        [OperationContract]
        bool deleteUserByEmail(string email);

        [OperationContract]
        List<User> getAllUsers();


        // Product Management Methods
        [OperationContract]
        void addNewProduct(string isbn, string title, string authors, string subject, string description, int price, int quantity, string imgsrc);

        [OperationContract]
        bool deleteProductByISBN(string isbn);

        [OperationContract]
        bool deleteProductByTitle(string title);

        [OperationContract]
        TextBook getProductByISBN(string isbn);

        [OperationContract]
        List<TextBook> getProductByTitle(string title);

        [OperationContract]
        List<TextBook> getProductByAuthor(string author);

        [OperationContract]
        List<TextBook> getAllProducts();

        // wes variables
        [OperationContract]
        List<TextBook> getProductByCat(string type);

        [OperationContract]
        TextBook getBook(string ISBN);

        [OperationContract]
        List<TextBook> getProductByfilter(string type, int filter);

    }
}
