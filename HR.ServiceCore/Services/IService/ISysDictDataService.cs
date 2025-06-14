﻿using HR.Model;
using HR.Model.System;
using HR.Model.System.Dto;

namespace HR.ServiceCore.Services
{
    public interface ISysDictDataService : IBaseService<SysDictData>
    {
        public PagedInfo<SysDictData> SelectDictDataList(SysDictData dictData, PagerInfo pagerInfo);
        public List<SysDictData> SelectDictDataByType(string dictType);
        public List<SysDictDataDto> SelectDictDataByTypes(string[] dictTypes);
        public SysDictData SelectDictDataById(long dictCode);
        public long InsertDictData(SysDictData dict);
        public long UpdateDictData(SysDictData dict);
        public int DeleteDictDataByIds(long[] dictCodes);
        int UpdateDictDataType(string old_dictType, string new_dictType);
        List<SysDictDataDto> SelectDictDataByCustomSql(SysDictType sysDictType);

        int UpdateStatus(SysDictData dto);
    }
}
