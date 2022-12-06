using LocarFacil.Models;
using Microsoft.EntityFrameworkCore;

namespace LocarFacil.Repository
{
    public class BairrosRep
    {

        private readonly Contexto _contexto;

        public BairrosRep()
        {
            Contexto contexto = new Contexto();
            _contexto = contexto;
        }

        public async Task<IEnumerable<Bairros>> SelecionarTodos()
        {
            try
            {
                return await _contexto.Bairros.ToListAsync();
            }
            catch (Exception ex)
            {
                Bairros bairro = new Bairros();
                bairro.Id = 0;
                bairro.Nome = $@"Erro na seleção de bairro: {ex.Message}";
                List<Bairros> Lista = new List<Bairros>();

                Lista.Add(bairro);
                return Lista.ToList();
            }
        }

        public async Task<IEnumerable<Bairros>> SelecionarListaByNome(string Nome)
        {
            try
            {
                return await _contexto.Bairros.Where(n => n.Nome.ToUpper().Contains(Nome.ToUpper())).ToListAsync();
            }
            catch (Exception ex)
            {
                Bairros bairro = new Bairros();
                bairro.Id = 0;
                bairro.Nome = $@"Erro na seleção de bairro: {ex.Message}";
                List<Bairros> Lista = new List<Bairros>();

                Lista.Add(bairro);
                return Lista.ToList();
            }
        }


        public async Task<IEnumerable<Bairros>> SelecionarListaByCidadeId( int? IdCidade)
        {
            try
            {
                return await _contexto.Bairros.Where(n => n.IdCidade == (IdCidade == null? 0 : IdCidade) ).ToListAsync();
            }
            catch (Exception ex)
            {
                Bairros bairro = new Bairros();
                bairro.Id = 0;
                bairro.Nome = $@"Erro na seleção de bairro: {ex.Message}";
                List<Bairros> Lista = new List<Bairros>();

                Lista.Add(bairro);
                return Lista.ToList();
            }
        }



        public async Task<IEnumerable<Bairros>> SelecionarListaByCidadeNome(string Nome, String UF)
        {
            try
            {
                List<Cidades> cidades = (List<Cidades>)new CidadesRep().SelecionarListaByNomeUF(Nome,UF).Result;

                int IdCidade = cidades == null ? 0 : cidades[0].Id;

                //int IdCidade = 0;

                return await _contexto.Bairros.Where(n => n.IdCidade == IdCidade).ToListAsync();
            }
            catch (Exception ex)
            {
                Bairros bairro = new Bairros();
                bairro.Id = 0;
                bairro.Nome = $@"Erro na seleção de bairro: {ex.Message}";
                List<Bairros> Lista = new List<Bairros>();

                Lista.Add(bairro);
                return Lista.ToList();
            }
        }
    }
}
