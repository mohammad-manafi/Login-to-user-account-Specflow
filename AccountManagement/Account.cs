using System;
using System.Linq;

namespace AccountManagement
{
    public class Account
    {
        public string Username { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }

        public Account(string username, string password, string email)
        {
            Username = username;
            Password = password;
            Email = email;

        }

        public string Authenticate(DataStore store)
        {
            return store
                .Accounts
                .Any(x => x.Username == Username && x.Password == Password && x.Email == Email)
                ? "Authenticated"
                : "Access Deny";
        }
    }
}
