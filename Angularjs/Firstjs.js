<html>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<body>

<div ng-app="">
 
<p>Input something in the input box:</p>
<p>Name : <input type="text" ng-model="name" placeholder="Enter name here"></p>
<h1>Hello {{name}}</h1>
<p>Input something in the input box:</p>
<p>Name : <input type="text" ng-model="Lname" placeholder="Enter name here"></p>
<h1>Hello {{Lname}}</h1>
<div ng-model="firstName" ng-init="firstName='Rahul' ">
<p> First Name is {{firstName}}</p>
</div>
<div ng-app="" ng-init="points=[1,15,19,2,40]">
<p>The third result is <span ng-bind="points[2]"</p>
</div>
</div>



</body>
</html>

