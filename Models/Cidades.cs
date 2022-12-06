using System;
using System.Collections.Generic;

namespace LocarFacil.Models
{
    public partial class Cidades
    {
        public Cidades()
        {
            Bairros = new HashSet<Bairros>();
        }

        public int Id { get; set; }
        public int? Ibge { get; set; }
        public string Nome { get; set; }
        public int? IdEstados { get; set; }

        public virtual Estados IdEstadosNavigation { get; set; }
        public virtual ICollection<Bairros> Bairros { get; set; }
    }
}
