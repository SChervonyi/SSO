using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Utility
{
    public static string GetAppendedQueryString(string Url, string Key, string Value)
    {
        if (Url.Contains("?"))
        {
            Url = string.Format("{0}&{1}={2}", Url, Key, Value);
        }
        else
        {
            Url = string.Format("{0}?{1}={2}", Url, Key, Value);
        }

        return Url;
    }

    public static string GetCookieValue(HttpCookie Cookie)
    {
        if (string.IsNullOrEmpty(Cookie.Value))
        {
            return Cookie.Value;
        }
        return Cookie.Value.Substring(0, Cookie.Value.IndexOf("|"));
    }

    public static DateTime GetExpirationDate(HttpCookie Cookie)
    {
        if (string.IsNullOrEmpty(Cookie.Value))
        {
            return DateTime.MinValue;
        }
        string strDateTime = Cookie.Value.Substring(Cookie.Value.IndexOf("|") + 1);
        return Convert.ToDateTime(strDateTime);
    }

    public static bool StringEquals(string A, string B)
    {
        return string.Compare(A, B, true) == 0;
    }

    public static string BuildCookueValue(string Value, int Minutes)
    {
        return string.Format("{0}|{1}", Value, DateTime.Now.AddMinutes(Minutes).ToString());
    }


    public static string GetGuidHash()
    {
        return Guid.NewGuid().ToString().GetHashCode().ToString("x");
    }
}