using System.ComponentModel.DataAnnotations;

namespace CMSProject.Models
{
    public class Login
    {
        [Key]
        public string? custUsername { get; set; }
        public string? custPassword { get; set; }
    }
}
