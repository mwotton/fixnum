#include <ruby.h>

VALUE cTest;

static VALUE t_init(VALUE self) {
  return self;
}

static VALUE t_add_one(VALUE self, VALUE obj) {
  long i = FIX2INT(obj);
  return INT2FIX(i+1);
}

void Init_my_test() {
  cTest = rb_define_class("MyTest", rb_cObject);
  rb_define_method(cTest, "initialize", t_init, 0);
  rb_define_method(cTest, "add", t_add_one, 1);
}

