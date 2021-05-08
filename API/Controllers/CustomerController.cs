using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using net_core_lab5.Models;
using net_core_lab5.Repositories;

namespace net_core_lab5.Controllers
{
    public class CustomerController : Controller
    {
        private readonly ILogger<CustomerController> _logger;
        private readonly ICustomerRepository _customerRepository;

        public CustomerController(
            ILogger<CustomerController> logger,
            ICustomerRepository customerRepository)
        {
            _logger = logger ?? throw new ArgumentNullException(nameof(logger));
            _customerRepository = customerRepository ?? throw new ArgumentNullException(nameof(customerRepository));
        }

        public async Task<IActionResult> Index()
        {
            return View(await _customerRepository.GetAll());
        }

        public async Task<IActionResult> IndexNames()
        {
            return View(await _customerRepository.GetNames());
        }

        public async Task<IActionResult> RemoveAll()
        {
            await _customerRepository.RemoveAll();
            return RedirectToAction(nameof(Index));
        }

        public async Task<IActionResult> Edit(int id)
        {

            var customer = await _customerRepository.GetSpecific(id);
            return View(customer);
        }

        [HttpPost]
        public async Task<IActionResult> Edit(Customer customer)
        {
            await _customerRepository.Update(customer);
            return RedirectToAction(nameof(Index));
        }

        public async Task<IActionResult> Delete(int id)
        {
            var customer = await _customerRepository.GetSpecific(id);
            return View(customer);
        }

        [HttpPost]
        public async Task<IActionResult> DeleteFinal(int id)
        {
            await _customerRepository.RemoveSpecific(id);
            return RedirectToAction(nameof(Index));
        }

        public async Task<IActionResult> Create()
        {
            ViewData["count"] = await _customerRepository.Count();
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Create(Customer customer)
        {
            await _customerRepository.AddNew(customer);
            return RedirectToAction(nameof(Index));
        }


        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
