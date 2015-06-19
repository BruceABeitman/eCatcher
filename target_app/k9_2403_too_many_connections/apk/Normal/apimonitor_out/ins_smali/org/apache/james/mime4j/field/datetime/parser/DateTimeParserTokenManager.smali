.class public Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;
.super Ljava/lang/Object;
.source "DateTimeParserTokenManager.java"
.implements Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserConstants;
.field static commentNest:I
.field static final jjbitVec0:[J
.field public static final jjnewLexState:[I
.field static final jjnextStates:[I
.field public static final jjstrLiteralImages:[Ljava/lang/String;
.field static final jjtoMore:[J
.field static final jjtoSkip:[J
.field static final jjtoSpecial:[J
.field static final jjtoToken:[J
.field public static final lexStateNames:[Ljava/lang/String;
.field protected curChar:C
.field  curLexState:I
.field public debugStream:Ljava/io/PrintStream;
.field  defaultLexState:I
.field  image:Ljava/lang/StringBuffer;
.field protected input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
.field  jjimageLen:I
.field  jjmatchedKind:I
.field  jjmatchedPos:I
.field  jjnewStateCnt:I
.field  jjround:I
.field private final jjrounds:[I
.field private final jjstateSet:[I
.field  lengthOfMatch:I
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x3
const/4 v6, 0x2
const/4 v5, 0x1
const/4 v4, 0x0
const/4 v3, 0x0
const/4 v0, 0x4
new-array v0, v0, [J
fill-array-data v0, :array_15a
sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J
new-array v0, v4, [I
sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnextStates:[I
const/16 v0, 0x31
new-array v0, v0, [Ljava/lang/String;
const-string v1, ""
aput-object v1, v0, v4
const-string v1, "\r"
aput-object v1, v0, v5
const-string v1, "\n"
aput-object v1, v0, v6
const-string v1, ","
aput-object v1, v0, v7
const/4 v1, 0x4
const-string v2, "Mon"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "Tue"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "Wed"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "Thu"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "Fri"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string v2, "Sat"
aput-object v2, v0, v1
const/16 v1, 0xa
const-string v2, "Sun"
aput-object v2, v0, v1
const/16 v1, 0xb
const-string v2, "Jan"
aput-object v2, v0, v1
const/16 v1, 0xc
const-string v2, "Feb"
aput-object v2, v0, v1
const/16 v1, 0xd
const-string v2, "Mar"
aput-object v2, v0, v1
const/16 v1, 0xe
const-string v2, "Apr"
aput-object v2, v0, v1
const/16 v1, 0xf
const-string v2, "May"
aput-object v2, v0, v1
const/16 v1, 0x10
const-string v2, "Jun"
aput-object v2, v0, v1
const/16 v1, 0x11
const-string v2, "Jul"
aput-object v2, v0, v1
const/16 v1, 0x12
const-string v2, "Aug"
aput-object v2, v0, v1
const/16 v1, 0x13
const-string v2, "Sep"
aput-object v2, v0, v1
const/16 v1, 0x14
const-string v2, "Oct"
aput-object v2, v0, v1
const/16 v1, 0x15
const-string v2, "Nov"
aput-object v2, v0, v1
const/16 v1, 0x16
const-string v2, "Dec"
aput-object v2, v0, v1
const/16 v1, 0x17
const-string v2, ":"
aput-object v2, v0, v1
const/16 v1, 0x18
aput-object v3, v0, v1
const/16 v1, 0x19
const-string v2, "UT"
aput-object v2, v0, v1
const/16 v1, 0x1a
const-string v2, "GMT"
aput-object v2, v0, v1
const/16 v1, 0x1b
const-string v2, "EST"
aput-object v2, v0, v1
const/16 v1, 0x1c
const-string v2, "EDT"
aput-object v2, v0, v1
const/16 v1, 0x1d
const-string v2, "CST"
aput-object v2, v0, v1
const/16 v1, 0x1e
const-string v2, "CDT"
aput-object v2, v0, v1
const/16 v1, 0x1f
const-string v2, "MST"
aput-object v2, v0, v1
const/16 v1, 0x20
const-string v2, "MDT"
aput-object v2, v0, v1
const/16 v1, 0x21
const-string v2, "PST"
aput-object v2, v0, v1
const/16 v1, 0x22
const-string v2, "PDT"
aput-object v2, v0, v1
const/16 v1, 0x23
aput-object v3, v0, v1
const/16 v1, 0x24
aput-object v3, v0, v1
const/16 v1, 0x25
aput-object v3, v0, v1
const/16 v1, 0x26
aput-object v3, v0, v1
const/16 v1, 0x27
aput-object v3, v0, v1
const/16 v1, 0x28
aput-object v3, v0, v1
const/16 v1, 0x29
aput-object v3, v0, v1
const/16 v1, 0x2a
aput-object v3, v0, v1
const/16 v1, 0x2b
aput-object v3, v0, v1
const/16 v1, 0x2c
aput-object v3, v0, v1
const/16 v1, 0x2d
aput-object v3, v0, v1
const/16 v1, 0x2e
aput-object v3, v0, v1
const/16 v1, 0x2f
aput-object v3, v0, v1
const/16 v1, 0x30
aput-object v3, v0, v1
sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;
new-array v0, v7, [Ljava/lang/String;
const-string v1, "DEFAULT"
aput-object v1, v0, v4
const-string v1, "INCOMMENT"
aput-object v1, v0, v5
const-string v1, "NESTED_COMMENT"
aput-object v1, v0, v6
sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->lexStateNames:[Ljava/lang/String;
const/16 v0, 0x31
new-array v0, v0, [I
fill-array-data v0, :array_16e
sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I
new-array v0, v5, [J
const-wide v1, 0x400fffffffffL
aput-wide v1, v0, v4
sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoToken:[J
new-array v0, v5, [J
const-wide v1, 0x5000000000L
aput-wide v1, v0, v4
sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoSkip:[J
new-array v0, v5, [J
const-wide v1, 0x1000000000L
aput-wide v1, v0, v4
sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoSpecial:[J
new-array v0, v5, [J
const-wide v1, 0x3fa000000000L
aput-wide v1, v0, v4
sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoMore:[J
return-void
nop
:array_15a
.array-data 0x8
0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
.end array-data
:array_16e
.array-data 0x4
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0x1t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0x2t 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
.end array-data
.end method
.method public constructor <init>(Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->debugStream:Ljava/io/PrintStream;
const/4 v0, 0x4
new-array v0, v0, [I
iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjrounds:[I
const/16 v0, 0x8
new-array v0, v0, [I
iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I
iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I
iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->defaultLexState:I
iput-object p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
return-void
.end method
.method public constructor <init>(Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;I)V
.registers 3
invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V
invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->SwitchTo(I)V
return-void
.end method
.method private final ReInitRounds()V
.registers 5
const v2, -0x7fffffff
iput v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I
const/4 v0, 0x4
move v1, v0
:goto_7
add-int/lit8 v0, v1, -0x1
if-lez v1, :cond_13
iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjrounds:[I
const/high16 v3, -0x8000
aput v3, v2, v0
move v1, v0
goto :goto_7
:cond_13
return-void
.end method
.method private final jjAddStates(II)V
.registers 7
:goto_0
iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I
iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I
sget-object v3, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnextStates:[I
aget v3, v3, p1
aput v3, v1, v2
add-int/lit8 v0, p1, 0x1
if-ne p1, p2, :cond_13
return-void
:cond_13
move p1, v0
goto :goto_0
.end method
.method private final jjCheckNAdd(I)V
.registers 5
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjrounds:[I
aget v0, v0, p1
iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I
if-eq v0, v1, :cond_18
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I
iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I
aput p1, v0, v1
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjrounds:[I
iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I
aput v1, v0, p1
:cond_18
return-void
.end method
.method private final jjCheckNAddStates(I)V
.registers 4
sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnextStates:[I
aget v0, v0, p1
invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V
sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnextStates:[I
add-int/lit8 v1, p1, 0x1
aget v0, v0, v1
invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V
return-void
.end method
.method private final jjCheckNAddStates(II)V
.registers 5
:goto_0
sget-object v1, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnextStates:[I
aget v1, v1, p1
invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V
add-int/lit8 v0, p1, 0x1
if-ne p1, p2, :cond_c
return-void
:cond_c
move p1, v0
goto :goto_0
.end method
.method private final jjCheckNAddTwoStates(II)V
.registers 3
invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V
invoke-direct {p0, p2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V
return-void
.end method
.method private final jjMoveNfa_0(II)I
.registers 16
const/4 v8, 0x0
const/4 v9, 0x4
iput v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I
const/4 v1, 0x1
iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I
const/4 v10, 0x0
aput p1, v9, v10
const v3, 0x7fffffff
:goto_d
iget v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I
add-int/lit8 v9, v9, 0x1
iput v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I
const v10, 0x7fffffff
if-ne v9, v10, :cond_1b
invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInitRounds()V
:cond_1b
iget-char v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
const/16 v10, 0x40
if-ge v9, v10, :cond_ab
const-wide/16 v9, 0x1
iget-char v11, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
shl-long v4, v9, v11
:cond_27
iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I
add-int/lit8 v1, v1, -0x1
aget v9, v9, v1
packed-switch v9, :pswitch_data_fc
:goto_30
:cond_30
:pswitch_30
if-ne v1, v8, :cond_27
:goto_32
const v9, 0x7fffffff
if-eq v3, v9, :cond_3e
iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I
iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I
const v3, 0x7fffffff
:cond_3e
add-int/lit8 p2, p2, 0x1
iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I
const/4 v9, 0x4
iput v8, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I
sub-int v8, v9, v8
if-ne v1, v8, :cond_ed
:goto_49
return p2
:pswitch_4a
const-wide/high16 v9, 0x3ff
and-long/2addr v9, v4
const-wide/16 v11, 0x0
cmp-long v9, v9, v11
if-eqz v9, :cond_5e
const/16 v9, 0x2e
if-le v3, v9, :cond_59
const/16 v3, 0x2e
:cond_59
const/4 v9, 0x3
invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V
goto :goto_30
:cond_5e
const-wide v9, 0x100000200L
and-long/2addr v9, v4
const-wide/16 v11, 0x0
cmp-long v9, v9, v11
if-eqz v9, :cond_75
const/16 v9, 0x24
if-le v3, v9, :cond_70
const/16 v3, 0x24
:cond_70
const/4 v9, 0x2
invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V
goto :goto_30
:cond_75
const-wide v9, 0x280000000000L
and-long/2addr v9, v4
const-wide/16 v11, 0x0
cmp-long v9, v9, v11
if-eqz v9, :cond_30
const/16 v9, 0x18
if-le v3, v9, :cond_30
const/16 v3, 0x18
goto :goto_30
:pswitch_88
const-wide v9, 0x100000200L
and-long/2addr v9, v4
const-wide/16 v11, 0x0
cmp-long v9, v9, v11
if-eqz v9, :cond_30
const/16 v3, 0x24
const/4 v9, 0x2
invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V
goto :goto_30
:pswitch_9b
const-wide/high16 v9, 0x3ff
and-long/2addr v9, v4
const-wide/16 v11, 0x0
cmp-long v9, v9, v11
if-eqz v9, :cond_30
const/16 v3, 0x2e
const/4 v9, 0x3
invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V
goto :goto_30
:cond_ab
iget-char v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
const/16 v10, 0x80
if-ge v9, v10, :cond_d5
const-wide/16 v9, 0x1
iget-char v11, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
and-int/lit8 v11, v11, 0x3f
shl-long v4, v9, v11
:cond_b9
iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I
add-int/lit8 v1, v1, -0x1
aget v9, v9, v1
packed-switch v9, :pswitch_data_108
:goto_c2
:cond_c2
if-ne v1, v8, :cond_b9
goto/16 :goto_32
:pswitch_c6
const-wide v9, 0x7fffbfe07fffbfeL
and-long/2addr v9, v4
const-wide/16 v11, 0x0
cmp-long v9, v9, v11
if-eqz v9, :cond_c2
const/16 v3, 0x23
goto :goto_c2
:cond_d5
iget-char v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
and-int/lit16 v9, v9, 0xff
shr-int/lit8 v2, v9, 0x6
const-wide/16 v9, 0x1
iget-char v11, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
and-int/lit8 v11, v11, 0x3f
shl-long v6, v9, v11
:cond_e3
iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I
add-int/lit8 v1, v1, -0x1
aget v9, v9, v1
if-ne v1, v8, :cond_e3
goto/16 :goto_32
:cond_ed
:try_start_ed
iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
invoke-virtual {v9}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C
move-result v9
iput-char v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
:try_end_f5
.catch Ljava/io/IOException; {:try_start_ed .. :try_end_f5} :catch_f7
goto/16 :goto_d
:catch_f7
move-exception v9
move-object v0, v9
goto/16 :goto_49
nop
:pswitch_data_fc
.packed-switch 0x0
:pswitch_4a
:pswitch_30
:pswitch_88
:pswitch_9b
.end packed-switch
:pswitch_data_108
.packed-switch 0x0
:pswitch_c6
.end packed-switch
.end method
.method private final jjMoveNfa_1(II)I
.registers 16
const/4 v8, 0x0
const/4 v9, 0x3
iput v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I
const/4 v1, 0x1
iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I
const/4 v10, 0x0
aput p1, v9, v10
const v3, 0x7fffffff
:goto_d
iget v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I
add-int/lit8 v9, v9, 0x1
iput v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I
const v10, 0x7fffffff
if-ne v9, v10, :cond_1b
invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInitRounds()V
:cond_1b
iget-char v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
const/16 v10, 0x40
if-ge v9, v10, :cond_58
const-wide/16 v9, 0x1
iget-char v11, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
shl-long v4, v9, v11
:cond_27
iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I
add-int/lit8 v1, v1, -0x1
aget v9, v9, v1
packed-switch v9, :pswitch_data_e4
:goto_30
:cond_30
if-ne v1, v8, :cond_27
:goto_32
const v9, 0x7fffffff
if-eq v3, v9, :cond_3e
iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I
iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I
const v3, 0x7fffffff
:cond_3e
add-int/lit8 p2, p2, 0x1
iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I
const/4 v9, 0x3
iput v8, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I
sub-int v8, v9, v8
if-ne v1, v8, :cond_d6
:goto_49
return p2
:pswitch_4a
const/16 v9, 0x29
if-le v3, v9, :cond_30
const/16 v3, 0x29
goto :goto_30
:pswitch_51
const/16 v9, 0x27
if-le v3, v9, :cond_30
const/16 v3, 0x27
goto :goto_30
:cond_58
iget-char v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
const/16 v10, 0x80
if-ge v9, v10, :cond_98
const-wide/16 v9, 0x1
iget-char v11, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
and-int/lit8 v11, v11, 0x3f
shl-long v4, v9, v11
:cond_66
iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I
add-int/lit8 v1, v1, -0x1
aget v9, v9, v1
packed-switch v9, :pswitch_data_ec
:goto_6f
:cond_6f
if-ne v1, v8, :cond_66
goto :goto_32
:pswitch_72
const/16 v9, 0x29
if-le v3, v9, :cond_78
const/16 v3, 0x29
:cond_78
iget-char v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
const/16 v10, 0x5c
if-ne v9, v10, :cond_6f
iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I
iget v10, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I
add-int/lit8 v11, v10, 0x1
iput v11, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I
const/4 v11, 0x1
aput v11, v9, v10
goto :goto_6f
:pswitch_8a
const/16 v9, 0x27
if-le v3, v9, :cond_6f
const/16 v3, 0x27
goto :goto_6f
:pswitch_91
const/16 v9, 0x29
if-le v3, v9, :cond_6f
const/16 v3, 0x29
goto :goto_6f
:cond_98
iget-char v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
and-int/lit16 v9, v9, 0xff
shr-int/lit8 v2, v9, 0x6
const-wide/16 v9, 0x1
iget-char v11, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
and-int/lit8 v11, v11, 0x3f
shl-long v6, v9, v11
:cond_a6
iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I
add-int/lit8 v1, v1, -0x1
aget v9, v9, v1
packed-switch v9, :pswitch_data_f6
:cond_af
:goto_af
if-ne v1, v8, :cond_a6
goto :goto_32
:pswitch_b2
sget-object v9, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J
aget-wide v9, v9, v2
and-long/2addr v9, v6
const-wide/16 v11, 0x0
cmp-long v9, v9, v11
if-eqz v9, :cond_af
const/16 v9, 0x29
if-le v3, v9, :cond_af
const/16 v3, 0x29
goto :goto_af
:pswitch_c4
sget-object v9, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J
aget-wide v9, v9, v2
and-long/2addr v9, v6
const-wide/16 v11, 0x0
cmp-long v9, v9, v11
if-eqz v9, :cond_af
const/16 v9, 0x27
if-le v3, v9, :cond_af
const/16 v3, 0x27
goto :goto_af
:cond_d6
:try_start_d6
iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
invoke-virtual {v9}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C
move-result v9
iput-char v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
:try_end_de
.catch Ljava/io/IOException; {:try_start_d6 .. :try_end_de} :catch_e0
goto/16 :goto_d
:catch_e0
move-exception v9
move-object v0, v9
goto/16 :goto_49
:pswitch_data_f6
.packed-switch 0x0
:pswitch_b2
:pswitch_c4
.end packed-switch
:pswitch_data_ec
.packed-switch 0x0
:pswitch_72
:pswitch_8a
:pswitch_91
.end packed-switch
:pswitch_data_e4
.packed-switch 0x0
:pswitch_4a
:pswitch_51
.end packed-switch
.end method
.method private final jjMoveNfa_2(II)I
.registers 16
const/4 v8, 0x0
const/4 v9, 0x3
iput v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I
const/4 v1, 0x1
iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I
const/4 v10, 0x0
aput p1, v9, v10
const v3, 0x7fffffff
:goto_d
iget v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I
add-int/lit8 v9, v9, 0x1
iput v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I
const v10, 0x7fffffff
if-ne v9, v10, :cond_1b
invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInitRounds()V
:cond_1b
iget-char v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
const/16 v10, 0x40
if-ge v9, v10, :cond_58
const-wide/16 v9, 0x1
iget-char v11, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
shl-long v4, v9, v11
:cond_27
iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I
add-int/lit8 v1, v1, -0x1
aget v9, v9, v1
packed-switch v9, :pswitch_data_e4
:goto_30
:cond_30
if-ne v1, v8, :cond_27
:goto_32
const v9, 0x7fffffff
if-eq v3, v9, :cond_3e
iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I
iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I
const v3, 0x7fffffff
:cond_3e
add-int/lit8 p2, p2, 0x1
iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I
const/4 v9, 0x3
iput v8, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I
sub-int v8, v9, v8
if-ne v1, v8, :cond_d6
:goto_49
return p2
:pswitch_4a
const/16 v9, 0x2d
if-le v3, v9, :cond_30
const/16 v3, 0x2d
goto :goto_30
:pswitch_51
const/16 v9, 0x2a
if-le v3, v9, :cond_30
const/16 v3, 0x2a
goto :goto_30
:cond_58
iget-char v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
const/16 v10, 0x80
if-ge v9, v10, :cond_98
const-wide/16 v9, 0x1
iget-char v11, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
and-int/lit8 v11, v11, 0x3f
shl-long v4, v9, v11
:cond_66
iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I
add-int/lit8 v1, v1, -0x1
aget v9, v9, v1
packed-switch v9, :pswitch_data_ec
:goto_6f
:cond_6f
if-ne v1, v8, :cond_66
goto :goto_32
:pswitch_72
const/16 v9, 0x2d
if-le v3, v9, :cond_78
const/16 v3, 0x2d
:cond_78
iget-char v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
const/16 v10, 0x5c
if-ne v9, v10, :cond_6f
iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I
iget v10, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I
add-int/lit8 v11, v10, 0x1
iput v11, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I
const/4 v11, 0x1
aput v11, v9, v10
goto :goto_6f
:pswitch_8a
const/16 v9, 0x2a
if-le v3, v9, :cond_6f
const/16 v3, 0x2a
goto :goto_6f
:pswitch_91
const/16 v9, 0x2d
if-le v3, v9, :cond_6f
const/16 v3, 0x2d
goto :goto_6f
:cond_98
iget-char v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
and-int/lit16 v9, v9, 0xff
shr-int/lit8 v2, v9, 0x6
const-wide/16 v9, 0x1
iget-char v11, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
and-int/lit8 v11, v11, 0x3f
shl-long v6, v9, v11
:cond_a6
iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I
add-int/lit8 v1, v1, -0x1
aget v9, v9, v1
packed-switch v9, :pswitch_data_f6
:cond_af
:goto_af
if-ne v1, v8, :cond_a6
goto :goto_32
:pswitch_b2
sget-object v9, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J
aget-wide v9, v9, v2
and-long/2addr v9, v6
const-wide/16 v11, 0x0
cmp-long v9, v9, v11
if-eqz v9, :cond_af
const/16 v9, 0x2d
if-le v3, v9, :cond_af
const/16 v3, 0x2d
goto :goto_af
:pswitch_c4
sget-object v9, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J
aget-wide v9, v9, v2
and-long/2addr v9, v6
const-wide/16 v11, 0x0
cmp-long v9, v9, v11
if-eqz v9, :cond_af
const/16 v9, 0x2a
if-le v3, v9, :cond_af
const/16 v3, 0x2a
goto :goto_af
:cond_d6
:try_start_d6
iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
invoke-virtual {v9}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C
move-result v9
iput-char v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
:try_end_de
.catch Ljava/io/IOException; {:try_start_d6 .. :try_end_de} :catch_e0
goto/16 :goto_d
:catch_e0
move-exception v9
move-object v0, v9
goto/16 :goto_49
:pswitch_data_f6
.packed-switch 0x0
:pswitch_b2
:pswitch_c4
.end packed-switch
:pswitch_data_ec
.packed-switch 0x0
:pswitch_72
:pswitch_8a
:pswitch_91
.end packed-switch
:pswitch_data_e4
.packed-switch 0x0
:pswitch_4a
:pswitch_51
.end packed-switch
.end method
.method private final jjMoveStringLiteralDfa0_0()I
.registers 3
const/4 v1, 0x0
iget-char v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
sparse-switch v0, :sswitch_data_a8
invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_0(II)I
move-result v0
:goto_a
return v0
:sswitch_b
const/4 v0, 0x2
invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v0
goto :goto_a
:sswitch_11
const/4 v0, 0x1
invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v0
goto :goto_a
:sswitch_17
const/16 v0, 0x25
invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v0
goto :goto_a
:sswitch_1e
const/4 v0, 0x3
invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v0
goto :goto_a
:sswitch_24
const/16 v0, 0x17
invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v0
goto :goto_a
:sswitch_2b
const-wide/32 v0, 0x44000
invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I
move-result v0
goto :goto_a
:sswitch_33
const-wide/32 v0, 0x60000000
invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I
move-result v0
goto :goto_a
:sswitch_3b
const-wide/32 v0, 0x400000
invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I
move-result v0
goto :goto_a
:sswitch_43
const-wide/32 v0, 0x18000000
invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I
move-result v0
goto :goto_a
:sswitch_4b
const-wide/16 v0, 0x1100
invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I
move-result v0
goto :goto_a
:sswitch_52
const-wide/32 v0, 0x4000000
invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I
move-result v0
goto :goto_a
:sswitch_5a
const-wide/32 v0, 0x30800
invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I
move-result v0
goto :goto_a
:sswitch_62
const-wide v0, 0x18000a010L
invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I
move-result v0
goto :goto_a
:sswitch_6c
const-wide/32 v0, 0x200000
invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I
move-result v0
goto :goto_a
:sswitch_74
const-wide/32 v0, 0x100000
invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I
move-result v0
goto :goto_a
:sswitch_7c
const-wide v0, 0x600000000L
invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I
move-result v0
goto :goto_a
:sswitch_86
const-wide/32 v0, 0x80600
invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I
move-result v0
goto/16 :goto_a
:sswitch_8f
const-wide/16 v0, 0xa0
invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I
move-result v0
goto/16 :goto_a
:sswitch_97
const-wide/32 v0, 0x2000000
invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I
move-result v0
goto/16 :goto_a
:sswitch_a0
const-wide/16 v0, 0x40
invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I
move-result v0
goto/16 :goto_a
:sswitch_data_a8
.sparse-switch
0xa -> :sswitch_b
0xd -> :sswitch_11
0x28 -> :sswitch_17
0x2c -> :sswitch_1e
0x3a -> :sswitch_24
0x41 -> :sswitch_2b
0x43 -> :sswitch_33
0x44 -> :sswitch_3b
0x45 -> :sswitch_43
0x46 -> :sswitch_4b
0x47 -> :sswitch_52
0x4a -> :sswitch_5a
0x4d -> :sswitch_62
0x4e -> :sswitch_6c
0x4f -> :sswitch_74
0x50 -> :sswitch_7c
0x53 -> :sswitch_86
0x54 -> :sswitch_8f
0x55 -> :sswitch_97
0x57 -> :sswitch_a0
.end sparse-switch
.end method
.method private final jjMoveStringLiteralDfa0_1()I
.registers 3
const/4 v1, 0x0
iget-char v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
packed-switch v0, :pswitch_data_1a
invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_1(II)I
move-result v0
:goto_a
return v0
:pswitch_b
const/16 v0, 0x28
invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v0
goto :goto_a
:pswitch_12
const/16 v0, 0x26
invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v0
goto :goto_a
nop
:pswitch_data_1a
.packed-switch 0x28
:pswitch_b
:pswitch_12
.end packed-switch
.end method
.method private final jjMoveStringLiteralDfa0_2()I
.registers 3
const/4 v1, 0x0
iget-char v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
packed-switch v0, :pswitch_data_1a
invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_2(II)I
move-result v0
:goto_a
return v0
:pswitch_b
const/16 v0, 0x2b
invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v0
goto :goto_a
:pswitch_12
const/16 v0, 0x2c
invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v0
goto :goto_a
nop
:pswitch_data_1a
.packed-switch 0x28
:pswitch_b
:pswitch_12
.end packed-switch
.end method
.method private final jjMoveStringLiteralDfa1_0(J)I
.registers 10
const/4 v6, 0x1
const/4 v5, 0x0
:try_start_2
iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C
move-result v1
iput-char v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
:try_end_a
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_a} :catch_14
iget-char v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
sparse-switch v1, :sswitch_data_86
:cond_f
invoke-direct {p0, v5, p1, p2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStartNfa_0(IJ)I
move-result v1
:goto_13
return v1
:catch_14
move-exception v1
move-object v0, v1
invoke-direct {p0, v5, p1, p2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I
move v1, v6
goto :goto_13
:sswitch_1b
const-wide v1, 0x550000000L
invoke-direct {p0, p1, p2, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I
move-result v1
goto :goto_13
:sswitch_25
const-wide/32 v1, 0x4000000
invoke-direct {p0, p1, p2, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I
move-result v1
goto :goto_13
:sswitch_2d
const-wide v1, 0x2a8000000L
invoke-direct {p0, p1, p2, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I
move-result v1
goto :goto_13
:sswitch_37
const-wide/32 v1, 0x2000000
and-long/2addr v1, p1
const-wide/16 v3, 0x0
cmp-long v1, v1, v3
if-eqz v1, :cond_f
const/16 v1, 0x19
invoke-direct {p0, v6, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v1
goto :goto_13
:sswitch_48
const-wide/32 v1, 0xaa00
invoke-direct {p0, p1, p2, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I
move-result v1
goto :goto_13
:sswitch_50
const-wide/32 v1, 0x100000
invoke-direct {p0, p1, p2, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I
move-result v1
goto :goto_13
:sswitch_58
const-wide/32 v1, 0x481040
invoke-direct {p0, p1, p2, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I
move-result v1
goto :goto_13
:sswitch_60
const-wide/16 v1, 0x80
invoke-direct {p0, p1, p2, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I
move-result v1
goto :goto_13
:sswitch_67
const-wide/32 v1, 0x200010
invoke-direct {p0, p1, p2, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I
move-result v1
goto :goto_13
:sswitch_6f
const-wide/16 v1, 0x4000
invoke-direct {p0, p1, p2, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I
move-result v1
goto :goto_13
:sswitch_76
const-wide/16 v1, 0x100
invoke-direct {p0, p1, p2, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I
move-result v1
goto :goto_13
:sswitch_7d
const-wide/32 v1, 0x70420
invoke-direct {p0, p1, p2, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I
move-result v1
goto :goto_13
nop
:sswitch_data_86
.sparse-switch
0x44 -> :sswitch_1b
0x4d -> :sswitch_25
0x53 -> :sswitch_2d
0x54 -> :sswitch_37
0x61 -> :sswitch_48
0x63 -> :sswitch_50
0x65 -> :sswitch_58
0x68 -> :sswitch_60
0x6f -> :sswitch_67
0x70 -> :sswitch_6f
0x72 -> :sswitch_76
0x75 -> :sswitch_7d
.end sparse-switch
.end method
.method private final jjMoveStringLiteralDfa2_0(JJ)I
.registers 12
const/4 v6, 0x1
const-wide/16 v4, 0x0
const/4 v3, 0x2
and-long/2addr p3, p1
cmp-long v1, p3, v4
if-nez v1, :cond_f
const/4 v1, 0x0
invoke-direct {p0, v1, p1, p2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStartNfa_0(IJ)I
move-result v1
:goto_e
return v1
:try_start_f
:cond_f
iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C
move-result v1
iput-char v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
:try_end_17
.catch Ljava/io/IOException; {:try_start_f .. :try_end_17} :catch_21
iget-char v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
sparse-switch v1, :sswitch_data_1dc
:cond_1c
invoke-direct {p0, v6, p3, p4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStartNfa_0(IJ)I
move-result v1
goto :goto_e
:catch_21
move-exception v1
move-object v0, v1
invoke-direct {p0, v6, p3, p4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I
move v1, v3
goto :goto_e
:sswitch_28
const-wide/32 v1, 0x4000000
and-long/2addr v1, p3
cmp-long v1, v1, v4
if-eqz v1, :cond_37
const/16 v1, 0x1a
invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v1
goto :goto_e
:cond_37
const-wide/32 v1, 0x8000000
and-long/2addr v1, p3
cmp-long v1, v1, v4
if-eqz v1, :cond_46
const/16 v1, 0x1b
invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v1
goto :goto_e
:cond_46
const-wide/32 v1, 0x10000000
and-long/2addr v1, p3
cmp-long v1, v1, v4
if-eqz v1, :cond_55
const/16 v1, 0x1c
invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v1
goto :goto_e
:cond_55
const-wide/32 v1, 0x20000000
and-long/2addr v1, p3
cmp-long v1, v1, v4
if-eqz v1, :cond_64
const/16 v1, 0x1d
invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v1
goto :goto_e
:cond_64
const-wide/32 v1, 0x40000000
and-long/2addr v1, p3
cmp-long v1, v1, v4
if-eqz v1, :cond_73
const/16 v1, 0x1e
invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v1
goto :goto_e
:cond_73
const-wide v1, 0x80000000L
and-long/2addr v1, p3
cmp-long v1, v1, v4
if-eqz v1, :cond_84
const/16 v1, 0x1f
invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v1
goto :goto_e
:cond_84
const-wide v1, 0x100000000L
and-long/2addr v1, p3
cmp-long v1, v1, v4
if-eqz v1, :cond_96
const/16 v1, 0x20
invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v1
goto/16 :goto_e
:cond_96
const-wide v1, 0x200000000L
and-long/2addr v1, p3
cmp-long v1, v1, v4
if-eqz v1, :cond_a8
const/16 v1, 0x21
invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v1
goto/16 :goto_e
:cond_a8
const-wide v1, 0x400000000L
and-long/2addr v1, p3
cmp-long v1, v1, v4
if-eqz v1, :cond_1c
const/16 v1, 0x22
invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v1
goto/16 :goto_e
:sswitch_ba
const-wide/16 v1, 0x1000
and-long/2addr v1, p3
cmp-long v1, v1, v4
if-eqz v1, :cond_1c
const/16 v1, 0xc
invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v1
goto/16 :goto_e
:sswitch_c9
const-wide/32 v1, 0x400000
and-long/2addr v1, p3
cmp-long v1, v1, v4
if-eqz v1, :cond_1c
const/16 v1, 0x16
invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v1
goto/16 :goto_e
:sswitch_d9
const-wide/16 v1, 0x40
and-long/2addr v1, p3
cmp-long v1, v1, v4
if-eqz v1, :cond_1c
const/4 v1, 0x6
invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v1
goto/16 :goto_e
:sswitch_e7
const-wide/16 v1, 0x20
and-long/2addr v1, p3
cmp-long v1, v1, v4
if-eqz v1, :cond_1c
const/4 v1, 0x5
invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v1
goto/16 :goto_e
:sswitch_f5
const-wide/32 v1, 0x40000
and-long/2addr v1, p3
cmp-long v1, v1, v4
if-eqz v1, :cond_1c
const/16 v1, 0x12
invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v1
goto/16 :goto_e
:sswitch_105
const-wide/16 v1, 0x100
and-long/2addr v1, p3
cmp-long v1, v1, v4
if-eqz v1, :cond_1c
const/16 v1, 0x8
invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v1
goto/16 :goto_e
:sswitch_114
const-wide/32 v1, 0x20000
and-long/2addr v1, p3
cmp-long v1, v1, v4
if-eqz v1, :cond_1c
const/16 v1, 0x11
invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v1
goto/16 :goto_e
:sswitch_124
const-wide/16 v1, 0x10
and-long/2addr v1, p3
cmp-long v1, v1, v4
if-eqz v1, :cond_132
const/4 v1, 0x4
invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v1
goto/16 :goto_e
:cond_132
const-wide/16 v1, 0x400
and-long/2addr v1, p3
cmp-long v1, v1, v4
if-eqz v1, :cond_141
const/16 v1, 0xa
invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v1
goto/16 :goto_e
:cond_141
const-wide/16 v1, 0x800
and-long/2addr v1, p3
cmp-long v1, v1, v4
if-eqz v1, :cond_150
const/16 v1, 0xb
invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v1
goto/16 :goto_e
:cond_150
const-wide/32 v1, 0x10000
and-long/2addr v1, p3
cmp-long v1, v1, v4
if-eqz v1, :cond_1c
const/16 v1, 0x10
invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v1
goto/16 :goto_e
:sswitch_160
const-wide/32 v1, 0x80000
and-long/2addr v1, p3
cmp-long v1, v1, v4
if-eqz v1, :cond_1c
const/16 v1, 0x13
invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v1
goto/16 :goto_e
:sswitch_170
const-wide/16 v1, 0x2000
and-long/2addr v1, p3
cmp-long v1, v1, v4
if-eqz v1, :cond_17f
const/16 v1, 0xd
invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v1
goto/16 :goto_e
:cond_17f
const-wide/16 v1, 0x4000
and-long/2addr v1, p3
cmp-long v1, v1, v4
if-eqz v1, :cond_1c
const/16 v1, 0xe
invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v1
goto/16 :goto_e
:sswitch_18e
const-wide/16 v1, 0x200
and-long/2addr v1, p3
cmp-long v1, v1, v4
if-eqz v1, :cond_19d
const/16 v1, 0x9
invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v1
goto/16 :goto_e
:cond_19d
const-wide/32 v1, 0x100000
and-long/2addr v1, p3
cmp-long v1, v1, v4
if-eqz v1, :cond_1c
const/16 v1, 0x14
invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v1
goto/16 :goto_e
:sswitch_1ad
const-wide/16 v1, 0x80
and-long/2addr v1, p3
cmp-long v1, v1, v4
if-eqz v1, :cond_1c
const/4 v1, 0x7
invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v1
goto/16 :goto_e
:sswitch_1bb
const-wide/32 v1, 0x200000
and-long/2addr v1, p3
cmp-long v1, v1, v4
if-eqz v1, :cond_1c
const/16 v1, 0x15
invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v1
goto/16 :goto_e
:sswitch_1cb
const-wide/32 v1, 0x8000
and-long/2addr v1, p3
cmp-long v1, v1, v4
if-eqz v1, :cond_1c
const/16 v1, 0xf
invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I
move-result v1
goto/16 :goto_e
nop
:sswitch_data_1dc
.sparse-switch
0x54 -> :sswitch_28
0x62 -> :sswitch_ba
0x63 -> :sswitch_c9
0x64 -> :sswitch_d9
0x65 -> :sswitch_e7
0x67 -> :sswitch_f5
0x69 -> :sswitch_105
0x6c -> :sswitch_114
0x6e -> :sswitch_124
0x70 -> :sswitch_160
0x72 -> :sswitch_170
0x74 -> :sswitch_18e
0x75 -> :sswitch_1ad
0x76 -> :sswitch_1bb
0x79 -> :sswitch_1cb
.end sparse-switch
.end method
.method private final jjStartNfaWithStates_0(III)I
.registers 6
iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I
iput p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I
:try_start_4
iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C
move-result v1
iput-char v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
:try_end_c
.catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13
add-int/lit8 v1, p1, 0x1
invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_0(II)I
move-result v1
:goto_12
return v1
:catch_13
move-exception v1
move-object v0, v1
add-int/lit8 v1, p1, 0x1
goto :goto_12
.end method
.method private final jjStartNfaWithStates_1(III)I
.registers 6
iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I
iput p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I
:try_start_4
iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C
move-result v1
iput-char v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
:try_end_c
.catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13
add-int/lit8 v1, p1, 0x1
invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_1(II)I
move-result v1
:goto_12
return v1
:catch_13
move-exception v1
move-object v0, v1
add-int/lit8 v1, p1, 0x1
goto :goto_12
.end method
.method private final jjStartNfaWithStates_2(III)I
.registers 6
iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I
iput p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I
:try_start_4
iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C
move-result v1
iput-char v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
:try_end_c
.catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13
add-int/lit8 v1, p1, 0x1
invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_2(II)I
move-result v1
:goto_12
return v1
:catch_13
move-exception v1
move-object v0, v1
add-int/lit8 v1, p1, 0x1
goto :goto_12
.end method
.method private final jjStartNfa_0(IJ)I
.registers 6
invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I
move-result v0
add-int/lit8 v1, p1, 0x1
invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_0(II)I
move-result v0
return v0
.end method
.method private final jjStartNfa_1(IJ)I
.registers 6
invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I
move-result v0
add-int/lit8 v1, p1, 0x1
invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_1(II)I
move-result v0
return v0
.end method
.method private final jjStartNfa_2(IJ)I
.registers 6
invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopStringLiteralDfa_2(IJ)I
move-result v0
add-int/lit8 v1, p1, 0x1
invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_2(II)I
move-result v0
return v0
.end method
.method private final jjStopAtPos(II)I
.registers 4
iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I
iput p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I
add-int/lit8 v0, p1, 0x1
return v0
.end method
.method private final jjStopStringLiteralDfa_0(IJ)I
.registers 10
const-wide v0, 0x7fe7cf7f0L
const-wide/16 v4, 0x0
const/16 v3, 0x23
const/4 v2, -0x1
packed-switch p1, :pswitch_data_2c
move v0, v2
:goto_e
return v0
:pswitch_f
and-long/2addr v0, p2
cmp-long v0, v0, v4
if-eqz v0, :cond_18
iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I
move v0, v2
goto :goto_e
:cond_18
move v0, v2
goto :goto_e
:pswitch_1a
and-long/2addr v0, p2
cmp-long v0, v0, v4
if-eqz v0, :cond_2a
iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I
if-nez v0, :cond_28
iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I
const/4 v0, 0x0
iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I
:cond_28
move v0, v2
goto :goto_e
:cond_2a
move v0, v2
goto :goto_e
:pswitch_data_2c
.packed-switch 0x0
:pswitch_f
:pswitch_1a
.end packed-switch
.end method
.method private final jjStopStringLiteralDfa_1(IJ)I
.registers 5
const/4 v0, -0x1
return v0
.end method
.method private final jjStopStringLiteralDfa_2(IJ)I
.registers 5
const/4 v0, -0x1
return v0
.end method
.method  MoreLexicalActions()V
.registers 7
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I
iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->lengthOfMatch:I
add-int/2addr v0, v1
iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I
iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I
packed-switch v0, :pswitch_data_ca
:cond_13
:pswitch_13
:goto_13
return-void
:pswitch_14
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;
if-nez v0, :cond_1f
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;
:cond_1f
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;
iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I
invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;
iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;
iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;
invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I
move-result v1
sub-int/2addr v1, v5
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;
goto :goto_13
:pswitch_3b
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;
if-nez v0, :cond_46
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;
:cond_46
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;
iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I
invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;
iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I
sput v4, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I
goto :goto_13
:pswitch_58
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;
if-nez v0, :cond_63
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;
:cond_63
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;
iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I
invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;
iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;
iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;
invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I
move-result v1
sub-int/2addr v1, v5
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;
goto :goto_13
:pswitch_7f
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;
if-nez v0, :cond_8a
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;
:cond_8a
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;
iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I
invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;
iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I
sget v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I
add-int/lit8 v0, v0, 0x1
sput v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I
goto/16 :goto_13
:pswitch_a1
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;
if-nez v0, :cond_ac
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;
:cond_ac
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;
iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I
invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;
iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I
sget v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I
sub-int/2addr v0, v4
sput v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I
sget v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I
if-nez v0, :cond_13
invoke-virtual {p0, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->SwitchTo(I)V
goto/16 :goto_13
nop
:pswitch_data_ca
.packed-switch 0x27
:pswitch_14
:pswitch_3b
:pswitch_13
:pswitch_58
:pswitch_7f
:pswitch_a1
.end packed-switch
.end method
.method public ReInit(Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V
.registers 3
const/4 v0, 0x0
iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I
iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I
iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->defaultLexState:I
iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I
iput-object p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInitRounds()V
return-void
.end method
.method public ReInit(Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;I)V
.registers 3
invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V
invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->SwitchTo(I)V
return-void
.end method
.method public SwitchTo(I)V
.registers 5
const/4 v0, 0x3
if-ge p1, v0, :cond_5
if-gez p1, :cond_25
:cond_5
new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Error: Ignoring invalid lexical state : "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ". State unchanged."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x2
invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V
throw v0
:cond_25
iput p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I
return-void
.end method
.method public getNextToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;
.registers 15
const/4 v13, 0x0
const/4 v8, 0x0
:try_start_2
:goto_2
:cond_2
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->BeginToken()C
move-result v0
iput-char v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
:try_end_a
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_a} :catch_5c
const/4 v0, 0x0
iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;
const/4 v0, 0x0
iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I
:goto_10
iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I
packed-switch v0, :pswitch_data_160
:goto_15
iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I
const v1, 0x7fffffff
if-eq v0, v1, :cond_101
iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I
add-int/lit8 v0, v0, 0x1
if-ge v0, v8, :cond_2d
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I
sub-int v1, v8, v1
const/4 v2, 0x1
sub-int/2addr v1, v2
invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->backup(I)V
:cond_2d
sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoToken:[J
iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I
shr-int/lit8 v1, v1, 0x6
aget-wide v6, v0, v1
const-wide/16 v9, 0x1
iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I
and-int/lit8 v0, v0, 0x3f
shl-long/2addr v9, v0
and-long/2addr v6, v9
const-wide/16 v9, 0x0
cmp-long v0, v6, v9
if-eqz v0, :cond_90
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;
move-result-object v11
iput-object v13, v11, Lorg/apache/james/mime4j/field/datetime/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/datetime/parser/Token;
sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I
iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I
aget v0, v0, v1
const/4 v1, -0x1
if-eq v0, v1, :cond_5a
sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I
iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I
aget v0, v0, v1
iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I
:cond_5a
move-object v12, v11
:goto_5b
return-object v12
:catch_5c
move-exception v0
move-object v9, v0
const/4 v0, 0x0
iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;
move-result-object v11
iput-object v13, v11, Lorg/apache/james/mime4j/field/datetime/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/datetime/parser/Token;
move-object v12, v11
goto :goto_5b
:pswitch_69
const v0, 0x7fffffff
iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I
const/4 v0, 0x0
iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I
invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa0_0()I
move-result v8
goto :goto_15
:pswitch_76
const v0, 0x7fffffff
iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I
const/4 v0, 0x0
iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I
invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa0_1()I
move-result v8
goto :goto_15
:pswitch_83
const v0, 0x7fffffff
iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I
const/4 v0, 0x0
iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I
invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa0_2()I
move-result v8
goto :goto_15
:cond_90
sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoSkip:[J
iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I
shr-int/lit8 v1, v1, 0x6
aget-wide v6, v0, v1
const-wide/16 v9, 0x1
iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I
and-int/lit8 v0, v0, 0x3f
shl-long/2addr v9, v0
and-long/2addr v6, v9
const-wide/16 v9, 0x0
cmp-long v0, v6, v9
if-eqz v0, :cond_dc
sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoSpecial:[J
iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I
shr-int/lit8 v1, v1, 0x6
aget-wide v6, v0, v1
const-wide/16 v9, 0x1
iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I
and-int/lit8 v0, v0, 0x3f
shl-long/2addr v9, v0
and-long/2addr v6, v9
const-wide/16 v9, 0x0
cmp-long v0, v6, v9
if-eqz v0, :cond_c3
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;
move-result-object v11
if-nez v13, :cond_d6
move-object v13, v11
:goto_c3
:cond_c3
sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I
iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I
aget v0, v0, v1
const/4 v1, -0x1
if-eq v0, v1, :cond_2
sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I
iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I
aget v0, v0, v1
iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I
goto/16 :goto_2
:cond_d6
iput-object v13, v11, Lorg/apache/james/mime4j/field/datetime/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/datetime/parser/Token;
iput-object v11, v13, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;
move-object v13, v11
goto :goto_c3
:cond_dc
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->MoreLexicalActions()V
sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I
iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I
aget v0, v0, v1
const/4 v1, -0x1
if-eq v0, v1, :cond_f0
sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I
iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I
aget v0, v0, v1
iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I
:cond_f0
const/4 v8, 0x0
const v0, 0x7fffffff
iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I
:try_start_f6
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C
move-result v0
iput-char v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
:try_end_fe
.catch Ljava/io/IOException; {:try_start_f6 .. :try_end_fe} :catch_100
goto/16 :goto_10
:catch_100
move-exception v0
:cond_101
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->getEndLine()I
move-result v3
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->getEndColumn()I
move-result v4
const/4 v5, 0x0
const/4 v1, 0x0
:try_start_10f
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
const/4 v2, 0x1
invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->backup(I)V
:goto_11a
:try_end_11a
.catch Ljava/io/IOException; {:try_start_10f .. :try_end_11a} :catch_133
if-nez v1, :cond_128
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
const/4 v2, 0x1
invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->backup(I)V
const/4 v0, 0x1
if-gt v8, v0, :cond_157
const-string v0, ""
move-object v5, v0
:cond_128
:goto_128
new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;
iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I
iget-char v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
const/4 v7, 0x0
invoke-direct/range {v0 .. v7}, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V
throw v0
:catch_133
move-exception v0
move-object v10, v0
const/4 v1, 0x1
const/4 v0, 0x1
if-gt v8, v0, :cond_14c
const-string v0, ""
move-object v5, v0
:goto_13c
iget-char v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
const/16 v2, 0xa
if-eq v0, v2, :cond_148
iget-char v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
const/16 v2, 0xd
if-ne v0, v2, :cond_154
:cond_148
add-int/lit8 v3, v3, 0x1
const/4 v4, 0x0
goto :goto_11a
:cond_14c
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetImage()Ljava/lang/String;
move-result-object v0
move-object v5, v0
goto :goto_13c
:cond_154
add-int/lit8 v4, v4, 0x1
goto :goto_11a
:cond_157
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetImage()Ljava/lang/String;
move-result-object v0
move-object v5, v0
goto :goto_128
nop
:pswitch_data_160
.packed-switch 0x0
:pswitch_69
:pswitch_76
:pswitch_83
.end packed-switch
.end method
.method protected jjFillToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;
.registers 5
iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I
invoke-static {v2}, Lorg/apache/james/mime4j/field/datetime/parser/Token;->newToken(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
move-result-object v1
iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I
iput v2, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->kind:I
sget-object v2, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;
iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I
aget-object v0, v2, v3
if-nez v0, :cond_3b
iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
invoke-virtual {v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetImage()Ljava/lang/String;
move-result-object v2
:goto_18
iput-object v2, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;
iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
invoke-virtual {v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->getBeginLine()I
move-result v2
iput v2, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->beginLine:I
iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
invoke-virtual {v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->getBeginColumn()I
move-result v2
iput v2, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->beginColumn:I
iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
invoke-virtual {v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->getEndLine()I
move-result v2
iput v2, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->endLine:I
iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
invoke-virtual {v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->getEndColumn()I
move-result v2
iput v2, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->endColumn:I
return-object v1
:cond_3b
move-object v2, v0
goto :goto_18
.end method
.method public setDebugStream(Ljava/io/PrintStream;)V
.registers 2
iput-object p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->debugStream:Ljava/io/PrintStream;
return-void
.end method