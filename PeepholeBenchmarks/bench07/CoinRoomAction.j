.class public CoinRoomAction

.super RoomAction

.field protected taken Z

.method public <init>()V
  .limit locals 1
  .limit stack 2
  aload_0
  invokenonvirtual RoomAction/<init>()V
  iconst_0
  aload_0
  swap
  putfield CoinRoomAction/taken Z
  return
.end method

.method public describe()V
  .limit locals 1
  .limit stack 2
  aload_0
  getfield CoinRoomAction/taken Z
  ifeq true_2
  iconst_0
  goto stop_3
  true_2:
  iconst_1
  stop_3:
  ifeq else_0
  aload_0
  getfield RoomAction/O Ljoos/lib/JoosIO;
  ldc "Ooooooh! Shiny!"
  invokevirtual joos/lib/JoosIO/println(Ljava/lang/String;)V
  return
  else_0:
  aload_0
  getfield RoomAction/O Ljoos/lib/JoosIO;
  ldc ""
  invokevirtual joos/lib/JoosIO/println(Ljava/lang/String;)V
  return
.end method

.method public performAction(Ljava/lang/String;)I
  .limit locals 2
  .limit stack 3
  aload_1
  ldc "pick up"
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
  ldc "take"
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
  ldc "get "
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
  aload_0
  getfield CoinRoomAction/taken Z
  ifeq else_13
  aload_0
  getfield RoomAction/O Ljoos/lib/JoosIO;
  ldc "You have already picked up the coin."
  invokevirtual joos/lib/JoosIO/print(Ljava/lang/String;)V
  iconst_0
  ireturn
  goto stop_1
  else_13:
  aload_0
  getfield RoomAction/O Ljoos/lib/JoosIO;
  ldc "You picked up a gold coin! Your coin count: "
  invokevirtual joos/lib/JoosIO/print(Ljava/lang/String;)V
  iconst_1
  aload_0
  swap
  putfield CoinRoomAction/taken Z
  iconst_5
  ireturn
  goto stop_1
  else_0:
  aload_1
  ldc "examin"
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
  ldc "look"
  iconst_0
  invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
  iconst_0
  if_icmpge true_21
  iconst_0
  goto true_18
  true_21:
  iconst_1
  true_18:
  dup
  ifne true_17
  pop
  aload_1
  ldc "inspect"
  iconst_0
  invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
  iconst_0
  if_icmpge true_23
  iconst_0
  goto true_17
  true_23:
  iconst_1
  true_17:
  ifeq else_15
  aload_0
  getfield RoomAction/O Ljoos/lib/JoosIO;
  ldc "It's a coin!"
  invokevirtual joos/lib/JoosIO/println(Ljava/lang/String;)V
  iconst_0
  ireturn
  goto stop_1
  else_15:
  aload_1
  ldc "drink"
  iconst_0
  invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
  iconst_0
  if_icmplt else_25
  aload_0
  getfield RoomAction/O Ljoos/lib/JoosIO;
  ldc "You feel flesh being torn from your body. "
  invokevirtual joos/lib/JoosIO/println(Ljava/lang/String;)V
  iconst_1
  ireturn
  goto stop_1
  else_25:
  aload_0
  aload_1
  invokevirtual RoomAction/performBaseAction(Ljava/lang/String;)I
  ireturn
  stop_1:
  nop
.end method

