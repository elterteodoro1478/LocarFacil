using LocarFacil.Models;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using Microsoft.AspNetCore.Http;
using LocarFacil.Repository;
using System.Collections.Generic;

namespace LocarFacil.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        //private IHttpContextAccessor ipcontexto;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }
        public IActionResult Index(DadosBusca dadosBusca)
        {
            dadosBusca = dadosBusca == null ?  new DadosBusca() : dadosBusca;
			dadosBusca.Normalize();

            //Tipo Imovel
            ViewBag.ListaTipoImovel =  new TipoImovelRep().SelecionarTodos().Result;

            //Tipo Estados
            ViewBag.ListaEstados = new EstadosRep().SelecionarTodos().Result;

            //Lista ciades
			var ListaCidades = new CidadesRep().SelecionarListaByUF(dadosBusca.UF);
            ViewBag.ListaCidades = ListaCidades.Result;

            //Lista bairros
            ViewBag.ListaBairros = new BairrosRep().SelecionarListaByCidadeNome(dadosBusca.Cidade, dadosBusca.UF).Result; 

			ViewBag.ListaImovel = new ImovelRep().SelecionarListaGeral(dadosBusca).Result; 

			return View(dadosBusca);
        }



        public IActionResult Privacy()
        {
            //HttpContextAccessor ipcontexto = new HttpContextAccessor();
            //var ip = ipcontexto.HttpContext.Connection.LocalIpAddress.ToString();
            //var ip = this.contexto.HttpContext.Connection.RemoteIpAddress.ToString();

            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}