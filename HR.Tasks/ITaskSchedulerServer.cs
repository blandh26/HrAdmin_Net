﻿using Infrastructure.Model;
using System.Threading.Tasks;
using HR.Model.System;

namespace HR.Tasks
{
    public interface ITaskSchedulerServer
	{
		Task<ApiResult> StartTaskScheduleAsync();

		Task<ApiResult> StopTaskScheduleAsync();

		Task<ApiResult> AddTaskScheduleAsync(SysTasks tasksQz);

		Task<ApiResult> PauseTaskScheduleAsync(SysTasks tasksQz);

		Task<ApiResult> ResumeTaskScheduleAsync(SysTasks tasksQz);

		Task<ApiResult> DeleteTaskScheduleAsync(SysTasks tasksQz);

		Task<ApiResult> RunTaskScheduleAsync(SysTasks tasksQz);

		Task<ApiResult> UpdateTaskScheduleAsync(SysTasks tasksQz);
	}
}
