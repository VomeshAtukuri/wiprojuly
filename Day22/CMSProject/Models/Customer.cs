﻿using System.ComponentModel.DataAnnotations;

namespace CMSProject.Models
{
    public class Customer
    {
        [Key]
        public int custId { get; set; }
        public string custName { get; set; }
        public string custUsername { get; set; }
        public string custPassword { get; set; }
        public string city { get; set; }
        public string state { get; set; }
        public string email { get; set; }
        public string mobileNo { get; set; }
    }
}
