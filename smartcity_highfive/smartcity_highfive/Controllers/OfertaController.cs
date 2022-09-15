using HighFive.SmartCity.Domain.Interface.Application;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HighFive.SmartCity.API.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class OfertaController: ControllerBase
    {
        private readonly ILogger<MainController> _logger;
        private readonly ISmartCityApplication _application;

        public OfertaController(ILogger<MainController> logger, ISmartCityApplication application)
        {
            _logger = logger;
            _application = application;
        }


        [HttpGet("~/Oferta/BuscarOferta")]
        [ProducesResponseType(200, Type = typeof(bool))]
        public async Task<IActionResult> BuscarOferta(string nome, int minPontos, int maxPontos, int minCargaHoraria, int maxCargaHoraria)
        {
            try
            {
                var result = await _application.BuscarUsuarioOferta(nome, minPontos, maxPontos, minCargaHoraria, maxCargaHoraria);

                return Ok(result);

            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
    }
}
