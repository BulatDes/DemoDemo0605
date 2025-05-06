using System;
using System.Collections.Generic;

namespace DemoEx0605.Models;

public partial class PartnerProduct
{
    public int PartnerProductId { get; set; }

    public string? Production { get; set; }

    public string? NamePartner { get; set; }

    public int QuantityProduction { get; set; }

    public string? DateSale { get; set; }

    public int? ProductId { get; set; }

    public int? PartnerId { get; set; }

    public virtual Partner? Partner { get; set; }

    public virtual Product? Product { get; set; }
}
