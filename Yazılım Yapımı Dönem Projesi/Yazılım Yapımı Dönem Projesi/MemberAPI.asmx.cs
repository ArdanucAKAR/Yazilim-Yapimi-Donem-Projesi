using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace Yazilim_Yapimi_Donem_Projesi
{
    /// <summary>
    /// Summary description for API
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class API : System.Web.Services.WebService
    {
        [WebMethod(EnableSession = true)]
        public object Add(Member member)
        {
            return member.Add();
        }
        [WebMethod(EnableSession = true)]
        public object GetStatistics(Member member, string statisticsType)
        {
            return member.GetStatistics(statisticsType);
        }
        [WebMethod(EnableSession = true)]
        public bool AddAction(Member member, Word word, int isCorret)
        {
            return member.AddAction(word, isCorret);
        }
    }
}
