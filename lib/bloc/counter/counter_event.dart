import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';


//this is a base class 
abstract class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

class increamentCounter extends CounterEvent{}

class decreamentCounter extends CounterEvent{}

