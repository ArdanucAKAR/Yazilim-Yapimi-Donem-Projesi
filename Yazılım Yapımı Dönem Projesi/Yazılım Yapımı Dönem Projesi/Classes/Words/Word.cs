using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Yazilim_Yapimi_Donem_Projesi
{
    public class Word : CRUD
    {
        public int Id { get; set; }
        public string _Word { get; set; }
        public string Meaning { get; set; }
        public int Language { get; set; }

        public bool Add()
        {
            Database.ProcedureName = "dbo.AddWord";
            SqlParameter[] sqlParameters = new SqlParameter[3];
            sqlParameters[0] = new SqlParameter("@word", SqlDbType.NVarChar, 50);
            sqlParameters[0].Value = _Word;
            sqlParameters[1] = new SqlParameter("@meaning", SqlDbType.NVarChar, 50);
            sqlParameters[1].Value = Meaning;
            sqlParameters[2] = new SqlParameter("@language", SqlDbType.Int);
            sqlParameters[2].Value = Language;
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