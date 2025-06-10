﻿using Infrastructure.Model;

namespace HR.CodeGenerator.Model
{
    public class InitTableDto
    {
        public int FrontTpl { get; set; }
        public string DbName { get; set; }
        public string UserName { get; set; }
        public string TableName { get; set; }
        public string Desc { get; set; }
        public CodeGen CodeGen { get; set; }
    }
}
