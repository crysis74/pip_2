<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>PIP LAB#1</title>
    <link rel="stylesheet" type="text/css" href="main_page_style.css">
    <link rel="shortcut icon" href="./res/duck.png" type="image/png">
    <script type="text/javascript" src="validation.js"></script>
</head>
<body>
<div id="form_container">
    <div id="header" class="block">
		<span id="name">
            <h4>Лабораторная работа № 2<br/>
                Вариант 18102</h4><br/>
		Выполнили: Баталов Евгений Витальевич и Прилуцкая Татьяна Ивановна <br/>
		Группа: P3201 <br/>

		</span>
    </div>
    <div id="margins" class="block">

        <form method="post" action="" id="main_form" name="main_form" onsubmit="return validate()">
            <fieldset class="param_field">
                <legend>Значение Х</legend>
                <span>Выберите значение X:</span>
                <div class="styled-select">
                    <select name="x_input">
                        <option value="-5">-5</option>
                        <option value="-4">-4</option>
                        <option value="-3">-3</option>
                        <option value="-2">-2</option>
                        <option value="-1">-1</option>
                        <option value="0" selected>0</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                    </select>
                </div>
            </fieldset>
            <fieldset class="param_field">
                <legend>Значение Y</legend>
                <p><input type='text'
                          name='y_input'
                          id="y_input"
                          placeholder="Y є (-5; 5)"
                          autocomplete="off"
                          onkeypress="return disable_not_numbers()"
                          onfocus="removeError(this, this.parentNode)"
                          onpaste="return disable_not_numbers()"
                          maxlength="12"></p>
                <!---<label for="y_input" id="y_note">*числа округляются до 15 знаков после запятой*</label> --->
            </fieldset>
            <fieldset class="param_field">
                <legend>Значение R</legend>
                <span>Выберите значение R:</span>
                <div class="styled-select">
                    <select name="r_input">
                        <option value="1">1</option>
                        <option value="1,5">1.5</option>
                        <option value="2" selected>2</option>
                        <option value="2,5">2.5</option>
                        <option value="3">3</option>
                    </select>
                </div>
            </fieldset>
            <p><input type="magic_button" name="mainform_submit" value="Проверить" id="mainform_submit" disabled="disabled"></p>
        </form>

    </div>
    <div id="plot_canvas" class="block">
        <script>
            //qrawPlot()
        </script>
    </div>
    <div id="footer" class="block">
        <p><a href="http://en.ifmo.ru/en/" target="_blank"><br/>&copy; 2018 Университет ИТМО<br/></a>
        </p></div>
</div>
<script type="text/javascript" language="javascript">
    function validate() {
        let y = document.forms['main_form']['y_input'],
            yValue = y.value;
        yValue = yValue.replace(/,/g, '.');
        const min_y = -5;
        const max_y = 5;
        if (yValue === "") {
            removeError(y, y.parentNode);
            setError(y, y.parentNode, 'Где Y ?');
            return false;
        } else if (isNaN(yValue)) {
            removeError(y, y.parentNode);
            setError(y, y.parentNode, 'Это определённо не число');
            return false;
        } else if (yValue >= max_y || yValue <= min_y) {
            removeError(y, y.parentNode);
            setError(y, y.parentNode, 'Внезапно: ' + yValue + ' \u{2209} (' + min_y + ' ; ' + max_y + ') !');
            return false;
        }
        return true;
    }
</script>
</body>
</html>