//using System;
//using System.Collections.Generic;
//using System.Net.Http;
//using System.Text.RegularExpressions;
//using HtmlAgilityPack;
//using Newtonsoft.Json;
//using System.Data.SqlClient;

//namespace WikipediaDirectorsScraper
//{
//    class Program
//    {
//        static async System.Threading.Tasks.Task Main(string[] args)
//        {
//            // 1️⃣ API'den Veri Çek
//            string url = "https://tr.wikipedia.org/w/api.php?action=parse&page=Film_y%C3%B6netmenleri_listesi&format=json";
//            string jsonResponse = "";

//            using (HttpClient client = new HttpClient())
//            {
//                try
//                {
//                    jsonResponse = await client.GetStringAsync(url);
//                }
//                catch (HttpRequestException ex)
//                {
//                    Console.WriteLine($"API Hatası: {ex.Message}");
//                    return;
//                }
//            }

//            // 2️⃣ JSON Verisini İşle
//            dynamic jsonData = JsonConvert.DeserializeObject(jsonResponse);
//            string htmlContent = jsonData.parse.text["*"];

//            var htmlDoc = new HtmlDocument();
//            htmlDoc.LoadHtml(htmlContent);

//            List<(string Ad, string Soyad)> directors = new List<(string, string)>();

//            // 3️⃣ Yönetmen İsimlerini Çek
//            foreach (var li in htmlDoc.DocumentNode.SelectNodes("//li"))
//            {
//                string text = li.InnerText.Trim();
//                var match = Regex.Match(text, @"([A-ZŞÇĞİÖÜ][a-zşçğıöü]+\s[A-ZŞÇĞİÖÜ][a-zşçğıöü]+)");

//                if (match.Success)
//                {
//                    string fullName = match.Groups[0].Value;
//                    var nameParts = fullName.Split(new[] { ' ' }, 2);

//                    if (nameParts.Length == 2)
//                    {
//                        string ad = nameParts[0];
//                        string soyad = nameParts[1];
//                        directors.Add((ad, soyad));
//                    }
//                }
//            }

//            Console.WriteLine($"Toplam {directors.Count} yönetmen bulundu.");

//            // 4️⃣ SQL Server'a Bağlan ve Veriyi Aktar
//            string connectionString = @"Server=.\SQLEXPRESS;Database=CINElmaDB;User Id=ElyN;Integrated Security=True;";

//            using (SqlConnection connection = new SqlConnection(connectionString))
//            {
//                connection.Open();

//                foreach (var director in directors)
//                {
//                    string query = "INSERT INTO tbl_yönetmen (İSİM, SOYİSİM) VALUES (@Ad, @Soyad)";
//                    using (SqlCommand command = new SqlCommand(query, connection))
//                    {
//                        command.Parameters.AddWithValue("@Ad", director.Ad);
//                        command.Parameters.AddWithValue("@Soyad", director.Soyad);
//                        command.ExecuteNonQuery();
//                    }
//                }
//            }

//            Console.WriteLine("Yönetmenler başarıyla SQL veritabanına aktarıldı!");
//        }
//    }
//}
