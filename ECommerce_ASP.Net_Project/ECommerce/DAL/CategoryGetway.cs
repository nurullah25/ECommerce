using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using ECommerce.Models;

namespace ECommerce.DAL
{
    public class CategoryGetway
    {
        SqlConnection con = new SqlConnection(Connection.getConnection());
        public IQueryable<Category> Get()
        {
            con.Open();
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM category", con);
            sda.Fill(dt);
            con.Close();
            return dt.AsEnumerable()
                .Select(r => new Category
                {
                    CategoryId = r.Field<int>("catId"),
                    CategoryName = r.Field<string>("catName")
                })
                .AsQueryable();


        }
        public void Insert(Category c)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO category VALUES(@c)", con);
            cmd.Parameters.AddWithValue("@c", c.CategoryName);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void Update(Category c)
        {
            SqlCommand cmd = new SqlCommand("UPDATE category SET catName=@n WHERE catId=@i", con);
            cmd.Parameters.AddWithValue("@c", c.CategoryName);
            cmd.Parameters.AddWithValue("@i", c.CategoryId);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void Delete(Category c)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM category WHERE catId=@i)", con);
            cmd.Parameters.AddWithValue("@i", c.CategoryId);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}