using net_core_lab5.Models;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace net_core_lab5.Repositories
{
    public interface IAgentRepository
    {
        Task<List<Agent>> GetAll();

        Task<Agent> GetSpecific(int agentId);

        Task Update(Agent agent);

        Task AddNew(Agent agent);

        Task RemoveAll();

        Task RemoveSpecific(int agentId);
    }
}