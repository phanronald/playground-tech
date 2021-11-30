using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Tesseract;

namespace Pdf2Image.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class ImgToTextController : ControllerBase
	{
		private readonly IWebHostEnvironment _hostingEnvironment;

		public ImgToTextController(IWebHostEnvironment hostingEnvironment)
		{
			_hostingEnvironment = hostingEnvironment;
		}

		[HttpGet]
		public void ExtractImageToTxt()
		{
			var tessDataFolderPath = _hostingEnvironment.ContentRootPath + "\\ocr\\tessdata";
			var sourcePdfPngFile = _hostingEnvironment.ContentRootPath + "\\ocr\\w2 dist\\2019 W2.pdf.png";

			using (var engine = new TesseractEngine(tessDataFolderPath, "eng"))
			{
				engine.SetVariable("user_defined_dpi", "70"); //set dpi for supressing warning
				using (var img = Pix.LoadFromFile(sourcePdfPngFile))
				{
					using (var page = engine.Process(img))
					{
						var text = page.GetText();
						var b = "";
					}
				}
			}
		}

	}
}
