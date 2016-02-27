using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MainSSO.Models
{
    public class UserStatus
    {
        public bool UserLoggedIn { get; set; }

        public bool RequestIdValid { get; set; }
    }
}