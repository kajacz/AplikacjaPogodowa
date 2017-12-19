using Newtonsoft.Json.Linq;
using Newtonsoft.Json;
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
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Net;
using System.Web.Script.Serialization;
using System.Collections;

namespace Weather
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
                      
        }

        private void MiejscowoscComboBox_Loaded(object sender, RoutedEventArgs e)
        {
            string url = @"https://danepubliczne.imgw.pl/api/data/synop/";
            string jsonString = new WebClient().DownloadString(url);          
            dynamic data = JArray.Parse(jsonString);
            int i = data.Count;

            ArrayList array_miejscowosci = new ArrayList();            

            for (int n = 0; n < i; n++)           

            {
                dynamic stacja_miejscowosc = data[n];
                array_miejscowosci.Add(stacja_miejscowosc["stacja"]);               

                var combo = sender as ComboBox;
                combo.ItemsSource = array_miejscowosci;              
                
            }
  
        }

        private void MiejscowoscComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            
            var SelectedComboItems = sender as ComboBox;
            string miejsce = SelectedComboItems.SelectedItem as string;

            string url = @"https://danepubliczne.imgw.pl/api/data/synop/";
            var json = new WebClient().DownloadString(url);
            dynamic dane = JsonConvert.DeserializeObject(json);

            int n = SelectedComboItems.SelectedIndex;
            
            dynamic pogoda = dane[n];

            LabelTemp.Content = "Temperatura";
            LabelTempWypisz.Content = pogoda["temperatura"] + " °C";
            LabelPredkoscWiatru.Content = "Prędkość wiatru";
            LabelPredWiatruWypisz.Content = pogoda["predkosc_wiatru"] + " km/h";
            LabelCisnienie.Content = "Ciśnienie";
            LabelCisnienieWypisz.Content = pogoda["cisnienie"] + " hPa";

            double sumaOpadow = (Convert.ToDouble(pogoda["suma_opadu"]));
            double temperatura = (Convert.ToDouble(pogoda["temperatura"]));


                if ((sumaOpadow < 3 ) && (sumaOpadow>0)) chmury.Visibility = Visibility.Visible;
                else chmury.Visibility = Visibility.Hidden;

                if (sumaOpadow <= 0 && temperatura > 14) Slonce.Visibility = Visibility.Visible;
                else Slonce.Visibility = Visibility.Hidden;

                if (sumaOpadow >= 3) Opady.Visibility = Visibility.Visible;
                else Opady.Visibility = Visibility.Hidden;

                if (sumaOpadow <= 0 && temperatura < 14) SlonceZaChmurami.Visibility = Visibility.Visible;
                else SlonceZaChmurami.Visibility = Visibility.Hidden;

        }


    }


}
