.class public FeastRoomAction

.super RoomAction

.method public <init>()V
  .limit locals 1
  .limit stack 1
  aload_0
  invokenonvirtual RoomAction/<init>()V
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

.method public performAction(Ljava/lang/String;)I
  .limit locals 4
  .limit stack 3
  aload_1
  ldc "use"
  iconst_0
  invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
  iconst_0
  if_icmpge true_5
  iconst_0
  goto stop_6
  true_5:
  iconst_1
  stop_6:
  dup
  ifne true_4
  pop
  aload_1
  ldc "eat"
  iconst_0
  invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
  iconst_0
  if_icmpge true_7
  iconst_0
  goto true_4
  true_7:
  iconst_1
  true_4:
  dup
  ifne true_3
  pop
  aload_1
  ldc "interact"
  iconst_0
  invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
  iconst_0
  if_icmpge true_9
  iconst_0
  goto true_3
  true_9:
  iconst_1
  true_3:
  dup
  ifne true_2
  pop
  aload_1
  ldc "consume"
  iconst_0
  invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
  iconst_0
  if_icmpge true_11
  iconst_0
  goto true_2
  true_11:
  iconst_1
  true_2:
  ifeq else_0
  new joos/lib/JoosRandom
  dup
  invokenonvirtual joos/lib/JoosRandom/<init>()V
  astore_2
  aload_2
  invokevirtual joos/lib/JoosRandom/nextInt()I
  ldc 100
  irem
  dup
  istore_3
  pop
  iload_3
  iconst_0
  if_icmplt true_14
  iconst_0
  goto stop_15
  true_14:
  iconst_1
  stop_15:
  ifeq stop_13
  iload_3
  ineg
  dup
  istore_3
  pop
  stop_13:
  iload_3
  ldc 40
  if_icmplt true_18
  iconst_0
  goto stop_19
  true_18:
  iconst_1
  stop_19:
  ifeq else_16
  aload_0
  getfield RoomAction/O Ljoos/lib/JoosIO;
  ldc "The food leaves a bitter aftertaste. You feel weakened."
  invokevirtual joos/lib/JoosIO/println(Ljava/lang/String;)V
  ldc 10
  ireturn
  goto stop_1
  else_16:
  aload_0
  getfield RoomAction/O Ljoos/lib/JoosIO;
  ldc "The food was delicious! You feel energized."
  invokevirtual joos/lib/JoosIO/println(Ljava/lang/String;)V
  ldc 7
  ireturn
  goto stop_1
  else_0:
  aload_1
  ldc "flip"
  iconst_0
  invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
  iconst_0
  if_icmplt else_20
  aload_0
  getfield RoomAction/O Ljoos/lib/JoosIO;
  ldc "You hurt yourself in the process. A new table appears. "
  invokevirtual joos/lib/JoosIO/println(Ljava/lang/String;)V
  ldc 9
  ireturn
  goto stop_1
  else_20:
  aload_0
  aload_1
  invokevirtual RoomAction/performBaseAction(Ljava/lang/String;)I
  ireturn
  stop_1:
  nop
.end method

