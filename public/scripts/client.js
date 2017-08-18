console.log('js');

var app = angular.module('PetHotelApp', []);

app.controller('PetHotelController', ['$http', function ($http) {
    console.log('Pet Hotel Controller loaded');
    var self = this;

    self.names = ["Emil", "Tobias", "Linus"];




}])

// app.controller('ownerDropdown', function ($scope) {
//     $scope.names = ["Emil", "Tobias", "Linus"];
// });