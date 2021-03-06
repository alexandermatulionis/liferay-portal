<%--
/**
 * Copyright (c) 2000-present Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
--%>

<%@ include file="/init.jsp" %>

<%
DisplayPageDisplayContext displayPageDisplayContext = new DisplayPageDisplayContext(renderRequest, renderResponse, request);
%>

<clay:navigation-bar
	inverted="<%= true %>"
	navigationItems="<%= layoutsAdminDisplayContext.getNavigationItems() %>"
/>

<clay:management-toolbar
	actionDropdownItems="<%= displayPageDisplayContext.getActionDropdownItems() %>"
	clearResultsURL="<%= displayPageDisplayContext.getClearResultsURL() %>"
	componentId="displayPagesManagementToolbar"
	disabled="<%= displayPageDisplayContext.isDisabledDisplayPagesManagementBar() %>"
	filterDropdownItems="<%= displayPageDisplayContext.getFilterDropdownItems() %>"
	itemsTotal="<%= displayPageDisplayContext.getTotalItems() %>"
	searchActionURL="<%= displayPageDisplayContext.getSearchActionURL() %>"
	searchContainerId="displayPages"
	searchFormName="searchFm"
	showCreationMenu="<%= displayPageDisplayContext.isShowAddButton(LayoutPageTemplateActionKeys.ADD_LAYOUT_PAGE_TEMPLATE_ENTRY) %>"
	showSearch="<%= displayPageDisplayContext.isShowDisplayPagesSearch() %>"
	sortingOrder="<%= displayPageDisplayContext.getOrderByType() %>"
	sortingURL="<%= displayPageDisplayContext.getSortingURL() %>"
	viewTypeItems="<%= displayPageDisplayContext.getViewTypeItems() %>"
/>

<portlet:actionURL name="/layout/delete_layout_page_template_entry" var="deleteDisplayPageURL">
	<portlet:param name="redirect" value="<%= currentURL %>" />
</portlet:actionURL>

<aui:form action="<%= deleteDisplayPageURL %>" cssClass="container-fluid-1280" name="fm">
	<liferay-ui:search-container
		id="displayPages"
		searchContainer="<%= displayPageDisplayContext.getDisplayPagesSearchContainer() %>"
	>
		<liferay-ui:search-container-row
			className="com.liferay.layout.page.template.model.LayoutPageTemplateEntry"
			keyProperty="layoutPageTemplateEntryId"
			modelVar="layoutPageTemplateEntry"
		>

			<%
			row.setCssClass("entry-card lfr-asset-item " + row.getCssClass());

			String imagePreviewURL = layoutPageTemplateEntry.getImagePreviewURL(themeDisplay);
			%>

			<liferay-ui:search-container-column-text>
				<c:choose>
					<c:when test="<%= Validator.isNotNull(imagePreviewURL) %>">
						<liferay-frontend:vertical-card
							actionJsp="/display_page_action.jsp"
							actionJspServletContext="<%= application %>"
							cssClass="entry-display-style"
							imageCSSClass="aspect-ratio-bg-contain"
							imageUrl="<%= imagePreviewURL %>"
							resultRow="<%= row %>"
							rowChecker="<%= searchContainer.getRowChecker() %>"
							title="<%= layoutPageTemplateEntry.getName() %>"
						>
							<liferay-frontend:vertical-card-header>
								<liferay-ui:message arguments="<%= LanguageUtil.getTimeDescription(request, System.currentTimeMillis() - layoutPageTemplateEntry.getCreateDate().getTime(), true) %>" key="x-ago" translateArguments="<%= false %>" />
							</liferay-frontend:vertical-card-header>

							<liferay-frontend:vertical-card-footer>
								<div class="row">
									<div class="col text-truncate">

										<%
										String typeLabel = displayPageDisplayContext.getTypeLabel(layoutPageTemplateEntry);
										%>

										<c:choose>
											<c:when test="<%= Validator.isNotNull(typeLabel) %>">
												<%= typeLabel %>
											</c:when>
											<c:otherwise>
												&nbsp;
											</c:otherwise>
										</c:choose>
									</div>
								</div>

								<div class="card-subtitle row">
									<div class="col text-truncate">

										<%
										String subtypeLabel = displayPageDisplayContext.getSubtypeLabel(layoutPageTemplateEntry);
										%>

										<c:choose>
											<c:when test="<%= Validator.isNotNull(subtypeLabel) %>">
												<%= subtypeLabel %>
											</c:when>
											<c:otherwise>
												&nbsp;
											</c:otherwise>
										</c:choose>
									</div>
								</div>
							</liferay-frontend:vertical-card-footer>

							<c:if test="<%= layoutPageTemplateEntry.getDefaultTemplate() %>">
								<liferay-frontend:vertical-card-sticker-bottom>
									<div class="sticker sticker-bottom-left sticker-primary">
										<liferay-ui:icon
											icon="check-circle"
											markupView="lexicon"
										/>
									</div>
								</liferay-frontend:vertical-card-sticker-bottom>
							</c:if>
						</liferay-frontend:vertical-card>
					</c:when>
					<c:otherwise>
						<liferay-frontend:icon-vertical-card
							actionJsp="/display_page_action.jsp"
							actionJspServletContext="<%= application %>"
							cssClass="entry-display-style"
							icon="page"
							resultRow="<%= row %>"
							rowChecker="<%= searchContainer.getRowChecker() %>"
							title="<%= layoutPageTemplateEntry.getName() %>"
						>
							<liferay-frontend:vertical-card-header>
								<liferay-ui:message arguments="<%= LanguageUtil.getTimeDescription(request, System.currentTimeMillis() - layoutPageTemplateEntry.getCreateDate().getTime(), true) %>" key="x-ago" translateArguments="<%= false %>" />
							</liferay-frontend:vertical-card-header>

							<liferay-frontend:vertical-card-footer>
								<div class="row">
									<div class="col text-truncate">

										<%
										String typeLabel = displayPageDisplayContext.getTypeLabel(layoutPageTemplateEntry);
										%>

										<c:choose>
											<c:when test="<%= Validator.isNotNull(typeLabel) %>">
												<%= typeLabel %>
											</c:when>
											<c:otherwise>
												&nbsp;
											</c:otherwise>
										</c:choose>
									</div>
								</div>

								<div class="card-subtitle row">
									<div class="col text-truncate">

										<%
										String subtypeLabel = displayPageDisplayContext.getSubtypeLabel(layoutPageTemplateEntry);
										%>

										<c:choose>
											<c:when test="<%= Validator.isNotNull(subtypeLabel) %>">
												<%= subtypeLabel %>
											</c:when>
											<c:otherwise>
												&nbsp;
											</c:otherwise>
										</c:choose>
									</div>
								</div>
							</liferay-frontend:vertical-card-footer>

							<c:if test="<%= layoutPageTemplateEntry.getDefaultTemplate() %>">
								<liferay-frontend:vertical-card-sticker-bottom>
									<div class="sticker sticker-bottom-left sticker-primary">
										<liferay-ui:icon
											icon="check-circle"
											markupView="lexicon"
										/>
									</div>
								</liferay-frontend:vertical-card-sticker-bottom>
							</c:if>
						</liferay-frontend:icon-vertical-card>
					</c:otherwise>
				</c:choose>
			</liferay-ui:search-container-column-text>
		</liferay-ui:search-container-row>

		<liferay-ui:search-iterator
			displayStyle="<%= displayPageDisplayContext.getDisplayStyle() %>"
			markupView="lexicon"
		/>
	</liferay-ui:search-container>
</aui:form>

<portlet:actionURL name="/layout/add_layout_page_template_entry" var="addDisplayPageURL">
	<portlet:param name="mvcPath" value="/edit_layout_page_template_entry.jsp" />
	<portlet:param name="redirect" value="<%= currentURL %>" />
	<portlet:param name="type" value="<%= String.valueOf(LayoutPageTemplateEntryTypeConstants.TYPE_DISPLAY_PAGE) %>" />
</portlet:actionURL>

<aui:script require="metal-dom/src/all/dom as dom,frontend-js-web/liferay/modal/commands/OpenSimpleInputModal.es as modalCommands">
	function handleAddDisplayPageMenuItemClick(event) {
		event.preventDefault();

		modalCommands.openSimpleInputModal(
			{
				dialogTitle: '<liferay-ui:message key="add-display-page" />',
				formSubmitURL: '<%= addDisplayPageURL %>',
				mainFieldLabel: '<liferay-ui:message key="name" />',
				mainFieldName: 'name',
				mainFieldPlaceholder: '<liferay-ui:message key="name" />',
				namespace: '<portlet:namespace />',
				spritemap: '<%= themeDisplay.getPathThemeImages() %>/lexicon/icons.svg'
			}
		);
	}

	var updateDisplayPageMenuItemClickHandler = dom.delegate(
		document.body,
		'click',
		'.<portlet:namespace />update-display-page-action-option > a',
		function(event) {
			var data = event.delegateTarget.dataset;

			event.preventDefault();

			modalCommands.openSimpleInputModal(
				{
					dialogTitle: '<liferay-ui:message key="rename-display-page" />',
					formSubmitURL: data.formSubmitUrl,
					idFieldName: 'layoutPageTemplateEntryId',
					idFieldValue: data.idFieldValue,
					mainFieldLabel: '<liferay-ui:message key="name" />',
					mainFieldName: 'name',
					mainFieldPlaceholder: '<liferay-ui:message key="name" />',
					mainFieldValue: data.mainFieldValue,
					namespace: '<portlet:namespace />',
					spritemap: '<%= themeDisplay.getPathThemeImages() %>/lexicon/icons.svg'
				}
			);
		}
	);

	window.<portlet:namespace />deleteSelectedDisplayPages = function() {
		if (confirm('<liferay-ui:message key="are-you-sure-you-want-to-delete-this" />')) {
			submitForm($(document.<portlet:namespace />fm));
		}
	}

	Liferay.componentReady('displayPagesManagementToolbar').then(
		(managementToolbar) => {
			managementToolbar.on('creationButtonClicked', handleAddDisplayPageMenuItemClick);
		}
	);

	function handleDestroyPortlet() {
		updateDisplayPageMenuItemClickHandler.removeListener();

		Liferay.detach('destroyPortlet', handleDestroyPortlet);
	}

	Liferay.on('destroyPortlet', handleDestroyPortlet);
</aui:script>