using System;
using System.Collections.Generic;

namespace DemoEx0605.Models;

public partial class ProductType
{
    public int ProductTypeId { get; set; }

    public string? TypeProduction { get; set; }

    public string? Coefficient { get; set; }

    public virtual ICollection<Product> Products { get; set; } = new List<Product>();
}
