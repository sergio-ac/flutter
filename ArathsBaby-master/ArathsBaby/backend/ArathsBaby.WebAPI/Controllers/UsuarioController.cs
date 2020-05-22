using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace ArathsBaby.WebAPI.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class UsuarioController : ControllerBase
    {
        [Route("api/prueba")]
        [HttpGet]
        public IEnumerable<string> Get(){
            return new string[]{"valor 1","valor 2"};
        }
    }
}