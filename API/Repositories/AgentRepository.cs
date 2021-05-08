using Microsoft.EntityFrameworkCore;
using net_core_lab5.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace net_core_lab5.Repositories
{
    public class AgentRepository : IAgentRepository
    {
        private readonly DatabaseContext _databaseContext;

        public AgentRepository(DatabaseContext databaseContext)
        {
            _databaseContext = databaseContext ?? throw new ArgumentNullException(nameof(databaseContext));
        }

        public async Task AddNew(Agent agent)
        {
            await _databaseContext.AddAsync(agent);
            await _databaseContext.SaveChangesAsync();
        }

        public async Task<List<Agent>> GetAll()
        {
            return await _databaseContext.Agents.ToListAsync();
        }

        public async Task<Agent> GetSpecific(int agentId)
        {
            return await _databaseContext.Agents.FirstOrDefaultAsync(x => x.Id == agentId);
        }

        public async Task RemoveAll()
        {
            _databaseContext.Agents.RemoveRange(_databaseContext.Agents);
            await _databaseContext.SaveChangesAsync();
        }

        public async Task RemoveSpecific(int agentId)
        {
            var agent = _databaseContext.Agents.FirstOrDefault(x => x.Id == agentId);
            if (agent != null)
            {
                _databaseContext.Remove(agent);
                await _databaseContext.SaveChangesAsync();
            }
        }

        public async Task Update(Agent agent)
        {
            _databaseContext.Update(agent);
            await _databaseContext.SaveChangesAsync();
        }
    }
}