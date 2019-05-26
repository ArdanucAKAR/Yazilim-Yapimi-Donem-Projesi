using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace Yazilim_Yapimi_Donem_Projesi
{
    /// <summary>
    /// Summary description for AuthorizedAPI
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class AuthorizedAPI : System.Web.Services.WebService
    {
        [WebMethod(EnableSession = true)]
        public Authorized Login(Authorized authorized)
        {
            return (Authorized)AuthenticationService.Login(authorized);
        }
        [WebMethod(EnableSession = true)]
        public bool AddWord(Word word)
        {
            return word.Add();
        }
    }
}
