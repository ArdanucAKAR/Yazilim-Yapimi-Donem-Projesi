using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Yazilim_Yapimi_Donem_Projesi
{
    public static class deneme
    {
        public static User deneme1(User user)
        {
            HttpContext.Current.Session.Add("Username", "Ardanuc");

            Member a = new Member()
            {
                Username = user.Username,
                Password = user.Password
            };
            return a;
        }
    }
}