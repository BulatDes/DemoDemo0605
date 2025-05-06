using DemoEx0605.Models;

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace DemoEx0605.ViewModels
{
    public class PartnerViewModel : INotifyPropertyChanged
    {
        private readonly Partner _partner;
        public event PropertyChangedEventHandler? PropertyChanged;
        public void OnPropertyChanged([CallerMemberName] string prop = "")
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(prop));
        }
        public PartnerViewModel(Partner partner)
        {
            _partner = partner;
        }
        public Partner Partner => _partner;
        public string TypePartner => _partner.TypePartner.TypeName.ToString();
        public string NamePartner => _partner.NamePartner;
        public string Director => _partner.Director;
        public string Phone => _partner.Phone;
        public int Rating => (int)_partner.Rating;
        public string DiscountText => $"{CalculateDiscount()}%";

        private int CalculateDiscount()
        {
            decimal totalSales = _partner.PartnerProducts.Sum(p => p.QuantityProduction);
            if (totalSales < 10000) return 0;
            if (totalSales < 50000) return 5;
            if (totalSales < 300000) return 10;
            return 15;
        }


    }
}
