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
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly IAgentRepository _agentRepository;

        public HomeController(
            ILogger<HomeController> logger,
            IAgentRepository agentRepository)
        {
            _logger = logger ?? throw new ArgumentNullException(nameof(logger));
            _agentRepository = agentRepository ?? throw new ArgumentNullException(nameof(agentRepository));
        }

        public async Task<IActionResult> Index()
        {
            return View(await _agentRepository.GetAll());
        }

        public async Task<IActionResult> RemoveAll()
        {
            await _agentRepository.RemoveAll();
            return RedirectToAction(nameof(Index));
        }

        public async Task<IActionResult> Edit(int id)
        {
            var agent = await _agentRepository.GetSpecific(id);
            return View(agent);
        }

        [HttpPost]
        public async Task<IActionResult> Edit(Agent agent)
        {
            await _agentRepository.Update(agent);
            return RedirectToAction(nameof(Index));
        }

        public async Task<IActionResult> Delete(int id)
        {
            var agent = await _agentRepository.GetSpecific(id);
            return View(agent);
        }

        [HttpPost]
        public async Task<IActionResult> DeleteFinal(int id)
        {
            await _agentRepository.RemoveSpecific(id);
            return RedirectToAction(nameof(Index));
        }

        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Create(Agent agent)
        {
            await _agentRepository.AddNew(agent);
            return RedirectToAction(nameof(Index));
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
