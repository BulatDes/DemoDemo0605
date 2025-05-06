using System;
using System.Collections.Generic;

namespace DemoEx0605.Models;

public partial class PartnerType
{
    public int TypePartnerId { get; set; }

    public string? TypeName { get; set; }

    public virtual ICollection<Partner> Partners { get; set; } = new List<Partner>();
}
