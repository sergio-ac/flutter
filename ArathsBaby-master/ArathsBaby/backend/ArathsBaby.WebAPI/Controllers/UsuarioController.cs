using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
namespace ArathsBaby.WebAPI.Controllers
{
    [ApiController]
    [Route("api/[action]")]
    public class UsuarioController : ControllerBase
    {
        [HttpGet]
        
        public String despedida(){
            return "adios";
        }
                
    }
}