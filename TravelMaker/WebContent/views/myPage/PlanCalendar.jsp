<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8' />
<link href='<%= request.getContextPath() %>/resources/fullcalendar-4.3.1/packages/core/main.css' rel='stylesheet' />
<link href='<%= request.getContextPath() %>/resources/fullcalendar-4.3.1/packages/daygrid/main.css' rel='stylesheet' />
<script src='<%= request.getContextPath() %>/resources/fullcalendar-4.3.1/packages/core/main.js'></script>
<script src='<%= request.getContextPath() %>/resources/fullcalendar-4.3.1/packages/interaction/main.js'></script>
<script src='<%= request.getContextPath() %>/resources/fullcalendar-4.3.1/packages/daygrid/main.js'></script>
<script>

  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      plugins: [ 'interaction', 'dayGrid' ],
      header: {
        left: 'prevYear,prev,next,nextYear today',
        center: 'title',
        right: 'dayGridMonth,dayGridWeek,dayGridDay'
      },
      defaultDate: '2019-08-12',
      navLinks: true, // can click day/week names to navigate views
      editable: true,
      eventLimit: true, // allow "more" link when too many events
      events: [
        {
          title: 'All Day Event',
          start: '2019-08-01'
        },
        {
          title: 'Long Event',
          start: '2019-08-07',
          end: '2019-08-10'
        },
        {
          groupId: 999,
          title: 'Repeating Event',
          start: '2019-08-09T16:00:00'
        },
        {
          groupId: 999,
          title: 'Repeating Event',
          start: '2019-08-16T16:00:00'
        },
        {
          title: 'Conference',
          start: '2019-08-11',
          end: '2019-08-13'
        },
        {
          title: 'Meeting',
          start: '2019-08-12T10:30:00',
          end: '2019-08-12T12:30:00'
        },
        {
          title: 'Lunch',
          start: '2019-08-12T12:00:00'
        },
        {
          title: 'Meeting',
          start: '2019-08-12T14:30:00'
        },
        {
          title: 'Happy Hour',
          start: '2019-08-12T17:30:00'
        },
        {
          title: 'Dinner',
          start: '2019-08-12T20:00:00'
        },
        {
          title: 'Birthday Party',
          start: '2019-08-13T07:00:00'
        },
        {
          title: 'Click for Google',
          url: 'http://google.com/',
          start: '2019-08-28'
        }
      ]
    });

    calendar.render();
  });

</script>
<style>

  body {
    margin: 40px 10px;
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width: 900px;
    margin: 0 auto;
    z-index:1;
    
  }
  
  #background {
  background-image : url(<%= request.getContextPath() %>/resources/images/PlanBackground.jpeg);
    background-size : 100%;
    /* opacity:0.5!important; */
    filter:alpha(opacity=50);
    z-index:-1;
    width:100%;
    height:100%;
  }
  

</style>
</head>
<body>
	<div id="background">
  <div id='calendar'></div>
	</div>
</body>
</html>