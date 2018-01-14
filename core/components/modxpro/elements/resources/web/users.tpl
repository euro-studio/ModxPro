{'<script type="text/javascript">requirejs(["app","app/users"]);</script>' | htmlToBottom}

<div id="app-grid-users" class="app-panel grid-panel">
    <div id="app-grid-users-toolbar" class="toolbar top-bar no-gutters">
        <div class="col12 col-md-6 pr-md-3 search">
            <div class="form-group">
                <input type="text" name="search" class="query" placeholder="{$.en ? 'Search' : 'Поиск'}" value="">
                <button type="submit"><i class="far fa-search"></i></button>
                <button type="reset" data-bind="disabled:reset"><i class="far fa-times"></i></button>
            </div>
        </div>
        <div class="col12 col-md-6 pl-md-3 mt-3 mt-md-0">
            <label class="custom-control custom-checkbox">
                <input type="checkbox" name="rating" class="custom-control-input filter-rating">
                <span class="custom-control-indicator"></span>
                <span class="custom-control-description">{$.en ? 'Positive rating' : 'Положительный рейтинг'}</span>
            </label>
            <label class="custom-control custom-checkbox">
                <input type="checkbox" name="work" class="custom-control-input filter-work">
                <span class="custom-control-indicator"></span>
                <span class="custom-control-description">{$.en ? 'Accepts orders' : 'Принимает заказы'}</span>
            </label>
        </div>
    </div>
    <div class="table-wrapper">
        <table class="table table-striped">
            <thead>
            <tr>
                <th class="idx"></th>
                <th class="user">{$.en ? 'Fullname' : 'Имя'}</th>
                <th class="topics sortable" data-sort="topics">{$.en ? 'Topics' : 'Заметки'}</th>
                <th class="comments sortable" data-sort="comments">{$.en ? 'Comments' : 'Комментарии'}</th>
                <th class="rating sortable" data-sort="rating">{$.en ? 'Rating' : 'Рейтинг'}</th>
            </tr>
            </thead>
            <tbody class="rows">
            <tr>
                <td class="spinner" colspan="5"><i class="far fa-spin fa-cog"></i></td>
            </tr>
            </tbody>
        </table>
    </div>

    {include 'file:chunks/_grid-footer.tpl'}
</div>

<script id="RowView" type="text/template">
    <td class="idx"><%=idx%>.</td>
    <td class="user">
        <div class="avatar">
            <a href="/users/<%=link%>"><img src="<%=avatar%>" height="48"></a>
        </div>
        <div class="properties">
            <div class="name"><a href="/users/<%=link%>"><%=name%></a></div>
            <div class="createdon">{$.en ? 'Registration' : 'Регистрация'}: <% print(createdon ? createdon : '{$.en ? 'No' : 'Нет'}') %></div>
            <div class="visitedon">{$.en ? 'Activity' : 'Активность'}: <% print(visitedon ? visitedon : '{$.en ? 'No' : 'Нет'}') %></div>
            <div class="work">{$.en ? 'Accepts orders' : 'Принимает заказы'}:
                <% if (work == 1) {
                    print('<div class="badge badge-success">{$.en ? 'Yes' : 'Да'}</div>');
                } else {
                    print('{$.en ? 'No' : 'Нет'}');
                }%>
            </div>
        </div>
    </td>
    <td class="topics"><%=topics%></td>
    <td class="comments"><%=comments%></td>
    <td class="rating"><%=rating%></td>
</script>

<script id="GridEmpty" type="text/template">
    <td class="empty" colspan="5">{$.en ? 'No data to display' : 'Нет данных для вывода'}</td>
</script>