'use strict'

###*
 # @ngdoc function
 # @name srcApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the srcApp
###
angular.module 'srcApp'
  .controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
