

            <g:each in="${personInstanceList}" var="person">
                <tr>
                    <td>${person.id}</td>
                    <td>${person.name}</td>
                    <td>${max}</td>
                    %{--<td>${person.age}</td>--}%
                </tr>
            </g:each>

            %{--<util:remoteNonStopPageScroll action='filter' controller="remotePaginationExample"--}%
                                          %{--total="${com.paginate.Person.count()}"--}%
                                          %{--update="perList" max="${max}" loadingHtml="test"/>--}%

            -------param max: ${params.max}} -----
          ---- max: ${max} ------
<util:remotePaginate action="filter" total="${com.paginate.Person.count()}"
                     update="perList" max="${max}" pageSizes="[15, 30, 45,100]"/>
