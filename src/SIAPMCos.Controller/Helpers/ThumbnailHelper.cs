using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AppPodCloud.Helpers
{
    public static class ThumbnailHelper
    {
        private static bool ThumbnailCallback()
        {
            return false;
        }


        //public static Image GetReducedImage(int size,Image _originImage)
        //{
        //    try
        //    {
        //        Image ReducedImage;
        //        int width = size;
        //        int height = size;
        //        if (_originImage.Width > _originImage.Height)
        //        {
        //            height = _originImage.Height * size / _originImage.Width;
        //        }
        //        else
        //        {
        //            width = _originImage.Width * size / _originImage.Height;
        //        }

        //        System.Drawing.Bitmap bmp = new System.Drawing.Bitmap(width, height);
        //        System.Drawing.Graphics g = System.Drawing.Graphics.FromImage(bmp);
        //        g.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
        //        g.CompositingQuality = System.Drawing.Drawing2D.CompositingQuality.HighQuality;
        //        g.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.High;
        //        System.Drawing.Rectangle rectDestination = new System.Drawing.Rectangle(0, 0, width, height);
        //        g.DrawImage(image, rectDestination, 0, 0, image.Width, image.Height, System.Drawing.GraphicsUnit.Pixel);
        //        bmp.Save(context.Server.MapPath("~/") + DateTime.Now.ToString("yyyyMMddHHmmss") + fileExt);
        //        bmp.Dispose();
        //        image.Dispose();

        //        //Image.GetThumbnailImageAbort callb = new Image.GetThumbnailImageAbort(ThumbnailCallback);

        //        //ReducedImage = _originImage.GetThumbnailImage(width, height, callb, IntPtr.Zero);

        //        return ReducedImage;
        //    }
        //    catch (Exception e)
        //    {
        //        return null;
        //    }
        //}
    }
}
