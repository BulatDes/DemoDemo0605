using DemoEx0605.Models;

using Microsoft.EntityFrameworkCore;

using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace DemoEx0605.ViewModels
{
    public class MainViewModel : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler? PropertyChanged;
        public void OnPropertyChanged([CallerMemberName] string prop = "")
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(prop));
        }

        private ObservableCollection<PartnerViewModel> _partners = new();
        public ObservableCollection<PartnerViewModel> Partners
        {
            get => _partners;
            set 
            {
                _partners = value;
                OnPropertyChanged();
            }
        }
         private void LoadPartners()
        {
            using var db = new DemoExamen0605Context();
            var list = db.Partners
                .Include(p => p.PartnerProducts)
                .Include(p=>p.TypePartner)
                .ToList()
                .Select(p => new PartnerViewModel(p));
            Partners = new ObservableCollection<PartnerViewModel>(list);
        }
        public MainViewModel()
        {
            LoadPartners();
        }

    }
}
