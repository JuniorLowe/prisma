using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

/// <summary>
/// Descrição resumida de IBGEMun
/// </summary>
public class IBGEMunic
{
   
    public class Regiao
    {
        public int Id { get; set; }
        public string Sigla { get; set; }
        public string Nome { get; set; }
    }

    public class UF
    {
        public int Id { get; set; }
        public string Sigla { get; set; }
        public string Nome { get; set; }
        public Regiao Regiao { get; set; }
    }

    public class Mesorregiao
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public UF Uf { get; set; }
    }

    public class Microrregiao
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public Mesorregiao Mesorregiao { get; set; }
    }

    public class Municipios
    {
        public int Id { get; set; }

        private string nome;

        public string Nome   
        {            
            get { return UTF8_to_ISO(nome); }   
            set { nome = value; }  
        }
        
        public Microrregiao Microrregiao { get; set; }
    }

    public List<Municipios> BuscarMunics()
    {
        string url = "https://servicodados.ibge.gov.br/api/v1/localidades/estados/33/municipios";
        string json = (new System.Net.WebClient()).DownloadString(url);
        var mun = JsonConvert.DeserializeObject<List<Municipios>>(json);
        return mun;
    
    }

    public static string UTF8_to_ISO(string value)
    {
        Encoding isoEncoding = Encoding.GetEncoding("ISO-8859-1");
        Encoding utfEncoding = Encoding.UTF8;

        byte[] bytesIso = utfEncoding.GetBytes(value);
        byte[] bytesUtf = Encoding.Convert(utfEncoding, isoEncoding, bytesIso);

        string textoISO = utfEncoding.GetString(bytesUtf);

        return textoISO;
    }
}