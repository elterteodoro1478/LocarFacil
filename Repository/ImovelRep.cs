using LocarFacil.Models;
using Microsoft.EntityFrameworkCore;

namespace LocarFacil.Repository
{
    public class ImovelRep
    {
        private readonly Contexto _contexto;

        public ImovelRep()
        {
            Contexto contexto = new Contexto();
            _contexto = contexto;
        }


        public async Task<IEnumerable<Imovel>> SelecionarTodos()
        {
            try
            {
                return await _contexto.Imovel.ToListAsync();
            }
            catch (Exception ex)
            {
                Imovel imovel = new Imovel();
                imovel.Id = 0;
                imovel.Descricao = $@"Erro na seleção de imoveis: {ex.Message}";
                List<Imovel> Lista = new List<Imovel>();

                Lista.Add(imovel);
                return Lista.ToList();
            }
        }


        public async Task<IEnumerable<Imovel>> SelecionarListaByNome(string Descricao)
        {
            try
            {
                return await _contexto.Imovel.Where(n => n.Descricao.ToUpper().Contains(Descricao.ToUpper())).ToListAsync();
            }
            catch (Exception ex)
            {
                Imovel imovel = new Imovel();
                imovel.Id = 0;
                imovel.Descricao = $@"Erro na seleção de imoveis: {ex.Message}";
                List<Imovel> Lista = new List<Imovel>();

                Lista.Add(imovel);
                return Lista.ToList();
            }
        }


        public async Task<IEnumerable<Imovel>> SelecionarListaDetalhamento(string Detalhamento)
        {
            try
            {
                return await _contexto.Imovel.Where(n => n.Detalhamento.ToUpper().Contains(Detalhamento.ToUpper())).ToListAsync();
            }
            catch (Exception ex)
            {
                Imovel imovel = new Imovel();
                imovel.Id = 0;
                imovel.Descricao = $@"Erro na seleção de imoveis: {ex.Message}";
                List<Imovel> Lista = new List<Imovel>();

                Lista.Add(imovel);
                return Lista.ToList();
            }
        }

        public async Task<IEnumerable<Imovel>> SelecionarListaCep(string Cep)
        {
            try
            {
                return await _contexto.Imovel.Where(n => n.Cep.Replace(".","").Replace(".", "") == Cep.Replace(".", "").Replace(".", "") ).ToListAsync();
            }
            catch (Exception ex)
            {
                Imovel imovel = new Imovel();
                imovel.Id = 0;
                imovel.Descricao = $@"Erro na seleção de imoveis: {ex.Message}";
                List<Imovel> Lista = new List<Imovel>();

                Lista.Add(imovel);
                return Lista.ToList();
            }
        }


        public async Task<IEnumerable<Imovel>> SelecionarListaUF(string UF)
        {
            try
            {
                return await _contexto.Imovel.Where(n => n.UF == UF ).ToListAsync();
            }
            catch (Exception ex)
            {
                Imovel imovel = new Imovel();
                imovel.Id = 0;
                imovel.Descricao = $@"Erro na seleção de imoveis: {ex.Message}";
                List<Imovel> Lista = new List<Imovel>();

                Lista.Add(imovel);
                return Lista.ToList();
            }
        }


        public async Task<IEnumerable<Imovel>> SelecionarListaGeral(DadosBusca dadosBusca)
        {
            try
            {
                List<Imovel> Lista = new List<Imovel>();

                Lista = await _contexto.Imovel.Where(n => n.UF == dadosBusca.UF).ToListAsync();

                Lista = Lista != null && dadosBusca.Cidade != "" ? await Task.FromResult(  Lista.Where(n => n.Cidade.ToUpper().Contains(dadosBusca.Cidade.ToUpper())).ToList() ) : Lista;

                Lista = Lista != null && dadosBusca.Bairro != "" ? await Task.FromResult(Lista.Where(n => n.Bairro.ToUpper().Contains(dadosBusca.Bairro.ToUpper())).ToList()) : Lista;

                Lista = Lista != null && dadosBusca.Logradouro != "" ? await Task.FromResult(Lista.Where(n => n.Logradouro.ToUpper().Contains(dadosBusca.Logradouro.ToUpper())).ToList()) : Lista;

                Lista = Lista != null && dadosBusca.Conteudo != "" ? await Task.FromResult(Lista.Where(n => n.Descricao.ToUpper().Contains(dadosBusca.Conteudo.ToUpper()) || n.Detalhamento.ToString().ToUpper().Contains(dadosBusca.Conteudo.ToUpper())).ToList()) : Lista;

                Lista = Lista != null && dadosBusca.Cep != "" ? await Task.FromResult(Lista.Where(n => n.Cep.Replace(".", "").Replace(".", "") == dadosBusca.Cep.Replace(".", "").Replace(".", "")).ToList()) : Lista;
                

                Lista = Lista != null && dadosBusca.Quartos > 0  ? dadosBusca.Quartos > 4 ? await Task.FromResult(Lista.Where(n => n.Quartos >= dadosBusca.Quartos).ToList()) :   await Task.FromResult(Lista.Where(n => n.Quartos == dadosBusca.Quartos).ToList()) : Lista;

                Lista = Lista != null && dadosBusca.Banheiros > 0 ? dadosBusca.Banheiros > 4 ? await Task.FromResult(Lista.Where(n => n.Banheiros >= dadosBusca.Banheiros).ToList()) : await Task.FromResult(Lista.Where(n => n.Banheiros == dadosBusca.Banheiros).ToList()) : Lista;

                Lista = Lista != null && dadosBusca.Salas > 0 ? dadosBusca.Salas > 4 ? await Task.FromResult(Lista.Where(n => n.Salas >= dadosBusca.Salas).ToList()) : await Task.FromResult(Lista.Where(n => n.Salas == dadosBusca.Salas).ToList()) : Lista;

                Lista = Lista != null && dadosBusca.Vagas > 0 ? dadosBusca.Vagas > 4 ? await Task.FromResult(Lista.Where(n => n.Vagas >= dadosBusca.Vagas).ToList()) : await Task.FromResult(Lista.Where(n => n.Vagas == dadosBusca.Vagas).ToList()) : Lista;

                Lista = Lista != null || dadosBusca.TamanhoDe > 0 ? Lista : await Task.FromResult(Lista.Where(n => n.VrAluguel >= Convert.ToInt32(Math.Floor(dadosBusca.TamanhoDe.Value))).ToList());

                Lista = Lista != null || dadosBusca.TamanhoAte > 0 ? Lista : await Task.FromResult(Lista.Where(n => n.VrAluguel <= Convert.ToInt32(Math.Floor(dadosBusca.TamanhoAte.Value) + 1)).ToList());

                Lista = Lista != null || dadosBusca.VrAluguelDe > 0 ? Lista : await Task.FromResult(Lista.Where(n => n.VrAluguel >= Convert.ToInt32(Math.Floor(dadosBusca.VrAluguelDe.Value))).ToList());

                Lista = Lista != null || dadosBusca.VrAluguelAte > 0 ? Lista : await Task.FromResult(Lista.Where(n => n.VrAluguel <= Convert.ToInt32(Math.Floor(dadosBusca.VrAluguelAte.Value) + 1)).ToList());


                switch (dadosBusca.OrdenarPor)
                {
                    case 0:
                        Lista = await Task.FromResult(Lista.OrderBy(n => n.VrAluguel).ToList());
                        break;
                    case 1:
                        Lista = await Task.FromResult(Lista.OrderBy(n => n.VrAluguel).ToList());
                        break;
                    case 2:
                        Lista = await Task.FromResult(Lista.OrderByDescending(n => n.VrAluguel).ToList());
                        break;
                }

                return  await Task.FromResult(Lista.ToList());
            }
            catch (Exception ex)
            {
                Imovel imovel = new Imovel();
                imovel.Id = 0;
                imovel.Descricao = $@"Erro na seleção de imoveis: {ex.Message}";
                List<Imovel> Lista = new List<Imovel>();

                Lista.Add(imovel);
                return Lista.ToList();
            }
        }



    }
}
