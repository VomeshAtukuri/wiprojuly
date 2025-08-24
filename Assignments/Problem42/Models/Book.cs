using System.ComponentModel.DataAnnotations;

namespace Problem42.Models
{
    public class Book
    {
        [Key]
        public int Id { get; set; }
        public string? Title { get; set; }
        public int AuthorId { get; set; }

    }
}
