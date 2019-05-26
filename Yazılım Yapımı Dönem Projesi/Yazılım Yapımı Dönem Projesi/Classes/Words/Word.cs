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
            Database.ProcedureName = "dbo.DeleteWord";
            SqlParameter[] sqlParameters = new SqlParameter[1];
            sqlParameters[0] = new SqlParameter("@id", SqlDbType.Int);
            sqlParameters[0].Value = Id;
            return Database.Queries(sqlParameters) != null ? true : false;
        }

        public bool Update()
        {
            Database.ProcedureName = "dbo.UpdateWord";
            SqlParameter[] sqlParameters = new SqlParameter[3];
            sqlParameters[0] = new SqlParameter("@wordId", SqlDbType.Int);
            sqlParameters[0].Value = Id;
            sqlParameters[1] = new SqlParameter("@word", SqlDbType.NVarChar, 50);
            sqlParameters[1].Value = _Word;
            sqlParameters[2] = new SqlParameter("@meaning", SqlDbType.NVarChar, 50);
            sqlParameters[2].Value = Meaning;
            return Database.Queries(sqlParameters) != null ? true : false;
        }
    }
}