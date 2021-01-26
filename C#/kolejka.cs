using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KolejkaFIFO
{
    class kol
    {
        public int value;
        public kol next;

        public kol(int value)
        {
            this.value = value;
        }
    }

    class Kolejka
    {
        kol gora;
        kol q;

        public bool Empty()
        {
            if (gora == null || q == null)
            {
                return true;
            }
            return false;
        }

        public void Dequeue()
        {
            if (this.Empty())
            {
                return;
            }

            if (gora == q)
            {
                gora = null;
                q = null;
                return;
            }

            gora = gora.next;
        }
        
        public void Enqueue(int x)
        {
            kol newKol = new kol(x);
            if (gora == null)
            {
                gora = newKol;
                q = gora;
                return;
            }
            q.next = newKol;
            q = newKol;
        }

        public int Peek()
        {
            if (this.Empty())
            {
                return 0;
            }

            return gora.value;
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Kolejka: ");

            Kolejka kolejka = new Kolejka();
            
            kolejka.Enqueue(100);
            kolejka.Enqueue(200);
            kolejka.Enqueue(300);
            kolejka.Enqueue(400);
            kolejka.Enqueue(500);
            kolejka.Enqueue(600);

            Console.WriteLine(kolejka.Peek());
            kolejka.Dequeue();
            Console.WriteLine(kolejka.Peek());
            kolejka.Dequeue();
            Console.WriteLine(kolejka.Peek());
            kolejka.Dequeue();
            Console.WriteLine(kolejka.Peek());
            kolejka.Dequeue();
            Console.WriteLine(kolejka.Peek());
            kolejka.Dequeue();

            Console.ReadKey();
        }
    }
}