using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Dynamic;
using System.Linq;
using System.Web;

namespace Yazilim_Yapimi_Donem_Projesi
{
    public static class Operation
    {
        public static object HomePage()
        {
            Database.ProcedureName = "dbo.HomePage";
            DataSet ds = Database.Queries(null);
            ds.Tables[0].TableName = "HomePage";
            return JsonConvert.SerializeObject(ds);
        }
        public static object AllLanguage()
        {
            Database.ProcedureName = "dbo.AllLanguage";
            DataSet ds = Database.Queries(null);
            ds.Tables[0].TableName = "AllLanguage";
            return JsonConvert.SerializeObject(ds);
        }
        public static object AllWord()
        {
            Database.ProcedureName = "dbo.AllWord";
            DataSet ds = Database.Queries(null);
            ds.Tables[0].TableName = "AllWord";
            return JsonConvert.SerializeObject(ds);
        }
        public static object GetWord(Word word)
        {
            Database.ProcedureName = "dbo.GetWord";
            SqlParameter[] sqlParameters = new SqlParameter[2];
            sqlParameters[0] = new SqlParameter("@id", SqlDbType.Int);
            sqlParameters[0].Value = word.Id;
            sqlParameters[1] = new SqlParameter("@language", SqlDbType.Int);
            sqlParameters[1].Value = word.Language;
            DataSet ds = Database.Queries(sqlParameters);
            ds.Tables[0].TableName = "GetWord";
            return JsonConvert.SerializeObject(ds);
        }
        //public static bool CheckWord(string word)
        //{
        //    Database.ProcedureName = "dbo.CheckWord";
        //    SqlParameter[] sqlParameters = new SqlParameter[1];
        //    sqlParameters[0] = new SqlParameter("@word", SqlDbType.NVarChar, 50);
        //    sqlParameters[0].Value = word;
        //    DataSet ds = Database.Queries(sqlParameters);
        //    return ds.Tables[0].Rows.Count == 0 ? true : false;
        //}
    }
}