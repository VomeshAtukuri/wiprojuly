using DotnetCoreExample.Models;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace DotnetCoreExample.Pages
{
    public class EmployModel : PageModel
    {
        public List<Employ>? Employees { get; set; }

        public void OnGet()
        {
            Employees = new List<Employ>
            {
                new Employ { Empno = 1, Name = "Yamini", Basic = 83234 },
                new Employ { Empno = 2, Name = "Uday", Basic = 89923 },
                new Employ { Empno = 3, Name = "Ganesh", Basic = 92222 },
            };
        }
    }
}
