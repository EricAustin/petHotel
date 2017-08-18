console.log('js');

var app = angular.module('PetHotelApp', []);

app.controller('PetHotelController', ['$http', function ($http) {
    console.log('Pet Hotel Controller loaded');
    var self = this;

    self.names = [];

    self.getOwners = function () {
        $http({
            method: 'GET',
            url: '/owners'
        }).then(function(response) {
            console.log('response.data');
            self.names = response.data;
        })  //then end
    } // getOwners end


    self.getOwners();




}]) // controller end

// app.controller('ownerDropdown', function ($scope) {
//     $scope.names = ["Emil", "Tobias", "Linus"];
// });