using System;
using System.Collections.Generic;

namespace LocarFacil.Models
{
    public partial class ImovelFotos
    {
        public int Id { get; set; }
        public string Titulo { get; set; }
        public string Detalhamento { get; set; }
        public string LinkFoto { get; set; }
        public int? IdMovel { get; set; }

        public virtual Imovel IdMovelNavigation { get; set; }
    }
}
