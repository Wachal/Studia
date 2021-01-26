using System;
using System.Security.Cryptography.X509Certificates;
using System.Threading;

namespace zad1
{
    class Program
    {
        static void Main(string[] args)
        {

            do
            {

                Console.WriteLine("Co chcesz zrobić?");
                Console.WriteLine("1. dodawanie");
                Console.WriteLine("2. odejmowanie");
                Console.WriteLine("3. mnożenie");
                Console.WriteLine("4. dzielenie");
                Console.WriteLine("5. potegowanie");
                Console.WriteLine("6. koniec programu");


                int liczba = int.Parse(Console.ReadLine());

                if (liczba == 6)
                {
                    break;
                }

                Console.WriteLine("Podaj dwie liczby");

                int liczbaA = int.Parse(Console.ReadLine());
                int liczbaB = int.Parse(Console.ReadLine());

                var kalkulator = new kalkulator(liczbaA, liczbaB);



                switch (liczba)
                {
                    case 1:
                        kalkulator.teDodawanie();
                        break;
                    case 2:
                        kalkulator.teOdejmowanie();
                        break;
                    case 3:
                        kalkulator.teMnozenie();
                        break;
                    case 5:
                        kalkulator.tePotega();
                        break;
                    case 4:
                        kalkulator.teDzielenie();
                        break;
                    
                    


                }


            } while (true);

        }

     }

    public class kalkulator
    {
        private float liczbaA1;
        private float liczbaB1;
        

        public kalkulator(float liczbaA, float liczbaB)
        {
            liczbaA1 = liczbaA;
            liczbaB1 = liczbaB;
        }

        public void teDodawanie()
        {
            tekstWyniku.tekst(Dodawanie().ToString());
        }

        public void teOdejmowanie()
        {
            tekstWyniku.tekst(odejmowanie().ToString());
        }

        public void teMnozenie()
        {
            tekstWyniku.tekst(mnozenie().ToString());
        }

        public void teDzielenie()
        {
            tekstWyniku.tekst(dzielenie().ToString());
        }

        public void tePotega()
        {
            tekstWyniku.tekst(potega().ToString());
        }

        public float Dodawanie()
        {
            return liczbaA1 + liczbaB1;
            
        }


        public float odejmowanie()
        {
            return liczbaA1 - liczbaB1;
        }

       
        public float mnozenie()
        {
            float wynik = 0;
            for (int i = 0; i < liczbaB1; i++)
                wynik += liczbaA1;

            return wynik;

        }

        
        public string dzielenie()
        {
            float b = liczbaA1;
            int licz = 0;
            bool exit = false;

            while (!exit)
            {
                if (b >= liczbaB1)
                {
                    b -= liczbaB1;
                    licz++;
                }
                else
                {
                    exit = true;
                }
            }

            return licz + "reszta" + b ;
        }

        
        public double potega()
        {
            return Math.Pow(liczbaA1, liczbaB1);
        }

    }

    public class tekstWyniku
    {

        public static void tekst(string text)
        {
            Console.WriteLine(text);
        }
    }

    
}
