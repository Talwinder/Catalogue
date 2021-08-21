using MongoDB.Driver;

namespace Catalogue.Data.Interfaces
{
    
    public interface ICatalogContext
    {

        IMongoCollection<Product> Products { get;}




    }
}