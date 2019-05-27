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
            Database.ProcedureName = "dbo.AddMember";
            SqlParameter[] sqlParameters = new SqlParameter[5];
            sqlParameters[0] = new SqlParameter("@username", SqlDbType.NVarChar, 50);
            sqlParameters[0].Value = Username;
            sqlParameters[1] = new SqlParameter("@password", SqlDbType.NVarChar, 50);
            sqlParameters[1].Value = Password;
            sqlParameters[2] = new SqlParameter("@name", SqlDbType.NVarChar, 50);
            sqlParameters[2].Value = Name;
            sqlParameters[3] = new SqlParameter("@surname", SqlDbType.NVarChar, 50);
            sqlParameters[3].Value = Surname;
            sqlParameters[4] = new SqlParameter("@language", SqlDbType.Int);
            sqlParameters[4].Value = Language;
            return Database.Queries(sqlParameters) != null ? true : false;
        }

        public bool Delete()
        {
            throw new NotImplementedException();
        }

        public bool Update()
        {
            throw new NotImplementedException();
        }
    }
}