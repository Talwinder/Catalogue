using System.Collections.Generic;
using System.Threading.Tasks;
using MongoDB.Driver;

namespace Catalogue.Repositories.Interfaces
{

    public interface IProductRepository
    {

        Task<IEnumerable<Product>> GetProducts();

        Task<Product> GetProduct(string id);

        Task<IEnumerable<Product>> GetProductByName(string name);

        Task<IEnumerable<Product>> GetProductByCategory(string Category);

        Task Create(Product product);
        Task<bool> Update(Product product);

        Task<bool> Delete(string id);



    }
}