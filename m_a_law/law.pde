boolean law_a(ArrayList<Boolean>list) {
  boolean next = false;
  int min_to_start = 2;
  if(list.size() >= min_to_start) {
    boolean me = list.get(list.size() -1);
    boolean previous = list.get(list.size() -2);
    // the law
    if(previous == false) {
      next = true;
    } else {
      next = false;
    }
  } else if(list.size() < min_to_start) {
    println("the list need",min_to_start,"elements to start");
  }
  return next;
}

boolean law_b(ArrayList<Boolean>list) {
  boolean next = false;
  int min_to_start = 2;
  if(list.size() >= min_to_start) {
    boolean me = list.get(list.size() -1);
    boolean previous = list.get(list.size() -2);
    // the law
    if(previous == false && me == false) {
      next = true;
    } else {
      next = false;
    }
  } else if(list.size() < min_to_start) {
    println("the list need",min_to_start,"elements to start");
  }
  return next;
}



boolean law_c(ArrayList<Boolean>list) {
  boolean next = false;
  boolean [] previous = new boolean[2];
  int min_to_start = 3;
  if(list.size() >= min_to_start) {
    boolean me = list.get(list.size() -1);

    previous[0] = list.get(list.size() -2);
    previous[1] = list.get(list.size() -3);
    // the law
    if(previous[0] == false && previous[1] == false) {
      next = false;
    } else if(previous[0] == false && previous[1] == true) {
      next = true;
    } else if(previous[0] == true && previous[1] == true) {
      next = false;
    } else {
      next = true;
    }
  } else if(list.size() < min_to_start) {
    println("the list need",min_to_start,"elements to start");
  }
  return next;
}






boolean law_d(ArrayList<Boolean>list) {
  boolean next = false;
  boolean [] previous = new boolean[3];
  int min_to_start = 4;
  if(list.size() >= min_to_start) {
    boolean me = list.get(list.size() -1);

    previous[0] = list.get(list.size() -2);
    previous[1] = list.get(list.size() -3);
    previous[2] = list.get(list.size() -4);
    // the law
    // if(me) {
      if(previous[0] == true && previous[1] == true  && previous[2] == true) {
        next = true;
      } else if(previous[0] == true && previous[1] == true  && previous[2] == false) {
        next = false;
      } else if(previous[0] == true && previous[1] == false  && previous[2] == false) {
        next = true;
      } else if(previous[0] == false && previous[1] == false  && previous[2] == false) {
        next = false;
      } else if(previous[0] == false && previous[1] == true  && previous[2] == true) {
        next = true;
      } else if(previous[0] == false && previous[1] == false  && previous[2] == true) {
        next = true;
      } else if(previous[0] == true && previous[1] == false  && previous[2] == true) {
        next = false;
      } else if(previous[0] == false && previous[1] == true  && previous[2] == false) {
        next = true;
      }else {
        next = true;
      }
    // }
  } else if(list.size() < min_to_start) {
    println("the list need",min_to_start,"elements to start");
  }
  return next;
}
