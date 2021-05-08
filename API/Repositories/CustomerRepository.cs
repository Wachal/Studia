using Microsoft.EntityFrameworkCore;
using net_core_lab5.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace net_core_lab5.Repositories
{
    public class CustomerRepository : ICustomerRepository
    {
        private readonly DatabaseContext _databaseContext;

        public CustomerRepository(DatabaseContext databaseContext)
        {
            _databaseContext = databaseContext ?? throw new ArgumentNullException(nameof(databaseContext));
        }

        public async Task AddNew(Customer customer)
        {
            await _databaseContext.AddAsync(customer);
            await _databaseContext.SaveChangesAsync();
        }

        public async Task<int> Count()
        {
            return await _databaseContext.Customers.CountAsync();
        }

        public async Task<List<Customer>> GetAll()
        {
            return await _databaseContext.Customers.ToListAsync();
        }

        public async Task<List<string>> GetNames()
        {
            return await _databaseContext.Customers.Select(x=>x.FirstName + " " +x.LastName ).ToListAsync();
        }

        public async Task<Customer> GetSpecific(int customerId)
        {
            return await _databaseContext.Customers.FirstOrDefaultAsync(x => x.Id == customerId);
        }

        public async Task RemoveAll()
        {
            _databaseContext.Customers.RemoveRange(_databaseContext.Customers);
            await _databaseContext.SaveChangesAsync();
        }

        public async Task RemoveSpecific(int customerId)
        {
            var customer = _databaseContext.Customers.FirstOrDefault(x => x.Id == customerId);
            if (customer != null)
            {
                _databaseContext.Remove(customer);
                await _databaseContext.SaveChangesAsync();
            }
        }

        public async Task Update(Customer customer)
        {
            _databaseContext.Update(customer);
            await _databaseContext.SaveChangesAsync();
        }
    }
}