var myApp = angular.module('myApp', ['ngRoute']);

//Config điều hướng
myApp.config(function ($routeProvider, $locationProvider) {
    $routeProvider
        //Side home
        .when('/', {
            templateUrl: 'pages/home.html'
        })
        //2 side panel
        .when('/homerepair', {
            templateUrl: 'pages/homerepair.html'

        })
        .when('/electricandwater', {
            templateUrl: 'pages/electricandwater.html'
        })
        //Start side household
        .when('/dieuhoa', {
            templateUrl: 'pages/satellites/household-appliances/dieuhoa.html'
        })
        .when('/binhnonglanh', {
            templateUrl: 'pages/satellites/household-appliances/binhnonglanh.html'
        })
        .when('/suativi', {
            templateUrl: 'pages/satellites/household-appliances/suativi.html'
        })
        .when('/maygiac', {
            templateUrl: 'pages/satellites/household-appliances/maygiac.html'
        })
        .when('/quatdien', {
            templateUrl: 'pages/satellites/household-appliances/quatdien.html'
        })
        .when('/tulanh', {
            templateUrl: 'pages/satellites/household-appliances/tulanh.html'
        })
        .when('/amply', {
            templateUrl: 'pages/satellites/household-appliances/amply.html'
        })
        .when('/bepgas', {
            templateUrl: 'pages/satellites/household-appliances/bepgas.html'
        })
        .when('/lovisong', {
            templateUrl: 'pages/satellites/household-appliances/lovisong.html'
        }) //end

        //Start Electric and water
        .when('/suadien', {
            templateUrl: 'pages/satellites/water-and-electric/suadien.html'
        })
        .when('/suakhoa', {
            templateUrl: 'pages/satellites/water-and-electric/suakhoa.html'
        })
        .when('/maybomnuoc', {
            templateUrl: 'pages/satellites/water-and-electric/maybomnuoc.html'
        })
        .when('/ongnuoc', {
            templateUrl: 'pages/satellites/water-and-electric/ongnuoc.html'
        })
        .when('/mainha', {
            templateUrl: 'pages/satellites/water-and-electric/mainha.html'
        })
        .when('/boncau', {
            templateUrl: 'pages/satellites/water-and-electric/boncau.html'
        })
        .when('/denled', {
            templateUrl: 'pages/satellites/water-and-electric/denled.html'
        })
        .when('/dogo', {
            templateUrl: 'pages/satellites/water-and-electric/dogo.html'
        })
        .when('/nhomkinh', {
            templateUrl: 'pages/satellites/water-and-electric/nhomkinh.html'
        })
        .when('/login', {
            templateUrl: 'pages/login.html'
        })
        //Nếu không đúng các điều trên thì xuống đây
        .otherwise({
            redirectTo: '/'
        });

    //Delete #
    $locationProvider.html5Mode(true);
});
//Use controller 

//Ban đầu Cho menuleft hiện sau khi click vào login hoặc đặt dịch vụ thì chạy sự kiện này ( apply all page)
myApp.controller('myCtrl', function ($scope) {
    //Ban đầu Cho menuleft hiện 
    $scope.menuleft = true;
    //sau khi click vào login hoặc đặt dịch vụ thì chạy sự kiện này ( apply all page)
    $scope.myFunc = function () {
        $scope.menuleft = false; //menuleft hide
        $scope.loginside = true; //Login side active
    }
    //Ngược lại khi bấm vào logo thì cho về trang index
    $scope.FuncHome = function () {
        $scope.menuleft = true; //Menuleft show
        $scope.loginside = false; //Side login Hide
    }
});
