.class public HuntRoomAction

.super RoomAction

.field protected taken Z
.field protected target Ljava/lang/String;

.method public <init>()V
  .limit locals 2
  .limit stack 2
  aload_0
  invokenonvirtual RoomAction/<init>()V
  aload_0
  iconst_4
  invokevirtual RoomAction/rand(I)I
  dup
  istore_1
  pop
  iload_1
  ifeq true_2
  iconst_0
  goto stop_3
  true_2:
  iconst_1
  stop_3:
  ifeq else_0
  ldc "fierce ogre"
  aload_0
  swap
  putfield HuntRoomAction/target Ljava/lang/String;
  goto stop_1
  else_0:
  iload_1
  iconst_1
  if_icmpeq true_6
  iconst_0
  goto stop_7
  true_6:
  iconst_1
  stop_7:
  ifeq else_4
  ldc "rabbit"
  aload_0
  swap
  putfield HuntRoomAction/target Ljava/lang/String;
  goto stop_1
  else_4:
  iload_1
  iconst_2
  if_icmpeq true_10
  iconst_0
  goto stop_11
  true_10:
  iconst_1
  stop_11:
  ifeq else_8
  ldc "dark demon"
  aload_0
  swap
  putfield HuntRoomAction/target Ljava/lang/String;
  goto stop_1
  else_8:
  iload_1
  iconst_3
  if_icmpeq true_14
  iconst_0
  goto stop_15
  true_14:
  iconst_1
  stop_15:
  ifeq else_12
  ldc "puppy"
  aload_0
  swap
  putfield HuntRoomAction/target Ljava/lang/String;
  goto stop_1
  else_12:
  ldc "wtf"
  aload_0
  swap
  putfield HuntRoomAction/target Ljava/lang/String;
  stop_1:
  iconst_0
  aload_0
  swap
  putfield HuntRoomAction/taken Z
  return
.end method

.method public describe()V
  .limit locals 1
  .limit stack 4
  aload_0
  getfield HuntRoomAction/taken Z
  ifeq true_2
  iconst_0
  goto stop_3
  true_2:
  iconst_1
  stop_3:
  ifeq else_0
  aload_0
  getfield RoomAction/O Ljoos/lib/JoosIO;
  ldc "A wild "
  dup
  ifnonnull stop_7
  pop
  ldc "null"
  stop_7:
  aload_0
  getfield HuntRoomAction/target Ljava/lang/String;
  dup
  ifnonnull stop_9
  pop
  ldc "null"
  stop_9:
  invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;
  dup
  ifnonnull stop_5
  pop
  ldc "null"
  stop_5:
  ldc " appears!"
  dup
  ifnonnull stop_11
  pop
  ldc "null"
  stop_11:
  invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;
  invokevirtual joos/lib/JoosIO/println(Ljava/lang/String;)V
  return
  else_0:
  aload_0
  getfield RoomAction/O Ljoos/lib/JoosIO;
  ldc "The carcass of a "
  dup
  ifnonnull stop_15
  pop
  ldc "null"
  stop_15:
  aload_0
  getfield HuntRoomAction/target Ljava/lang/String;
  dup
  ifnonnull stop_17
  pop
  ldc "null"
  stop_17:
  invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;
  dup
  ifnonnull stop_13
  pop
  ldc "null"
  stop_13:
  ldc " lies before you."
  dup
  ifnonnull stop_19
  pop
  ldc "null"
  stop_19:
  invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;
  invokevirtual joos/lib/JoosIO/println(Ljava/lang/String;)V
  return
.end method

.method public performAction(Ljava/lang/String;)I
  .limit locals 2
  .limit stack 4
  aload_1
  ldc "strike"
  iconst_0
  invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
  iconst_0
  if_icmpge true_15
  iconst_0
  goto stop_16
  true_15:
  iconst_1
  stop_16:
  dup
  ifne true_14
  pop
  aload_1
  ldc "attack"
  iconst_0
  invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
  iconst_0
  if_icmpge true_17
  iconst_0
  goto true_14
  true_17:
  iconst_1
  true_14:
  dup
  ifne true_13
  pop
  aload_1
  ldc "hunt"
  iconst_0
  invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
  iconst_0
  if_icmpge true_19
  iconst_0
  goto true_13
  true_19:
  iconst_1
  true_13:
  dup
  ifne true_12
  pop
  aload_1
  ldc "interact"
  iconst_0
  invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
  iconst_0
  if_icmpge true_21
  iconst_0
  goto true_12
  true_21:
  iconst_1
  true_12:
  dup
  ifne true_11
  pop
  aload_1
  ldc "shoot"
  iconst_0
  invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
  iconst_0
  if_icmpge true_23
  iconst_0
  goto true_11
  true_23:
  iconst_1
  true_11:
  dup
  ifne true_10
  pop
  aload_1
  ldc "hit"
  iconst_0
  invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
  iconst_0
  if_icmpge true_25
  iconst_0
  goto true_10
  true_25:
  iconst_1
  true_10:
  dup
  ifne true_9
  pop
  aload_1
  ldc "ram"
  iconst_0
  invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
  iconst_0
  if_icmpge true_27
  iconst_0
  goto true_9
  true_27:
  iconst_1
  true_9:
  dup
  ifne true_8
  pop
  aload_1
  ldc "charge"
  iconst_0
  invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
  iconst_0
  if_icmpge true_29
  iconst_0
  goto true_8
  true_29:
  iconst_1
  true_8:
  dup
  ifne true_7
  pop
  aload_1
  ldc "punch"
  iconst_0
  invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
  iconst_0
  if_icmpge true_31
  iconst_0
  goto true_7
  true_31:
  iconst_1
  true_7:
  dup
  ifne true_6
  pop
  aload_1
  ldc "fight"
  iconst_0
  invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
  iconst_0
  if_icmpge true_33
  iconst_0
  goto true_6
  true_33:
  iconst_1
  true_6:
  dup
  ifne true_5
  pop
  aload_1
  ldc "kick"
  iconst_0
  invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
  iconst_0
  if_icmpge true_35
  iconst_0
  goto true_5
  true_35:
  iconst_1
  true_5:
  dup
  ifne true_4
  pop
  aload_1
  ldc "grab"
  iconst_0
  invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
  iconst_0
  if_icmpge true_37
  iconst_0
  goto true_4
  true_37:
  iconst_1
  true_4:
  dup
  ifne true_3
  pop
  aload_1
  ldc "swing"
  iconst_0
  invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
  iconst_0
  if_icmpge true_39
  iconst_0
  goto true_3
  true_39:
  iconst_1
  true_3:
  dup
  ifne true_2
  pop
  aload_1
  ldc "hurt"
  iconst_0
  invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
  iconst_0
  if_icmpge true_41
  iconst_0
  goto true_2
  true_41:
  iconst_1
  true_2:
  ifeq else_0
  aload_0
  getfield HuntRoomAction/taken Z
  ifeq else_43
  aload_0
  getfield RoomAction/O Ljoos/lib/JoosIO;
  ldc "The "
  dup
  ifnonnull stop_48
  pop
  ldc "null"
  stop_48:
  aload_0
  getfield HuntRoomAction/target Ljava/lang/String;
  dup
  ifnonnull stop_50
  pop
  ldc "null"
  stop_50:
  invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;
  dup
  ifnonnull stop_46
  pop
  ldc "null"
  stop_46:
  ldc " is already dead."
  dup
  ifnonnull stop_52
  pop
  ldc "null"
  stop_52:
  invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;
  invokevirtual joos/lib/JoosIO/println(Ljava/lang/String;)V
  iconst_0
  ireturn
  goto stop_1
  else_43:
  aload_0
  ldc 100
  invokevirtual RoomAction/rand(I)I
  ldc 60
  if_icmple else_53
  aload_0
  getfield RoomAction/O Ljoos/lib/JoosIO;
  ldc "Your attack succeeded!"
  invokevirtual joos/lib/JoosIO/println(Ljava/lang/String;)V
  aload_0
  getfield RoomAction/O Ljoos/lib/JoosIO;
  ldc "You rip out the heart of your prey and takes a bite."
  invokevirtual joos/lib/JoosIO/println(Ljava/lang/String;)V
  aload_0
  getfield HuntRoomAction/target Ljava/lang/String;
  ldc "puppy"
  invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
  ifeq else_57
  aload_0
  getfield RoomAction/O Ljoos/lib/JoosIO;
  ldc "You monster!"
  invokevirtual joos/lib/JoosIO/println(Ljava/lang/String;)V
  goto stop_58
  else_57:
  aload_0
  getfield RoomAction/O Ljoos/lib/JoosIO;
  ldc "You feel energized."
  invokevirtual joos/lib/JoosIO/println(Ljava/lang/String;)V
  stop_58:
  iconst_1
  aload_0
  swap
  putfield HuntRoomAction/taken Z
  ldc 8
  ireturn
  goto stop_1
  else_53:
  aload_0
  ldc 100
  invokevirtual RoomAction/rand(I)I
  ldc 80
  if_icmple else_59
  aload_0
  getfield RoomAction/O Ljoos/lib/JoosIO;
  ldc "Your attack failed. But you managed to dodge the "
  dup
  ifnonnull stop_66
  pop
  ldc "null"
  stop_66:
  aload_0
  getfield HuntRoomAction/target Ljava/lang/String;
  dup
  ifnonnull stop_68
  pop
  ldc "null"
  stop_68:
  invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;
  dup
  ifnonnull stop_64
  pop
  ldc "null"
  stop_64:
  ldc "'s attack and avoid taking damage."
  dup
  ifnonnull stop_70
  pop
  ldc "null"
  stop_70:
  invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;
  invokevirtual joos/lib/JoosIO/println(Ljava/lang/String;)V
  iconst_0
  ireturn
  goto stop_1
  else_59:
  aload_0
  getfield RoomAction/O Ljoos/lib/JoosIO;
  ldc "Your attack failed. The counter attack from the "
  dup
  ifnonnull stop_74
  pop
  ldc "null"
  stop_74:
  aload_0
  getfield HuntRoomAction/target Ljava/lang/String;
  dup
  ifnonnull stop_76
  pop
  ldc "null"
  stop_76:
  invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;
  dup
  ifnonnull stop_72
  pop
  ldc "null"
  stop_72:
  ldc " left you wounded."
  dup
  ifnonnull stop_78
  pop
  ldc "null"
  stop_78:
  invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;
  invokevirtual joos/lib/JoosIO/println(Ljava/lang/String;)V
  ldc 10
  ireturn
  goto stop_1
  else_0:
  aload_1
  ldc "run"
  iconst_0
  invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
  iconst_0
  if_icmpge true_83
  iconst_0
  goto stop_84
  true_83:
  iconst_1
  stop_84:
  dup
  ifne true_82
  pop
  aload_1
  ldc "escape"
  iconst_0
  invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
  iconst_0
  if_icmpge true_85
  iconst_0
  goto true_82
  true_85:
  iconst_1
  true_82:
  dup
  ifne true_81
  pop
  aload_1
  ldc "leave"
  iconst_0
  invokevirtual java/lang/String/indexOf(Ljava/lang/String;I)I
  iconst_0
  if_icmpge true_87
  iconst_0
  goto true_81
  true_87:
  iconst_1
  true_81:
  ifeq else_79
  aload_0
  ldc 100
  invokevirtual RoomAction/rand(I)I
  ldc 90
  if_icmpgt true_91
  iconst_0
  goto stop_92
  true_91:
  iconst_1
  stop_92:
  dup
  ifeq false_90
  pop
  aload_0
  getfield HuntRoomAction/taken Z
  ifeq true_93
  iconst_0
  goto false_90
  true_93:
  iconst_1
  false_90:
  ifeq stop_89
  aload_0
  getfield RoomAction/O Ljoos/lib/JoosIO;
  ldc "The "
  dup
  ifnonnull stop_98
  pop
  ldc "null"
  stop_98:
  aload_0
  getfield HuntRoomAction/target Ljava/lang/String;
  dup
  ifnonnull stop_100
  pop
  ldc "null"
  stop_100:
  invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;
  dup
  ifnonnull stop_96
  pop
  ldc "null"
  stop_96:
  ldc " was startled by your indecision. It ran away."
  dup
  ifnonnull stop_102
  pop
  ldc "null"
  stop_102:
  invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;
  invokevirtual joos/lib/JoosIO/println(Ljava/lang/String;)V
  iconst_1
  aload_0
  swap
  putfield HuntRoomAction/taken Z
  stop_89:
  aload_0
  getfield RoomAction/O Ljoos/lib/JoosIO;
  ldc "Which direction?"
  invokevirtual joos/lib/JoosIO/println(Ljava/lang/String;)V
  iconst_0
  ireturn
  goto stop_1
  else_79:
  aload_0
  aload_1
  invokevirtual RoomAction/performBaseAction(Ljava/lang/String;)I
  ireturn
  stop_1:
  nop
.end method

