using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ProductSite.Startup))]
namespace ProductSite
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
