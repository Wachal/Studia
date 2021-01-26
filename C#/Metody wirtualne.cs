using System;
using System.Runtime.CompilerServices;
using System.Security;

namespace get_i_set
{
    class Program
    {
        static void Main(string[] args)
        {


            do
            {
                Console.WriteLine("\n Wybierz co chcesz zrobić: ");
                Console.WriteLine(" 1 - Wyświetlic wszystkich pracowników: ");
                Console.WriteLine(" 2 - Zakończyć działanie programu. ");

                int wybor = Convert.ToInt32(Console.ReadLine());


                if (wybor == 1)
                {

                    Console.WriteLine("Lista pracowników firmy: ");
                    Employeer Dyrektor = new Dyrektor("Kuba", "Fajny ", 5800);
                    Employeer Ksiegowy = new Ksiegowy("Maja", "Kowalska ", 3000);
                    Employeer Technik = new Technik("Tomek", "Ciemny ", 3500);
                    Console.WriteLine(Technik.imieNazwisko +  Technik.pensja);
                    Console.WriteLine(Dyrektor.imieNazwisko + Dyrektor.pensja);
                    Console.WriteLine(Ksiegowy.imieNazwisko + Ksiegowy.pensja);


                }
                if (wybor == 2)
                {
                    break;
                }



            } while (true);
        }

    }

    class Employeer
    {

        public string Imie { get; set; }
        public string Nazwisko { get; set; }
        public int Pensja { get; set; }



        public virtual string imieNazwisko
        {
            get
            {
                return "";
            }
        }

        public virtual int pensja
        {
            get
            {
                return 0;
            }
        }

    }

    class Dyrektor : Employeer
    {
        public Dyrektor(string imie, string nazwisko, int pensja)
        {
            Imie = imie;
            Nazwisko = nazwisko;
            Pensja = pensja;
        }

        public override string imieNazwisko
        {
            get
            {
                return "Dyrektor: " + Imie + " " + Nazwisko + "Pensja: ";
            }
        }
        public override int pensja
        {
            get
            {
                return Pensja;
            }
        }


    }

    class Ksiegowy : Employeer
    {
        public Ksiegowy(string imie, string nazwisko, int pensja)
        {
            Imie = imie;
            Nazwisko = nazwisko;
            Pensja = pensja;
        }

        public override string imieNazwisko
        {
            get
            {
                return "Ksiegowy: " + Imie + " " + Nazwisko + "Pensja: ";
            }
        }
        public override int pensja
        {
            get
            {
                return Pensja;
            }
        }


    }

    class Technik : Employeer
    {
        public Technik(string imie, string nazwisko, int pensja)
        {
            Imie = imie;
            Nazwisko = nazwisko;
            Pensja = pensja;
        }

        public override string imieNazwisko
        {
            get
            {
                return "Technik: " +  Imie + " " + Nazwisko + "Pensja: ";
            }
        }
        public override int pensja
        {
            get
            {
                return Pensja;
            }
        }


    }

}