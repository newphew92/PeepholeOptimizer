.class public Main

.super java/lang/Object

.field protected generator LComplementsGenerator;
.field protected calc LAmazingCalculator;
.field protected r Ljoos/lib/JoosRandom;

.method public <init>()V
  .limit locals 1
  .limit stack 1
  aload_0
  invokenonvirtual java/lang/Object/<init>()V
  return
.end method

.method public static main([Ljava/lang/String;)V
  .limit locals 19
  .limit stack 6
  new joos/lib/JoosRandom
  dup
  iconst_1
  invokenonvirtual joos/lib/JoosRandom/<init>(I)V
  astore 15
  new ComplementsGenerator
  dup
  invokenonvirtual ComplementsGenerator/<init>()V
  astore 16
  new AmazingCalculator
  dup
  invokenonvirtual AmazingCalculator/<init>()V
  astore 17
  new joos/lib/JoosIO
  dup
  invokenonvirtual joos/lib/JoosIO/<init>()V
  astore 11
  aload 11
  ldc "Please enter your input.\n"
  invokevirtual joos/lib/JoosIO/println(Ljava/lang/String;)V
  aload 11
  invokevirtual joos/lib/JoosIO/readLine()Ljava/lang/String;
  astore 12
  new java/util/StringTokenizer
  dup
  aload 12
  invokenonvirtual java/util/StringTokenizer/<init>(Ljava/lang/String;)V
  astore 13
  aload 13
  ldc ","
  invokevirtual java/util/StringTokenizer/nextToken(Ljava/lang/String;)Ljava/lang/String;
  astore 14
  aload 14
  ldc "random"
  invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
  ifeq true_2
  iconst_0
  goto stop_3
  true_2:
  iconst_1
  stop_3:
  ifeq else_0
  aload 14
  astore 4
  aload 13
  ldc ","
  invokevirtual java/util/StringTokenizer/nextToken(Ljava/lang/String;)Ljava/lang/String;
  astore 5
  aload 13
  ldc ","
  invokevirtual java/util/StringTokenizer/nextToken(Ljava/lang/String;)Ljava/lang/String;
  astore 6
  aload 13
  ldc ","
  invokevirtual java/util/StringTokenizer/nextToken(Ljava/lang/String;)Ljava/lang/String;
  astore 18
  goto stop_1
  else_0:
  aload 16
  invokevirtual ComplementsGenerator/generateAdjective()Ljava/lang/String;
  astore 4
  aload 16
  invokevirtual ComplementsGenerator/generateNoun()Ljava/lang/String;
  astore 5
  aload 16
  invokevirtual ComplementsGenerator/generateVerb()Ljava/lang/String;
  astore 6
  aload 13
  ldc ","
  invokevirtual java/util/StringTokenizer/nextToken(Ljava/lang/String;)Ljava/lang/String;
  astore 18
  stop_1:
  new java/lang/Integer
  dup
  aload 18
  invokenonvirtual java/lang/Integer/<init>(Ljava/lang/String;)V
  invokevirtual java/lang/Integer/intValue()I
  dup
  istore 9
  pop
  aload 16
  aload 4
  aload 6
  aload 5
  invokevirtual ComplementsGenerator/generateComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  astore 7
  iconst_2
  dup
  istore_1
  pop
  aload 15
  invokevirtual joos/lib/JoosRandom/nextInt()I
  iload_1
  irem
  dup
  istore 10
  pop
  iload 10
  ifeq true_6
  iconst_0
  goto stop_7
  true_6:
  iconst_1
  stop_7:
  ifeq else_4
  new GirlFriend
  dup
  invokenonvirtual GirlFriend/<init>()V
  astore_3
  ldc "girl-friend"
  astore_2
  goto stop_5
  else_4:
  new FemaleBoss
  dup
  invokenonvirtual FemaleBoss/<init>()V
  astore_3
  ldc "boss"
  astore_2
  stop_5:
  aload_3
  aload 16
  invokevirtual ComplementsGenerator/getComplementNumber()I
  invokevirtual Woman/setComplementNumber(I)V
  aload_3
  aload 7
  aload 4
  aload 5
  aload 6
  invokevirtual Woman/react(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  astore 8
  aload 11
  ldc "You have just told your "
  dup
  ifnonnull stop_27
  pop
  ldc "null"
  stop_27:
  aload_2
  dup
  ifnonnull stop_29
  pop
  ldc "null"
  stop_29:
  invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;
  dup
  ifnonnull stop_25
  pop
  ldc "null"
  stop_25:
  ldc ":\n\n"
  dup
  ifnonnull stop_31
  pop
  ldc "null"
  stop_31:
  invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;
  dup
  ifnonnull stop_23
  pop
  ldc "null"
  stop_23:
  aload 7
  dup
  ifnonnull stop_33
  pop
  ldc "null"
  stop_33:
  invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;
  dup
  ifnonnull stop_21
  pop
  ldc "null"
  stop_21:
  ldc "\n\nher response is: "
  dup
  ifnonnull stop_35
  pop
  ldc "null"
  stop_35:
  invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;
  dup
  ifnonnull stop_19
  pop
  ldc "null"
  stop_19:
  aload 8
  dup
  ifnonnull stop_37
  pop
  ldc "null"
  stop_37:
  invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;
  dup
  ifnonnull stop_17
  pop
  ldc "null"
  stop_17:
  ldc "\n\n"
  dup
  ifnonnull stop_39
  pop
  ldc "null"
  stop_39:
  invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;
  dup
  ifnonnull stop_15
  pop
  ldc "null"
  stop_15:
  ldc "(also, the factorial of "
  dup
  ifnonnull stop_41
  pop
  ldc "null"
  stop_41:
  invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;
  dup
  ifnonnull stop_13
  pop
  ldc "null"
  stop_13:
  ldc "the number you have entered is "
  dup
  ifnonnull stop_43
  pop
  ldc "null"
  stop_43:
  invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;
  dup
  ifnonnull stop_11
  pop
  ldc "null"
  stop_11:
  new java/lang/Integer
  dup
  aload 17
  iload 9
  invokevirtual AmazingCalculator/factorial(I)I
  invokenonvirtual java/lang/Integer/<init>(I)V
  invokevirtual java/lang/Integer/toString()Ljava/lang/String;
  invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;
  dup
  ifnonnull stop_9
  pop
  ldc "null"
  stop_9:
  ldc ")\n"
  dup
  ifnonnull stop_47
  pop
  ldc "null"
  stop_47:
  invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;
  invokevirtual joos/lib/JoosIO/println(Ljava/lang/String;)V
  return
.end method

