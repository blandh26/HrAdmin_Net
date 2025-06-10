﻿using System.Collections.Generic;

namespace HR.CodeGenerator.Model
{
    public class ImportCodeGenTableDto
    {
        public int FrontTpl { get; set; }
        public string DbName { get; set; }
        public List<CodeGenTables> Tables { get; set; }
    }

    public class CodeGenTables
    {
        public string Name { get; set; }
        public string Description { get; set; }
    }
}
