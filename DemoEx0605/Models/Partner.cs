using System;
using System.Collections.Generic;

namespace DemoEx0605.Models;

public partial class Partner
{
    public int PartnerId { get; set; }

    public string? NamePartner { get; set; }

    public string? Director { get; set; }

    public string? Email { get; set; }

    public string? Phone { get; set; }

    public string? LawAdress { get; set; }

    public int? Rating { get; set; }

    public int? TypePartnerId { get; set; }

    public virtual ICollection<PartnerProduct> PartnerProducts { get; set; } = new List<PartnerProduct>();

    public virtual PartnerType? TypePartner { get; set; }
}
