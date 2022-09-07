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
    public class UsuarioController : ControllerBase
    {
        private readonly ILogger<MainController> _logger;
        private readonly ISmartCityApplication _application;

        public UsuarioController(ILogger<MainController> logger, ISmartCityApplication application)
        {
            _logger = logger;
            _application = application;
        }

        [HttpPost("~/Usuario/CadastrarUsuario")]
        [ProducesResponseType(200, Type = typeof(bool))]
        public async Task<IActionResult> CadastraUsuario(Usuario request)
        {
            try
            {
                var result = await _application.AddUsuario(request);

                return Ok(result);

            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [HttpPost("~/Usuario/Login")]
        [ProducesResponseType(200, Type = typeof(bool))]
        public async Task<IActionResult> Login(Usuario request)
        {
            try
            {
                var result = await _application.Login(request);

                return Ok(result);

            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

    }
}
