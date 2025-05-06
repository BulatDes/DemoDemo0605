using System;
using System.Collections.Generic;

namespace DemoEx0605.Models;

public partial class Product
{
    public int ProductId { get; set; }

    public string? TypeProduction { get; set; }

    public string? NameProduction { get; set; }

    public string? Articul { get; set; }

    public decimal? MinPriceForPartner { get; set; }

    public int? ProductTypeId { get; set; }

    public virtual ICollection<PartnerProduct> PartnerProducts { get; set; } = new List<PartnerProduct>();

    public virtual ProductType? ProductType { get; set; }
}
