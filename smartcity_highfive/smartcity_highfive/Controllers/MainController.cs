using HighFive.SmartCity.Domain.Entity;
using HighFive.SmartCity.Domain.Interface.Application;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace HighFive.SmartCity.API.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class MainController : ControllerBase
    {
        private readonly ILogger<MainController> _logger;
        private readonly ISmartCityApplication _application;

        public MainController(ILogger<MainController> logger, ISmartCityApplication application)
        {
            _logger = logger;
            _application = application;
        }

        [HttpGet("~/CadastrarCategoria")]
        [ProducesResponseType(200, Type = typeof(bool))]
        public async Task<IActionResult> CadastraCategoria(string request)
        {

            try
            {
                var result = await _application.AddCategoria(request);
                
                return Ok(result);

            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }



    }
}
