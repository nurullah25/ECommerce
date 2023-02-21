using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ECommerce.DAL
{
    public static class Connection
    {
        public static string getConnection()
        {
            string str = "Data Source=DESKTOP-03VU7SV; Initial Catalog=AspProject; Integrated Security=TRUE";
            return str;
        }
    }
}