	var module = angular.module("dw",[]);
	module.controller("Ctrl1",Main);
	module.controller("Ctrl2",Main2);

	function Main($scope){
		$scope.answer = 0;
		$scope.operate=function(){
			if($scope.operator==='+')
				$scope.answer = parseInt($scope.value1) + parseInt($scope.value2);
			else if($scope.operator==='-')
				$scope.answer = $scope.value1 - $scope.value2;
			else if($scope.operator==='*')
				$scope.answer = $scope.value1 * $scope.value2;
			else if($scope.operator==='/')
				$scope.answer = $scope.value1 / $scope.value2;
		}
	};

	function Main2($scope){
		//$scope.newvar = "sefwe";
		//$scope.myvar = "wefd";
		/*$scope.see = function(){
			//$scope.newvar = $scope.myvar;
		}*/

	};

	module.controller("Ctrl3",function($scope,$http){

		$scope.empno;
		$scope.myvar;
		//$scope.vari = false;
	    $scope.getPeople = function() {
	          $http({
	              
	              method: 'GET',    
	              url: 'add.php'
	              
	          }).then(function (response) {
	              
	              // on success
	              console.log(response.data[0]);

	              $scope.empno = response.data;
	              console.log($scope.empno[0]);
	              
	          }, function (response) {
	              
	              // on error

	              console.log(response.data,response.status);
	              
	          });
	    	//return $scope.vari;
	    };
	$scope.vari = $scope.getPeople();
	
	$scope.chosen;
	$scope.see = function(){
		$http({
			method : 'POST',
			url : 'recieve.php',
			data:{
				angular_var : $scope.myvar
			}
		}).then(function(response){
			console.log(response.data[0]);
			$scope.chosen = response.data[0];
		});
	}

	});

