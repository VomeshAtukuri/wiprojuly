using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using EmployCurd.Models;

namespace EmployCurd.Pages.Employ
{
    public class DetailsModel : PageModel
    {
        private readonly EmployCurd.Models.EFCoreDbContext _context;

        public DetailsModel(EmployCurd.Models.EFCoreDbContext context)
        {
            _context = context;
        }

        public EmployCurd.Models.Employ Employ { get; set; } = default!;

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var employ = await _context.Employees.FirstOrDefaultAsync(m => m.Empno == id);
            if (employ == null)
            {
                return NotFound();
            }
            else
            {
                Employ = employ;
            }
            return Page();
        }
    }
}
