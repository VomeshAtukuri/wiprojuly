using CMSProject.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity.Data;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CMSProject.Controllers
{
    [Route("api/login")]
    [ApiController]
    public class LoginsController : ControllerBase
    {
        private readonly CmsDbContext _context;

        public LoginsController(CmsDbContext context)
        {
            _context = context;
        }

        [HttpPost]
        public async Task<ActionResult> Login([FromBody] Login request)
        {
            if (request == null || string.IsNullOrEmpty(request.custUsername) || string.IsNullOrEmpty(request.custPassword))
            {
                return BadRequest("Invalid login request.");
            }

            var existingCustomer = await _context.Customers
                .FirstOrDefaultAsync(c => c.custUsername == request.custUsername);

            if (existingCustomer == null)
            {
                return Unauthorized("Invalid username or password.");
            }

            // For now, plain text password check (replace with hashing in production)
            if (existingCustomer.custPassword != request.custPassword)
            {
                return Unauthorized("Invalid username or password.");
            }

            // Return only customer ID to frontend
            return Ok(new { custId = existingCustomer.custId });
        }

        private bool LoginExists(string id)
        {
            return _context.Login.Any(e => e.custUsername == id);
        }
    }
}
