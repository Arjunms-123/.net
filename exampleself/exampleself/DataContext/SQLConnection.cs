﻿namespace exampleself.DataContext
{
    internal class SQLConnection
    {
        private string connectionString;

        public SQLConnection(string connectionString)
        {
            this.connectionString = connectionString;
        }
    }
}