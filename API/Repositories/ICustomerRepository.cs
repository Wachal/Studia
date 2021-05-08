using net_core_lab5.Models;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace net_core_lab5.Repositories
{
    public interface ICustomerRepository
    {
        Task<List<Customer>> GetAll();

        Task<Customer> GetSpecific(int customerId);

        Task Update(Customer customer);

        Task AddNew(Customer customer);

        Task RemoveAll();

        Task RemoveSpecific(int customerId);

        Task<List<string>> GetNames();

        Task<int> Count();
    }
}