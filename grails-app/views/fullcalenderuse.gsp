<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Full Calender</title>
    <asset:stylesheet href="jquery-ui.min.css"/>
    <link href="${resource(dir: 'css',file: 'fullcalendar.min.css')}" rel="stylesheet" type="text/css"/>
    <link href="${resource(dir: 'css',file: 'fullcalendar.print.css')}" rel="stylesheet" type="text/css"/>

    <script type="text/javascript" src="${resource(dir: 'js',file: 'moment.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js',file: 'jquery.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js',file: 'jquery-ui.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js',file: 'fullcalendar.js')}"></script>

</head>

<body>
<div id="calendar"></div>
<script>
    $(document).ready(function() {
        $('#calendar').fullCalendar({
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month,agendaWeek,agendaDay'
            },
            defaultDate: '2015-01-01',
            selectable: true,
            selectHelper: true,
            select: function (start, end) {
                console.log("IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII");
                var title = prompt('Event Title:');
                console.log('select date--');
                var eventData;
                if (title) {
                    eventData = {
                        title: title,
                        start: start,
                        end: end
                    };
                    $('#calendar').fullCalendar('renderEvent', eventData, true); // stick? = true
                }
                $('#calendar').fullCalendar('unselect');
            },
            editable: true,
            eventLimit: true, // allow "more" link when too many events
            events: [
                {
                    title: 'All Day Event',
                    start: '2015-01-01'
                },
                {
                    title: 'Long Event',
                    start: '2014-01-02',
                    end: '2015-01-10'
                },
                {
                    id: 999,
                    title: 'Repeating Event',
                    start: '2015-01-09T16:00:00'
                },
                {
                    title: 'Click for Google',
                    url: 'http://google.com/',
                    start: '2015-01-28'
                }
            ]
        });
    });
</script>
</body>
</html>