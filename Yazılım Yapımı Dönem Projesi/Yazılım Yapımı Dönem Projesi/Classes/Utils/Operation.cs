using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
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
    }
}