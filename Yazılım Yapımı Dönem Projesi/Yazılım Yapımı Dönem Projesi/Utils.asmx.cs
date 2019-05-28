using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace Yazilim_Yapimi_Donem_Projesi
{
    /// <summary>
    /// Summary description for Utils
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class Utils : System.Web.Services.WebService
    {
        [WebMethod(EnableSession = true)]
        public object HomePage()
        {
            return Operation.HomePage();
        }
        [WebMethod(EnableSession = true)]
        public object AllLanguage()
        {
            return Operation.AllLanguage();
        }
        [WebMethod(EnableSession = true)]
        public object AllWord()
        {
            return Operation.AllWord();
        }
        [WebMethod(EnableSession = true)]
        public object GetWord(Word word)
        {
            return Operation.GetWord(word);
        }
        [WebMethod(EnableSession = true)]
        public object NewQuestion()
        {
            return Operation.NewQuestion();
        }
    }
}
