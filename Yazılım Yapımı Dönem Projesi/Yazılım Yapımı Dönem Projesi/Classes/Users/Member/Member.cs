using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Data;

namespace Yazilim_Yapimi_Donem_Projesi
{
    public class Member : User, CRUD
    {
        public string Name { get; set; }
        public string Surname { get; set; }
        public int Language { get; set; }

        public bool Add()
        {
            throw new NotImplementedException();
        }

        public bool Delete()
        {
            throw new NotImplementedException();
        }

        public bool Delte()
        {
            throw new NotImplementedException();
        }

        public bool Update()
        {
            throw new NotImplementedException();
        }
    }
}