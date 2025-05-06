using DemoEx0605.Models;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace DemoEx0605
{
    /// <summary>
    /// Логика взаимодействия для EditWindow.xaml
    /// </summary>
    public partial class EditWindow : Window
    {
        private List<string> typePartners;
        private Partner _partner;
        public EditWindow()
        {
            InitializeComponent();
            LoadTypePartners();
            Title = "Добавление партнера";
        }
        public EditWindow(Partner partner)
        {
            InitializeComponent();
            LoadTypePartners();
            Title = "Редактирование партнера";
            _partner = partner;
        }

        private bool ValidationTexts()
        {
            if(NamePartnerTB.Text == string.Empty)
            {
                MessageBox.Show("Пустое поле имени партнера.", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                return false;
            }
            if (DirectorTB.Text == string.Empty)
            {
                MessageBox.Show("Пустое поле имени партнера.", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                return false;
            }
            if (AddressPartnerTB.Text == string.Empty)
            {
                MessageBox.Show("Пустое поле имени партнера.", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                return false;
            }
            if (PhonePartnerTB.Text == string.Empty)
            {
                MessageBox.Show("Пустое поле имени партнера.", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                return false;
            }
            if (EmailPartnerTB.Text == string.Empty)
            {
                MessageBox.Show("Пустое поле имени партнера.", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                return false;
            }
            if (RatingPartnerTB.Text == string.Empty)
            {
                MessageBox.Show("Пустое поле имени партнера.", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                return false;
            }
            return true;
        }
        private void LoadTypePartners()
        {
            using var db = new DemoExamen0605Context();
            var list = db.PartnerTypes.Select(p => p.TypeName.ToString()).ToList();
            typePartners = new List<string>(list);
        }


        private void SaveBut_Click(object sender, RoutedEventArgs e)
        {
            
        }
    }
}
