using ImageMagick;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using System.IO;

namespace Pdf2Image.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class ConvertPdfToAny : ControllerBase
	{
		private readonly IWebHostEnvironment _hostingEnvironment;

		public ConvertPdfToAny(IWebHostEnvironment hostingEnvironment)
		{
			_hostingEnvironment = hostingEnvironment;
		}

		[HttpGet]
		public void ConvertPdfToImg()
		{
			var settings = new MagickReadSettings();
			// Settings the density to 300 dpi will create an image with a better quality
			settings.Density = new Density(300);

			var pdfFolderPath = _hostingEnvironment.ContentRootPath + "\\ocr\\w2 original";
			var pdfFinalFolderPath = _hostingEnvironment.ContentRootPath + "\\ocr\\w2 dist";
			foreach (var file in Directory.GetFiles(pdfFolderPath))
			{
				var fileInfo = new FileInfo(file);
				using var images = new MagickImageCollection();

				// Add all the pages of the pdf file to the collection
				images.Read(file, settings);

				// Create new image that appends all the pages vertically
				using (var vertical = images.AppendVertically())
				{
					var finalFileInfo = new FileInfo(pdfFinalFolderPath + "\\" + fileInfo.Name + ".png");
					// Save result as a png
					vertical.Write(finalFileInfo);
				}
			}
		}
	}
}
