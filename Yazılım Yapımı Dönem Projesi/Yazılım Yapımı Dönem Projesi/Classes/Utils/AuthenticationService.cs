﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Yazilim_Yapimi_Donem_Projesi
{
    public static class AuthenticationService
    {
        public static User Login(User user)
        {
            SqlParameter[] spParameter = new SqlParameter[3];

            Database.ProcedureName = "dbo.CheckUser";
            spParameter[0] = new SqlParameter("@username", SqlDbType.NVarChar, 50);
            spParameter[0].Value = user.Username;

            spParameter[1] = new SqlParameter("@password", SqlDbType.NVarChar, 50);
            spParameter[1].Value = user.Password;

            spParameter[2] = new SqlParameter("@type", SqlDbType.NVarChar, 50);
            spParameter[2].Value = (user is Member) ? "Member" : "Authorized";

            DataSet ds = Database.Queries(spParameter);

            if (ds.Tables[0].Rows.Count == 1)
            {
                HttpContext.Current.Session.Add("Username", ds.Tables[0].Rows[0]["username"].ToString());
                HttpContext.Current.Session.Add("Password", ds.Tables[0].Rows[0]["password"].ToString());
                HttpContext.Current.Session.Add("LoggedIn", true);
                if (user is Member)
                {
                    HttpContext.Current.Session.Add("FullName", ds.Tables[0].Rows[0]["name"].ToString() + " " + ds.Tables[0].Rows[0]["surname"].ToString());
                    return new Member()
                    {
                        Username = user.Username,
                        Password = user.Password,
                        Name = ds.Tables[0].Rows[0]["name"].ToString(),
                        Surname = ds.Tables[0].Rows[0]["surname"].ToString()
                    };
                }
                else
                {
                    HttpContext.Current.Session.Add("FullName", user.Username);
                    return new Authorized()
                    {
                        Username = user.Username,
                        Password = user.Password
                    };
                }
            }
            else
                return null;
        }
        public static bool isLoggedIn()
        {
            if (HttpContext.Current.Session["LoggedIn"] != null)
                return (bool)HttpContext.Current.Session["LoggedIn"];
            else
                return false;
        }
        public static void Logout()
        {
            HttpContext.Current.Session.Clear();
        }
    }
}