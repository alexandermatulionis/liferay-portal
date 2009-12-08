/**
 * Copyright (c) 2000-2009 Liferay, Inc. All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

package com.liferay.portal.workflow;

import com.liferay.portal.kernel.messaging.proxy.BaseProxyBean;
import com.liferay.portal.kernel.util.OrderByComparator;
import com.liferay.portal.kernel.workflow.WorkflowTask;
import com.liferay.portal.kernel.workflow.WorkflowTaskManager;

import java.util.List;
import java.util.Map;

/**
 * <a href="WorkflowTaskManagerProxyBean.java.html"><b><i>View Source</i></b>
 * </a>
 *
 * @author Micha Kiener
 * @author Shuyang Zhou
 * @author Brian Wing Shun Chan
 */
public class WorkflowTaskManagerProxyBean
	extends BaseProxyBean implements WorkflowTaskManager {

	public WorkflowTask assignWorkflowTaskToRole(
		long userId, long workflowTaskId, long roleId, String comment,
		Map<String, Object> context) {

		throw new UnsupportedOperationException();
	}

	public WorkflowTask assignWorkflowTaskToUser(
		long userId, long workflowTaskId, long assigneeUserId, String comment,
		Map<String, Object> context) {

		throw new UnsupportedOperationException();
	}

	public WorkflowTask completeWorkflowTask(
		long userId, long workflowTaskId, String transitionName, String comment,
		Map<String, Object> context) {

		throw new UnsupportedOperationException();
	}

	public List<String> getNextTransitionNames(
		long userId, long workflowTaskId) {

		throw new UnsupportedOperationException();
	}

	public long[] getPooledActorsIds(long workflowTaskId) {
		throw new UnsupportedOperationException();
	}

	public WorkflowTask getWorkflowTask(long workflowTaskId) {
		throw new UnsupportedOperationException();
	}

	public int getWorkflowTaskCount(Boolean completed) {
		throw new UnsupportedOperationException();
	}

	public int getWorkflowTaskCountByRole(long roleId, Boolean completed) {
		throw new UnsupportedOperationException();
	}

	public int getWorkflowTaskCountByUser(long userId, Boolean completed) {
		throw new UnsupportedOperationException();
	}

	public int getWorkflowTaskCountByUserRoles(long userId, Boolean completed) {
		throw new UnsupportedOperationException();
	}

	public int getWorkflowTaskCountByWorkflowInstance(
		long workflowInstanceId, Boolean completed) {

		throw new UnsupportedOperationException();
	}

	public List<WorkflowTask> getWorkflowTasks(
		Boolean completed, int start, int end,
		OrderByComparator orderByComparator) {

		throw new UnsupportedOperationException();
	}

	public List<WorkflowTask> getWorkflowTasksByRole(
		long roleId, Boolean completed, int start, int end,
		OrderByComparator orderByComparator) {

		throw new UnsupportedOperationException();
	}

	public List<WorkflowTask> getWorkflowTasksByUser(
		long userId, Boolean completed, int start, int end,
		OrderByComparator orderByComparator) {

		throw new UnsupportedOperationException();
	}

	public List<WorkflowTask> getWorkflowTasksByUserRoles(
		long userId, Boolean completed, int start, int end,
		OrderByComparator orderByComparator) {

		throw new UnsupportedOperationException();
	}

	public List<WorkflowTask> getWorkflowTasksByWorkflowInstance(
		long workflowInstanceId, Boolean completed, int start, int end,
		OrderByComparator orderByComparator) {

		throw new UnsupportedOperationException();
	}

}