using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Yazilim_Yapimi_Donem_Projesi.Classes.Users.Member
{
    public class MemberAction
    {
        public int Id { get; set; }
        public int MemberId { get; set; }
        public int Word { get; set; }
        public int Stage { get; set; }
        public DateTime Date { get; set; }
    }
}