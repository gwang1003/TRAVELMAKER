<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8' />
<link href='<%= request.getContextPath() %>/resources/fullcalendar-4.3.1/packages/core/main.css' rel='stylesheet' />
<link href='<%= request.getContextPath() %>/resources/fullcalendar-4.3.1/packages/daygrid/main.css' rel='stylesheet' />
<link href='<%= request.getContextPath() %>/resources/fullcalendar-4.3.1/packages/timegrid/main.css' rel='stylesheet' />
<link href='<%= request.getContextPath() %>/resources/fullcalendar-4.3.1/packages/list/main.css' rel='stylesheet' />
<script src='<%= request.getContextPath() %>/resources/fullcalendar-4.3.1/packages/core/main.js'></script>
<script src='<%= request.getContextPath() %>/resources/fullcalendar-4.3.1/packages/core/locales-all.js'></script>
<script src='<%= request.getContextPath() %>/resources/fullcalendar-4.3.1/packages/interaction/main.js'></script>
<script src='<%= request.getContextPath() %>/resources/fullcalendar-4.3.1/packages/daygrid/main.js'></script>
<script src='<%= request.getContextPath() %>/resources/fullcalendar-4.3.1/packages/timegrid/main.js'></script>
<script src='<%= request.getContextPath() %>/resources/fullcalendar-4.3.1/packages/list/main.js'></script>
<script>
	$(function() {
		 $('.fc-unselectable').css('user-select','all');
	});

  document.addEventListener('DOMContentLoaded', function() {
    var initialLocaleCode = 'ko';
    var localeSelectorEl = document.getElementById('locale-selector');
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      plugins: [ 'interaction', 'dayGrid', 'timeGrid', 'list' ],
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,listMonth'
      },
      defaultDate: '2019-08-12',
      locale: initialLocaleCode,
      buttonIcons: false, // show the prev/next text
      weekNumbers: true,
      //navLinks: true,  can click day/week names to navigate views
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
          start: '2019-08-28',
          imageurl: '<%= request.getContextPath() %>/resources/images/강원도.jpg'
        }
      ]
      ,dateClick: function() {
    	  var left = (screen.width/2)-300;
    	  var top = (screen.height/2)-225;
    	  var url = "<%= request.getContextPath() %>/views/myPage/PlanDetail.jsp";
    	  var uploadWin = window.open(url,"Upload","toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no, width=600, height=450" + ",top=" + top + ",left=" + left);
    	  uploadWin.moveTo(left, top);
    	  uploadWin.focus();
	  }
      , eventRender:function(event, eventElement) {
          if(event.imageurl) {
              eventElement.find("span .fc-title").prepend("<center><img src='" + event.imageurl + "'><center>");
          }
      }
      , eventClick:function(event) {
    	  var left = (screen.width/2)-300;
    	  var top = (screen.height/2)-225;
    	  var url = "<%= request.getContextPath() %>/views/myPage/PlanDetail.jsp";
    	  var uploadWin = window.open(url,"Upload","toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no, width=600, height=450" + ",top=" + top + ",left=" + left);
    	  uploadWin.moveTo(left, top);
    	  uploadWin.focus();
      }
    });

    calendar.render();

    // build the locale selector's options
    calendar.getAvailableLocaleCodes().forEach(function(localeCode) {
      var optionEl = document.createElement('option');
      optionEl.value = localeCode;
      optionEl.selected = localeCode == initialLocaleCode;
      optionEl.innerText = localeCode;
      localeSelectorEl.appendChild(optionEl);
    });

    // when the selected option changes, dynamically change the calendar option
    localeSelectorEl.addEventListener('change', function() {
      if (this.value) {
        calendar.setOption('locale', this.value);
      }
    });

  });
</script>
<style>

  body {
    margin: 0;
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  }

  #top {
    background: #eee;
    border-bottom: 1px solid #ddd;
    padding: 0 10px;
    line-height: 40px;
    font-size: 12px;
  }

  #calendar {
    max-width: 900px;
    margin: 0 auto;
    padding: 0 10px;
    <%-- background-image : url(<%= request.getContextPath() %>/resources/images/PlanBackground.jpeg);
    background-size : 100%;
    /* opacity:0.5!important; */
    filter:alpha(opacity=50);
    z-index:-1;
    width:100%;
    height:100%; --%>
  }

</style>
</head>
<body>
  <!-- <div id='top'>

    Locales:
    <select id='locale-selector'></select>

  </div> -->
  <div id='calendar' style="user-select:all"></div>

</body>
</html>