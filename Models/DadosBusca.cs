using System;
using System.Collections.Generic;

namespace LocarFacil.Models
{
    public class DadosBusca 
    {

        public string UF { get; set; }
        public string? Cidade { get; set; }
        public string? Bairro { get; set; }
        public string? Logradouro { get; set; }
        public string? Cep { get; set; }
        public int? IdTipoImovel { get; set; }
        public string? Conteudo { get; set; }
        public int? Quartos { get; set; }
        public int? Banheiros { get; set; }
        public int? Salas { get; set; }
        public int? Vagas { get; set; }
        public double? VrAluguelDe { get; set; }
        public double? VrAluguelAte { get; set; }
        public double? TamanhoDe { get; set; }
        public double? TamanhoAte { get; set; }

        public int? OrdenarPor { get; set; }
        public DadosBusca ()
        {
            this.UF = "MG";
            this.Cidade = "Belo Horizonte";
            this.Bairro = "";
            this.Logradouro = "";
            this.Cep = "";
            this.Conteudo = "";
            this.Quartos = 0;
            this.Banheiros = 0;
            this.Salas = 0;
            this.Vagas = 0;
            this.VrAluguelDe = 0;
            this.VrAluguelAte = 0;
            this.TamanhoDe = 0;
            this.TamanhoAte = 0;
        }

        public void Normalize()
        {
            this.IdTipoImovel = this.IdTipoImovel == null ? 0 : this.IdTipoImovel;
            this.Cep = this.Cep == null ? "" : this.Cep;
            this.Cidade = this.Cidade == null ? "" : this.Cidade;
            this.Bairro = this.Bairro == null ? "" : this.Bairro;
            this.Conteudo = this.Conteudo == null ? "" : this.Conteudo;
            this.Quartos = this.Quartos == null ? 0 : this.Quartos;
            this.Banheiros = this.Banheiros == null ? 0 : this.Banheiros;
            this.Salas = this.Salas == null ? 0 : this.Salas;
            this.Vagas = this.Vagas == null ? 0 : this.Vagas;
            this.VrAluguelDe = this.VrAluguelDe == null ? 0 : this.VrAluguelDe;
            this.VrAluguelAte = this.VrAluguelAte == null ? 0 : this.VrAluguelAte;
            this.TamanhoDe = this.TamanhoDe == null ? 0 : this.TamanhoDe;
            this.TamanhoAte = this.TamanhoAte == null ? 0 : this.TamanhoAte;
            this.OrdenarPor = this.OrdenarPor == null ? 0 : this.OrdenarPor;
        }

    }
}
