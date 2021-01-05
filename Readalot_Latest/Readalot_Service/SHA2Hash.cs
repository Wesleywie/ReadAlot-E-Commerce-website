using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Readalot_Service
{
    public class SHA2Hash
    {
        public static string ComputeSha256Hash(string rawData)
        {
            // Create a SHA256   
            using (System.Security.Cryptography.SHA256 sha256Hash = System.Security.Cryptography.SHA256.Create())
            {
                // ComputeHash - returns byte array  
                byte[] bytes = sha256Hash.ComputeHash(System.Text.Encoding.UTF8.GetBytes(rawData));

                // Convert byte array to a string   
                System.Text.StringBuilder builder = new System.Text.StringBuilder();
                for (int i = 0; i < bytes.Length; i++)
                {
                    builder.Append(bytes[i].ToString("x2"));
                }
                return builder.ToString();
            }
        }
    }
}