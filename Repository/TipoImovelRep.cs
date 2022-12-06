using LocarFacil.Models;
using Microsoft.EntityFrameworkCore;

namespace LocarFacil.Repository
{
    public class TipoImovelRep
    {
        private readonly Contexto _contexto;

        public TipoImovelRep()
        {
            Contexto contexto = new Contexto();
            _contexto = contexto;
        }

        public async Task<IEnumerable<TipoImovel>> SelecionarTodos()
        {
            try
            {
                return await _contexto.TipoImovel.ToListAsync();
            }
            catch (Exception ex)
            {
                TipoImovel tipoImovel = new TipoImovel();
                tipoImovel.Id = 0;
                tipoImovel.Nome = $@"Erro na seleção de estados: {ex.Message}";
                List<TipoImovel> Lista = new List<TipoImovel>();

                Lista.Add(tipoImovel);
                return Lista.ToList();
            }
        }

        public async Task<IEnumerable<TipoImovel>> SelecionarListaByNome(string Nome)
        {
            try
            {
                return await _contexto.TipoImovel.Where(n=> n.Nome.ToUpper().Contains(Nome.ToUpper())).ToListAsync();
            }
            catch (Exception ex)
            {
                TipoImovel tipoImovel = new TipoImovel();
                tipoImovel.Id = 0;
                tipoImovel.Nome = $@"Erro na seleção de estados: {ex.Message}";
                List<TipoImovel> Lista = new List<TipoImovel>();

                Lista.Add(tipoImovel);
                return Lista.ToList();
            }
        }

        public async Task<TipoImovel> SelecionById(int id)
        {
            try
            {
                return await _contexto.TipoImovel.Where(c => c.Id == id).FirstOrDefaultAsync();
            }
            catch (Exception ex)
            {
                TipoImovel tipoImovel = new TipoImovel();
                tipoImovel.Id = 0;
                tipoImovel.Nome = $@"Erro na seleção de estados: {ex.Message}";
                return tipoImovel;
            }
        }

    }
}
