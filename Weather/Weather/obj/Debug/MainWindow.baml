   M S B A M L   `   `   `  ����B  >Weather, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WeatherWeather  5   	       Weather.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Weather     5   	   -   5          �Name$  Pogoda_w_Polsce��5   	    � Title$ Pogoda��5   	   $	��350��6   $	��525��6%   .��5	      � -   5         �Name$ Pogoda��5	      .+�5
   
   �� -   5         ��Name$ PrognozaPogody��5
      $��Prognoza Pogody��6(   $
��Left=�6B   $��81��6]   $��63,19,-16.6,0q�6i   $	��Top=�6�   $	��472��6�   $��50(�6�   $
��Bold"�6�   $��Sitka Display)�6�   �� 5   
   $��Miejscowość:��6   $
��Left=�6'   $��45��6B   $��
10,105,0,0q�6N   $	��Top=�6b   $	��169��6z   $��30(�6�   $��Sitka Display)�6�   �� 5   
   -   5         ��Name$ MiejscowoscComboBox��5   7   $
��Left=�6T   $��184,112,0,0q�5      $	��Top=�6(   $	��191��6@    J� RenderTransformOrigin$ 0.5,0.5&�6L   $��32��5      ���	#FFDDDDDD$��Sitka Banner)�6o   $��20(�6�   5      �� 5   
   -   5        $ 	LabelTemp��5      $�� ��6#   $
��Left=�6.   $��
23,172,0,0q�6I   $	��Top=�6]   $��Sitka Display)�6u   $��18(�6�   $	��128��6�   �� 5   
   -   5        $ LabelPredkoscWiatru��5      $�� ��6-   $
��Left=�68   $��
23,204,0,0q�6S   $	��Top=�6g   $��Sitka Display)�6   $��18(�6�   $	��128��6�   �� 5   
   -   5        $ LabelCisnienie��5      $�� ��6(   $
��Left=�63   $��
23,236,0,0q�6N   $	��Top=�6b   $��Sitka Display)�6z   $��18(�6�   $	��128��6�   �� 5   
   -   5        $ LabelTempWypisz��5      $�� ��6)   $
��Left=�64   $��184,172,0,0q�6O   $	��Top=�6d   $	��120��6|   $��Sitka Display)�6�   $��18(�6�   �� 5   
   -	   5        $ LabelPredWiatruWypisz��5      $�� ��6/   $
��Left=�6:   $��184,204,0,0q�6U   $	��Top=�6j   $	��120��6�   $��Sitka Display)�6�   $��18(�6�   �� 5   
   -
   5        $ LabelCisnienieWypisz��5      $�� ��6.   $
��Left=�69   $��184,236,0,0q�6T   $	��Top=�6i   $	��120��6�   $��Sitka Display)�6�   $��18(�6�   �� 5   
   -   5         ��Name$ chmury��5      $
��Left=�6    $	��139��6;   $��362,172,0,0q�6H   $	��Top=�6]   $	��146��6u   $��image/chmury.png��6�   $y�Hidden=�6�   �� 5   
   -   5        $ Opady��5      $
��Left=�6   $	��139��6:   $��362,172,0,0q�6G   $	��Top=�6\   $	��146��6t   $��image/opady.png��6�   $y�Hidden=�6�   �� 5   
   -   5        $ Slonce��5      $
��Left=�6    $	��139��6;   $��362,172,0,0q�6H   $	��Top=�6]   $	��146��6u   $��image/slonce.png��6�   $y�Hidden=�6�   �� 5   
   -   5        $ SlonceZaChmurami��5      $
��Left=�6*   $	��139��6E   $��362,182,0,-0.2q�6R   $	��Top=�6j   $	��146��6�   $ ��image/slonceZaChmurami.png��6�   $y�Hidden=�6�   5      5      