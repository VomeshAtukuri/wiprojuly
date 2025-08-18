using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using EmployCurd.Models;
namespace EmployCurd.Pages.Employ
{
    public class IndexModel : PageModel
    {
        private readonly EmployCurd.Models.EFCoreDbContext _context;

        public IndexModel(EmployCurd.Models.EFCoreDbContext context)
        {
            _context = context;
        }

        public IList<EmployCurd.Models.Employ> Employ { get; set; } = default!;

        public async Task OnGetAsync()
        {
            Employ = await _context.Employees.ToListAsync();
        }
    }
}
