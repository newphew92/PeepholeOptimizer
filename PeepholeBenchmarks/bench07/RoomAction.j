.class public abstract RoomAction

.super java/lang/Object

.field protected O Ljoos/lib/JoosIO;
.field protected R Ljoos/lib/JoosRandom;
.field protected targetString Ljava/lang/String;

.method public <init>()V
  .limit locals 1
  .limit stack 2
  aload_0
  invokenonvirtual java/lang/Object/<init>()V
  new joos/lib/JoosIO
  dup
  invokenonvirtual joos/lib/JoosIO/<init>()V
  aload_0
  swap
  putfield RoomAction/O Ljoos/lib/JoosIO;
  new joos/lib/JoosRandom
  dup
  invokenonvirtual joos/lib/JoosRandom/<init>()V
  aload_0
  swap
  putfield RoomAction/R Ljoos/lib/JoosRandom;
  return
.end method

.method public describe()V
  .limit locals 1
  .limit stack 2
  aload_0
  getfield RoomAction/O Ljoos/lib/JoosIO;
  ldc ""
  invokevirtual joos/lib/JoosIO/println(Ljava/lang/String;)V
  return
.end method

.method public abstract performAction(Ljava/lang/String;)I
.end method

.method public performBaseAction(Ljava/lang/String;)I
  .limit locals 2
  .limit stack 3
  aload_1
  ldc "fortune"
  iconst_0
  invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
  iconst_0
  if_icmpge stop_1
  aload_1
  ldc "show hp"
  iconst_0
  invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
  iconst_0
  if_icmplt else_4
  ldc 11
  ireturn
  goto stop_1
  else_4:
  aload_1
  ldc "show treasure"
  iconst_0
  invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
  iconst_0
  if_icmplt else_8
  iconst_4
  ireturn
  goto stop_1
  else_8:
  aload_1
  ldc "show coin"
  iconst_0
  invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
  iconst_0
  if_icmplt else_12
  ldc 6
  ireturn
  goto stop_1
  else_12:
  aload_1
  ldc "leave"
  iconst_0
  invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
  iconst_0
  if_icmpge true_19
  iconst_0
  goto stop_20
  true_19:
  iconst_1
  stop_20:
  dup
  ifne true_18
  pop
  aload_1
  ldc "go"
  iconst_0
  invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
  iconst_0
  if_icmpge true_21
  iconst_0
  goto true_18
  true_21:
  iconst_1
  true_18:
  ifeq else_16
  aload_0
  getfield RoomAction/O Ljoos/lib/JoosIO;
  ldc "Which direction?"
  invokevirtual joos/lib/JoosIO/println(Ljava/lang/String;)V
  goto stop_1
  else_16:
  aload_0
  getfield RoomAction/O Ljoos/lib/JoosIO;
  ldc "I'm afraid I can't let you do that, "
  invokevirtual joos/lib/JoosIO/print(Ljava/lang/String;)V
  iconst_2
  ireturn
  stop_1:
  iconst_0
  ireturn
  nop
.end method

.method public rand(I)I
  .limit locals 3
  .limit stack 2
  aload_0
  getfield RoomAction/R Ljoos/lib/JoosRandom;
  invokevirtual joos/lib/JoosRandom/nextInt()I
  dup
  istore_2
  pop
  iload_2
  iconst_0
  if_icmplt true_1
  iconst_0
  goto stop_2
  true_1:
  iconst_1
  stop_2:
  ifeq stop_0
  iload_2
  ineg
  dup
  istore_2
  pop
  stop_0:
  iload_2
  iload_1
  irem
  ireturn
  nop
.end method

