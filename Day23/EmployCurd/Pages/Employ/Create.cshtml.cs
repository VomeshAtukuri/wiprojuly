using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace EmployCurd.Pages.Employ
{
    public class CreateModel : PageModel
    {
        private readonly EmployCurd.Models.EFCoreDbContext _context;

        public CreateModel(EmployCurd.Models.EFCoreDbContext context)
        {
            _context = context;
        }

        public IActionResult OnGet()
        {
            return Page();
        }

        [BindProperty]
        public EmployCurd.Models.Employ Employ { get; set; } = default!;

        // For more information, see https://aka.ms/RazorPagesCRUD.
        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            _context.Employees.Add(Employ);
            await _context.SaveChangesAsync();

            return RedirectToPage("./Index");
        }
    }
}
