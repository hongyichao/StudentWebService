using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace StudentWebService
{
    /// <summary>
    /// Summary description for StudentDetailWebService
    /// </summary>
    [WebService(Namespace = "http://upvware/studentservice.com/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class StudentDetailWebService : System.Web.Services.WebService
    {

        [WebMethod]
        public StudentDetail GetStudentDetail()
        {
            return new StudentDetail{
                ID = "201812345",
                FirstName = "Hongyi",
                LastName = "Chao"
            };
        }
    }
}
