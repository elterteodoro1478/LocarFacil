using LocarFacil.Models;
using Microsoft.EntityFrameworkCore;

namespace LocarFacil.Repository
{
    public class CidadesRep
    {
        private readonly Contexto _contexto;

        public CidadesRep()
        {
            Contexto contexto = new Contexto();
            _contexto = contexto;
        }

        public async Task<IEnumerable<Cidades>> SelecionarTodos()
        {
            try
            {
                return await _contexto.Cidades.ToListAsync();
            }
            catch (Exception ex)
            {
                Cidades cidade = new Cidades();
                cidade.Id = 0;
                cidade.Nome = $@"Erro na seleção de cidades: {ex.Message}";
                List<Cidades> Lista = new List<Cidades>();

                Lista.Add(cidade);
                return Lista.ToList();
            }
        }

        public async Task<IEnumerable<Cidades>> SelecionarListaByNome(string Nome)
        {
            try
            {
                return await _contexto.Cidades.Where(n => n.Nome.ToUpper().Contains(Nome.ToUpper())).ToListAsync();
            }
            catch (Exception ex)
            {
                Cidades cidade = new Cidades();
                cidade.Id = 0;
                cidade.Nome = $@"Erro na seleção de cidades: {ex.Message}";
                List<Cidades> Lista = new List<Cidades>();

                Lista.Add(cidade);
                return Lista.ToList();
            }
        }

        public async Task<IEnumerable<Cidades>> SelecionarListaByUF(string UF)
        {
            try
            {                
                Estados estado = await new EstadosRep().SelecionarPorUF(UF);

                int IdEstados = estado == null ? 0 : estado.Id;

                return await _contexto.Cidades.Where(n => n.IdEstados == IdEstados).ToListAsync();
            }
            catch (Exception ex)
            {
                Cidades cidade = new Cidades();
                cidade.Id = 0;
                cidade.Nome = $@"Erro na seleção de cidades: {ex.Message}";
                List<Cidades> Lista = new List<Cidades>();

                Lista.Add(cidade);
                return Lista.ToList();
            }
        }

        public async Task<IEnumerable<Cidades>> SelecionarListaByNomeUF(string Nome, String UF)
        {
            try
            {

                Estados estado = await new EstadosRep().SelecionarPorUF(UF);

                int IdEstados = estado == null ? 0 : estado.Id;

                return await _contexto.Cidades.Where(n => n.Nome.ToUpper().Contains(Nome.ToUpper()) && n.IdEstados == IdEstados).ToListAsync();
            }
            catch (Exception ex)
            {
                Cidades cidade = new Cidades();
                cidade.Id = 0;
                cidade.Nome = $@"Erro na seleção de cidades: {ex.Message}";
                List<Cidades> Lista = new List<Cidades>();

                Lista.Add(cidade);
                return Lista.ToList();
            }
        }

        public async Task<IEnumerable<Cidades>> SelecionarListaByNomeUFId(string Nome, int IdEstados)
        {
            try
            {
                return await _contexto.Cidades.Where(n => n.Nome.ToUpper().Contains(Nome.ToUpper()) && n.IdEstados == IdEstados).ToListAsync();
            }
            catch (Exception ex)
            {
                Cidades cidade = new Cidades();
                cidade.Id = 0;
                cidade.Nome = $@"Erro na seleção de cidades: {ex.Message}";
                List<Cidades> Lista = new List<Cidades>();

                Lista.Add(cidade);
                return Lista.ToList();
            }
        }

        public async Task<IEnumerable<Cidades>> SelecionarListaByUFId(int IdEstados)
        {
            try
            {               

                return await _contexto.Cidades.Where(n => n.IdEstados == IdEstados).ToListAsync();
            }
            catch (Exception ex)
            {
                Cidades cidade = new Cidades();
                cidade.Id = 0;
                cidade.Nome = $@"Erro na seleção de cidades: {ex.Message}";
                List<Cidades> Lista = new List<Cidades>();

                Lista.Add(cidade);
                return Lista.ToList();
            }
        }

        public async Task<Cidades> SelecionById(int id)
        {
            try
            {
                return await _contexto.Cidades.Where(c => c.Id == id).FirstOrDefaultAsync();
            }
            catch (Exception ex)
            {
                Cidades cidade = new Cidades();
                cidade.Id = 0;
                cidade.Nome = $@"Erro na seleção de cidades: {ex.Message}";
                
                return cidade;
            }
        }

    }
}
