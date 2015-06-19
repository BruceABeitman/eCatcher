.class public Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;
.super Ljava/lang/Object;
.source "ContentTypeParserTokenManager.java"
.implements Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserConstants;
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
.field protected input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
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
const/4 v7, 0x2
const/4 v6, 0x4
const/4 v5, 0x1
const/4 v4, 0x0
const/4 v3, 0x0
new-array v0, v6, [J
fill-array-data v0, :array_b8
sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J
new-array v0, v4, [I
sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnextStates:[I
const/16 v0, 0x18
new-array v0, v0, [Ljava/lang/String;
const-string v1, ""
aput-object v1, v0, v4
const-string v1, "\r"
aput-object v1, v0, v5
const-string v1, "\n"
aput-object v1, v0, v7
const/4 v1, 0x3
const-string v2, "/"
aput-object v2, v0, v1
const-string v1, ";"
aput-object v1, v0, v6
const/4 v1, 0x5
const-string v2, "="
aput-object v2, v0, v1
const/4 v1, 0x6
aput-object v3, v0, v1
const/4 v1, 0x7
aput-object v3, v0, v1
const/16 v1, 0x8
aput-object v3, v0, v1
const/16 v1, 0x9
aput-object v3, v0, v1
const/16 v1, 0xa
aput-object v3, v0, v1
const/16 v1, 0xb
aput-object v3, v0, v1
const/16 v1, 0xc
aput-object v3, v0, v1
const/16 v1, 0xd
aput-object v3, v0, v1
const/16 v1, 0xe
aput-object v3, v0, v1
const/16 v1, 0xf
aput-object v3, v0, v1
const/16 v1, 0x10
aput-object v3, v0, v1
const/16 v1, 0x11
aput-object v3, v0, v1
const/16 v1, 0x12
aput-object v3, v0, v1
const/16 v1, 0x13
aput-object v3, v0, v1
const/16 v1, 0x14
aput-object v3, v0, v1
const/16 v1, 0x15
aput-object v3, v0, v1
const/16 v1, 0x16
aput-object v3, v0, v1
const/16 v1, 0x17
aput-object v3, v0, v1
sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;
new-array v0, v6, [Ljava/lang/String;
const-string v1, "DEFAULT"
aput-object v1, v0, v4
const-string v1, "INCOMMENT"
aput-object v1, v0, v5
const-string v1, "NESTED_COMMENT"
aput-object v1, v0, v7
const/4 v1, 0x3
const-string v2, "INQUOTEDSTRING"
aput-object v2, v0, v1
sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->lexStateNames:[Ljava/lang/String;
const/16 v0, 0x18
new-array v0, v0, [I
fill-array-data v0, :array_cc
sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I
new-array v0, v5, [J
const-wide/32 v1, 0x38003f
aput-wide v1, v0, v4
sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoToken:[J
new-array v0, v5, [J
const-wide/16 v1, 0x140
aput-wide v1, v0, v4
sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoSkip:[J
new-array v0, v5, [J
const-wide/16 v1, 0x40
aput-wide v1, v0, v4
sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoSpecial:[J
new-array v0, v5, [J
const-wide/32 v1, 0x7fe80
aput-wide v1, v0, v4
sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoMore:[J
return-void
nop
:array_b8
.array-data 0x8
0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
.end array-data
:array_cc
.array-data 0x4
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
0x3t 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0x0t 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
.end array-data
.end method
.method public constructor <init>(Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->debugStream:Ljava/io/PrintStream;
const/4 v0, 0x3
new-array v0, v0, [I
iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjrounds:[I
const/4 v0, 0x6
new-array v0, v0, [I
iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I
iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I
iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->defaultLexState:I
iput-object p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
return-void
.end method
.method public constructor <init>(Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;I)V
.registers 3
invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;)V
invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->SwitchTo(I)V
return-void
.end method
.method private final ReInitRounds()V
.registers 5
const v2, -0x7fffffff
iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I
const/4 v0, 0x3
move v1, v0
:goto_7
add-int/lit8 v0, v1, -0x1
if-lez v1, :cond_13
iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjrounds:[I
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
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I
sget-object v3, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnextStates:[I
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
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjrounds:[I
aget v0, v0, p1
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I
if-eq v0, v1, :cond_18
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I
aput p1, v0, v1
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjrounds:[I
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I
aput v1, v0, p1
:cond_18
return-void
.end method
.method private final jjCheckNAddStates(I)V
.registers 4
sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnextStates:[I
aget v0, v0, p1
invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V
sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnextStates:[I
add-int/lit8 v1, p1, 0x1
aget v0, v0, v1
invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V
return-void
.end method
.method private final jjCheckNAddStates(II)V
.registers 5
:goto_0
sget-object v1, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnextStates:[I
aget v1, v1, p1
invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V
add-int/lit8 v0, p1, 0x1
if-ne p1, p2, :cond_c
return-void
:cond_c
move p1, v0
goto :goto_0
.end method
.method private final jjCheckNAddTwoStates(II)V
.registers 3
invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V
invoke-direct {p0, p2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V
return-void
.end method
.method private final jjMoveNfa_0(II)I
.registers 16
const/4 v8, 0x0
const/4 v9, 0x3
iput v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I
const/4 v1, 0x1
iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I
const/4 v10, 0x0
aput p1, v9, v10
const v3, 0x7fffffff
:goto_d
iget v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I
add-int/lit8 v9, v9, 0x1
iput v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I
const v10, 0x7fffffff
if-ne v9, v10, :cond_1b
invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInitRounds()V
:cond_1b
iget-char v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
const/16 v10, 0x40
if-ge v9, v10, :cond_c7
const-wide/16 v9, 0x1
iget-char v11, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
shl-long v4, v9, v11
:cond_27
iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I
add-int/lit8 v1, v1, -0x1
aget v9, v9, v1
packed-switch v9, :pswitch_data_132
:goto_30
:cond_30
if-ne v1, v8, :cond_27
:goto_32
const v9, 0x7fffffff
if-eq v3, v9, :cond_3e
iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I
iput p2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I
const v3, 0x7fffffff
:cond_3e
add-int/lit8 p2, p2, 0x1
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I
const/4 v9, 0x3
iput v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I
sub-int v8, v9, v8
if-ne v1, v8, :cond_124
:goto_49
return p2
:pswitch_4a
const-wide v9, 0x3ff6cfafffffdffL
and-long/2addr v9, v4
const-wide/16 v11, 0x0
cmp-long v9, v9, v11
if-eqz v9, :cond_74
const/16 v9, 0x15
if-le v3, v9, :cond_5c
const/16 v3, 0x15
:cond_5c
const/4 v9, 0x2
invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V
:cond_60
:goto_60
const-wide/high16 v9, 0x3ff
and-long/2addr v9, v4
const-wide/16 v11, 0x0
cmp-long v9, v9, v11
if-eqz v9, :cond_30
const/16 v9, 0x14
if-le v3, v9, :cond_6f
const/16 v3, 0x14
:cond_6f
const/4 v9, 0x1
invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V
goto :goto_30
:cond_74
const-wide v9, 0x100000200L
and-long/2addr v9, v4
const-wide/16 v11, 0x0
cmp-long v9, v9, v11
if-eqz v9, :cond_60
const/4 v9, 0x6
if-le v3, v9, :cond_84
const/4 v3, 0x6
:cond_84
const/4 v9, 0x0
invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V
goto :goto_60
:pswitch_89
const-wide v9, 0x100000200L
and-long/2addr v9, v4
const-wide/16 v11, 0x0
cmp-long v9, v9, v11
if-eqz v9, :cond_30
const/4 v3, 0x6
const/4 v9, 0x0
invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V
goto :goto_30
:pswitch_9b
const-wide/high16 v9, 0x3ff
and-long/2addr v9, v4
const-wide/16 v11, 0x0
cmp-long v9, v9, v11
if-eqz v9, :cond_30
const/16 v9, 0x14
if-le v3, v9, :cond_aa
const/16 v3, 0x14
:cond_aa
const/4 v9, 0x1
invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V
goto :goto_30
:pswitch_af
const-wide v9, 0x3ff6cfafffffdffL
and-long/2addr v9, v4
const-wide/16 v11, 0x0
cmp-long v9, v9, v11
if-eqz v9, :cond_30
const/16 v9, 0x15
if-le v3, v9, :cond_c1
const/16 v3, 0x15
:cond_c1
const/4 v9, 0x2
invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V
goto/16 :goto_30
:cond_c7
iget-char v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
const/16 v10, 0x80
if-ge v9, v10, :cond_f3
const-wide/16 v9, 0x1
iget-char v11, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
and-int/lit8 v11, v11, 0x3f
shl-long v4, v9, v11
:cond_d5
iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I
add-int/lit8 v1, v1, -0x1
aget v9, v9, v1
packed-switch v9, :pswitch_data_13e
:cond_de
:goto_de
if-ne v1, v8, :cond_d5
goto/16 :goto_32
:pswitch_e2
const-wide/32 v9, -0x38000002
and-long/2addr v9, v4
const-wide/16 v11, 0x0
cmp-long v9, v9, v11
if-eqz v9, :cond_de
const/16 v3, 0x15
const/4 v9, 0x2
invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V
goto :goto_de
:cond_f3
iget-char v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
and-int/lit16 v9, v9, 0xff
shr-int/lit8 v2, v9, 0x6
const-wide/16 v9, 0x1
iget-char v11, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
and-int/lit8 v11, v11, 0x3f
shl-long v6, v9, v11
:cond_101
iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I
add-int/lit8 v1, v1, -0x1
aget v9, v9, v1
packed-switch v9, :pswitch_data_146
:cond_10a
:goto_10a
if-ne v1, v8, :cond_101
goto/16 :goto_32
:pswitch_10e
sget-object v9, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J
aget-wide v9, v9, v2
and-long/2addr v9, v6
const-wide/16 v11, 0x0
cmp-long v9, v9, v11
if-eqz v9, :cond_10a
const/16 v9, 0x15
if-le v3, v9, :cond_11f
const/16 v3, 0x15
:cond_11f
const/4 v9, 0x2
invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V
goto :goto_10a
:cond_124
:try_start_124
iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
invoke-virtual {v9}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C
move-result v9
iput-char v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
:try_end_12c
.catch Ljava/io/IOException; {:try_start_124 .. :try_end_12c} :catch_12e
goto/16 :goto_d
:catch_12e
move-exception v9
move-object v0, v9
goto/16 :goto_49
:pswitch_data_132
.packed-switch 0x0
:pswitch_89
:pswitch_9b
:pswitch_af
:pswitch_4a
.end packed-switch
:pswitch_data_146
.packed-switch 0x2
:pswitch_10e
:pswitch_10e
.end packed-switch
:pswitch_data_13e
.packed-switch 0x2
:pswitch_e2
:pswitch_e2
.end packed-switch
.end method
.method private final jjMoveNfa_1(II)I
.registers 16
const/4 v8, 0x0
const/4 v9, 0x3
iput v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I
const/4 v1, 0x1
iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I
const/4 v10, 0x0
aput p1, v9, v10
const v3, 0x7fffffff
:goto_d
iget v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I
add-int/lit8 v9, v9, 0x1
iput v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I
const v10, 0x7fffffff
if-ne v9, v10, :cond_1b
invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInitRounds()V
:cond_1b
iget-char v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
const/16 v10, 0x40
if-ge v9, v10, :cond_58
const-wide/16 v9, 0x1
iget-char v11, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
shl-long v4, v9, v11
:cond_27
iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I
add-int/lit8 v1, v1, -0x1
aget v9, v9, v1
packed-switch v9, :pswitch_data_e4
:goto_30
:cond_30
if-ne v1, v8, :cond_27
:goto_32
const v9, 0x7fffffff
if-eq v3, v9, :cond_3e
iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I
iput p2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I
const v3, 0x7fffffff
:cond_3e
add-int/lit8 p2, p2, 0x1
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I
const/4 v9, 0x3
iput v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I
sub-int v8, v9, v8
if-ne v1, v8, :cond_d6
:goto_49
return p2
:pswitch_4a
const/16 v9, 0xb
if-le v3, v9, :cond_30
const/16 v3, 0xb
goto :goto_30
:pswitch_51
const/16 v9, 0x9
if-le v3, v9, :cond_30
const/16 v3, 0x9
goto :goto_30
:cond_58
iget-char v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
const/16 v10, 0x80
if-ge v9, v10, :cond_98
const-wide/16 v9, 0x1
iget-char v11, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
and-int/lit8 v11, v11, 0x3f
shl-long v4, v9, v11
:cond_66
iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I
add-int/lit8 v1, v1, -0x1
aget v9, v9, v1
packed-switch v9, :pswitch_data_ec
:goto_6f
:cond_6f
if-ne v1, v8, :cond_66
goto :goto_32
:pswitch_72
const/16 v9, 0xb
if-le v3, v9, :cond_78
const/16 v3, 0xb
:cond_78
iget-char v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
const/16 v10, 0x5c
if-ne v9, v10, :cond_6f
iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I
iget v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I
add-int/lit8 v11, v10, 0x1
iput v11, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I
const/4 v11, 0x1
aput v11, v9, v10
goto :goto_6f
:pswitch_8a
const/16 v9, 0x9
if-le v3, v9, :cond_6f
const/16 v3, 0x9
goto :goto_6f
:pswitch_91
const/16 v9, 0xb
if-le v3, v9, :cond_6f
const/16 v3, 0xb
goto :goto_6f
:cond_98
iget-char v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
and-int/lit16 v9, v9, 0xff
shr-int/lit8 v2, v9, 0x6
const-wide/16 v9, 0x1
iget-char v11, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
and-int/lit8 v11, v11, 0x3f
shl-long v6, v9, v11
:cond_a6
iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I
add-int/lit8 v1, v1, -0x1
aget v9, v9, v1
packed-switch v9, :pswitch_data_f6
:cond_af
:goto_af
if-ne v1, v8, :cond_a6
goto :goto_32
:pswitch_b2
sget-object v9, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J
aget-wide v9, v9, v2
and-long/2addr v9, v6
const-wide/16 v11, 0x0
cmp-long v9, v9, v11
if-eqz v9, :cond_af
const/16 v9, 0xb
if-le v3, v9, :cond_af
const/16 v3, 0xb
goto :goto_af
:pswitch_c4
sget-object v9, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J
aget-wide v9, v9, v2
and-long/2addr v9, v6
const-wide/16 v11, 0x0
cmp-long v9, v9, v11
if-eqz v9, :cond_af
const/16 v9, 0x9
if-le v3, v9, :cond_af
const/16 v3, 0x9
goto :goto_af
:cond_d6
:try_start_d6
iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
invoke-virtual {v9}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C
move-result v9
iput-char v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
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
iput v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I
const/4 v1, 0x1
iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I
const/4 v10, 0x0
aput p1, v9, v10
const v3, 0x7fffffff
:goto_d
iget v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I
add-int/lit8 v9, v9, 0x1
iput v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I
const v10, 0x7fffffff
if-ne v9, v10, :cond_1b
invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInitRounds()V
:cond_1b
iget-char v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
const/16 v10, 0x40
if-ge v9, v10, :cond_58
const-wide/16 v9, 0x1
iget-char v11, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
shl-long v4, v9, v11
:cond_27
iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I
add-int/lit8 v1, v1, -0x1
aget v9, v9, v1
packed-switch v9, :pswitch_data_e4
:goto_30
:cond_30
if-ne v1, v8, :cond_27
:goto_32
const v9, 0x7fffffff
if-eq v3, v9, :cond_3e
iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I
iput p2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I
const v3, 0x7fffffff
:cond_3e
add-int/lit8 p2, p2, 0x1
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I
const/4 v9, 0x3
iput v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I
sub-int v8, v9, v8
if-ne v1, v8, :cond_d6
:goto_49
return p2
:pswitch_4a
const/16 v9, 0xf
if-le v3, v9, :cond_30
const/16 v3, 0xf
goto :goto_30
:pswitch_51
const/16 v9, 0xc
if-le v3, v9, :cond_30
const/16 v3, 0xc
goto :goto_30
:cond_58
iget-char v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
const/16 v10, 0x80
if-ge v9, v10, :cond_98
const-wide/16 v9, 0x1
iget-char v11, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
and-int/lit8 v11, v11, 0x3f
shl-long v4, v9, v11
:cond_66
iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I
add-int/lit8 v1, v1, -0x1
aget v9, v9, v1
packed-switch v9, :pswitch_data_ec
:goto_6f
:cond_6f
if-ne v1, v8, :cond_66
goto :goto_32
:pswitch_72
const/16 v9, 0xf
if-le v3, v9, :cond_78
const/16 v3, 0xf
:cond_78
iget-char v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
const/16 v10, 0x5c
if-ne v9, v10, :cond_6f
iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I
iget v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I
add-int/lit8 v11, v10, 0x1
iput v11, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I
const/4 v11, 0x1
aput v11, v9, v10
goto :goto_6f
:pswitch_8a
const/16 v9, 0xc
if-le v3, v9, :cond_6f
const/16 v3, 0xc
goto :goto_6f
:pswitch_91
const/16 v9, 0xf
if-le v3, v9, :cond_6f
const/16 v3, 0xf
goto :goto_6f
:cond_98
iget-char v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
and-int/lit16 v9, v9, 0xff
shr-int/lit8 v2, v9, 0x6
const-wide/16 v9, 0x1
iget-char v11, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
and-int/lit8 v11, v11, 0x3f
shl-long v6, v9, v11
:cond_a6
iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I
add-int/lit8 v1, v1, -0x1
aget v9, v9, v1
packed-switch v9, :pswitch_data_f6
:cond_af
:goto_af
if-ne v1, v8, :cond_a6
goto :goto_32
:pswitch_b2
sget-object v9, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J
aget-wide v9, v9, v2
and-long/2addr v9, v6
const-wide/16 v11, 0x0
cmp-long v9, v9, v11
if-eqz v9, :cond_af
const/16 v9, 0xf
if-le v3, v9, :cond_af
const/16 v3, 0xf
goto :goto_af
:pswitch_c4
sget-object v9, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J
aget-wide v9, v9, v2
and-long/2addr v9, v6
const-wide/16 v11, 0x0
cmp-long v9, v9, v11
if-eqz v9, :cond_af
const/16 v9, 0xc
if-le v3, v9, :cond_af
const/16 v3, 0xc
goto :goto_af
:cond_d6
:try_start_d6
iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
invoke-virtual {v9}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C
move-result v9
iput-char v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
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
.method private final jjMoveNfa_3(II)I
.registers 16
const/4 v8, 0x0
const/4 v9, 0x3
iput v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I
const/4 v1, 0x1
iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I
const/4 v10, 0x0
aput p1, v9, v10
const v3, 0x7fffffff
:goto_d
iget v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I
add-int/lit8 v9, v9, 0x1
iput v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I
const v10, 0x7fffffff
if-ne v9, v10, :cond_1b
invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInitRounds()V
:cond_1b
iget-char v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
const/16 v10, 0x40
if-ge v9, v10, :cond_68
const-wide/16 v9, 0x1
iget-char v11, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
shl-long v4, v9, v11
:cond_27
iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I
add-int/lit8 v1, v1, -0x1
aget v9, v9, v1
packed-switch v9, :pswitch_data_116
:goto_30
:cond_30
if-ne v1, v8, :cond_27
:goto_32
const v9, 0x7fffffff
if-eq v3, v9, :cond_3e
iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I
iput p2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I
const v3, 0x7fffffff
:cond_3e
add-int/lit8 p2, p2, 0x1
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I
const/4 v9, 0x3
iput v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I
sub-int v8, v9, v8
if-ne v1, v8, :cond_108
:goto_49
return p2
:pswitch_4a
const-wide v9, -0x400000001L
and-long/2addr v9, v4
const-wide/16 v11, 0x0
cmp-long v9, v9, v11
if-eqz v9, :cond_30
const/16 v9, 0x12
if-le v3, v9, :cond_5c
const/16 v3, 0x12
:cond_5c
const/4 v9, 0x2
invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V
goto :goto_30
:pswitch_61
const/16 v9, 0x11
if-le v3, v9, :cond_30
const/16 v3, 0x11
goto :goto_30
:cond_68
iget-char v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
const/16 v10, 0x80
if-ge v9, v10, :cond_c5
const-wide/16 v9, 0x1
iget-char v11, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
and-int/lit8 v11, v11, 0x3f
shl-long v4, v9, v11
:cond_76
iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I
add-int/lit8 v1, v1, -0x1
aget v9, v9, v1
packed-switch v9, :pswitch_data_120
:goto_7f
:cond_7f
if-ne v1, v8, :cond_76
goto :goto_32
:pswitch_82
const-wide/32 v9, -0x10000001
and-long/2addr v9, v4
const-wide/16 v11, 0x0
cmp-long v9, v9, v11
if-eqz v9, :cond_97
const/16 v9, 0x12
if-le v3, v9, :cond_92
const/16 v3, 0x12
:cond_92
const/4 v9, 0x2
invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V
goto :goto_7f
:cond_97
iget-char v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
const/16 v10, 0x5c
if-ne v9, v10, :cond_7f
iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I
iget v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I
add-int/lit8 v11, v10, 0x1
iput v11, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I
const/4 v11, 0x1
aput v11, v9, v10
goto :goto_7f
:pswitch_a9
const/16 v9, 0x11
if-le v3, v9, :cond_7f
const/16 v3, 0x11
goto :goto_7f
:pswitch_b0
const-wide/32 v9, -0x10000001
and-long/2addr v9, v4
const-wide/16 v11, 0x0
cmp-long v9, v9, v11
if-eqz v9, :cond_7f
const/16 v9, 0x12
if-le v3, v9, :cond_c0
const/16 v3, 0x12
:cond_c0
const/4 v9, 0x2
invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V
goto :goto_7f
:cond_c5
iget-char v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
and-int/lit16 v9, v9, 0xff
shr-int/lit8 v2, v9, 0x6
const-wide/16 v9, 0x1
iget-char v11, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
and-int/lit8 v11, v11, 0x3f
shl-long v6, v9, v11
:cond_d3
iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I
add-int/lit8 v1, v1, -0x1
aget v9, v9, v1
packed-switch v9, :pswitch_data_12a
:goto_dc
:cond_dc
if-ne v1, v8, :cond_d3
goto/16 :goto_32
:pswitch_e0
sget-object v9, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J
aget-wide v9, v9, v2
and-long/2addr v9, v6
const-wide/16 v11, 0x0
cmp-long v9, v9, v11
if-eqz v9, :cond_dc
const/16 v9, 0x12
if-le v3, v9, :cond_f1
const/16 v3, 0x12
:cond_f1
const/4 v9, 0x2
invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V
goto :goto_dc
:pswitch_f6
sget-object v9, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J
aget-wide v9, v9, v2
and-long/2addr v9, v6
const-wide/16 v11, 0x0
cmp-long v9, v9, v11
if-eqz v9, :cond_dc
const/16 v9, 0x11
if-le v3, v9, :cond_dc
const/16 v3, 0x11
goto :goto_dc
:cond_108
:try_start_108
iget-object v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
invoke-virtual {v9}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C
move-result v9
iput-char v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
:try_end_110
.catch Ljava/io/IOException; {:try_start_108 .. :try_end_110} :catch_112
goto/16 :goto_d
:catch_112
move-exception v9
move-object v0, v9
goto/16 :goto_49
:pswitch_data_12a
.packed-switch 0x0
:pswitch_e0
:pswitch_f6
:pswitch_e0
.end packed-switch
:pswitch_data_116
.packed-switch 0x0
:pswitch_4a
:pswitch_61
:pswitch_4a
.end packed-switch
:pswitch_data_120
.packed-switch 0x0
:pswitch_82
:pswitch_a9
:pswitch_b0
.end packed-switch
.end method
.method private final jjMoveStringLiteralDfa0_0()I
.registers 5
const/4 v3, 0x3
const/4 v2, 0x2
const/4 v1, 0x0
iget-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
sparse-switch v0, :sswitch_data_36
invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_0(II)I
move-result v0
:goto_c
return v0
:sswitch_d
invoke-direct {p0, v1, v2, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStartNfaWithStates_0(III)I
move-result v0
goto :goto_c
:sswitch_12
const/4 v0, 0x1
invoke-direct {p0, v1, v0, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStartNfaWithStates_0(III)I
move-result v0
goto :goto_c
:sswitch_18
const/16 v0, 0x10
invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I
move-result v0
goto :goto_c
:sswitch_1f
const/4 v0, 0x7
invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I
move-result v0
goto :goto_c
:sswitch_25
invoke-direct {p0, v1, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I
move-result v0
goto :goto_c
:sswitch_2a
const/4 v0, 0x4
invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I
move-result v0
goto :goto_c
:sswitch_30
const/4 v0, 0x5
invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I
move-result v0
goto :goto_c
:sswitch_data_36
.sparse-switch
0xa -> :sswitch_d
0xd -> :sswitch_12
0x22 -> :sswitch_18
0x28 -> :sswitch_1f
0x2f -> :sswitch_25
0x3b -> :sswitch_2a
0x3d -> :sswitch_30
.end sparse-switch
.end method
.method private final jjMoveStringLiteralDfa0_1()I
.registers 3
const/4 v1, 0x0
iget-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
packed-switch v0, :pswitch_data_1a
invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_1(II)I
move-result v0
:goto_a
return v0
:pswitch_b
const/16 v0, 0xa
invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I
move-result v0
goto :goto_a
:pswitch_12
const/16 v0, 0x8
invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I
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
iget-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
packed-switch v0, :pswitch_data_1a
invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_2(II)I
move-result v0
:goto_a
return v0
:pswitch_b
const/16 v0, 0xd
invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I
move-result v0
goto :goto_a
:pswitch_12
const/16 v0, 0xe
invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I
move-result v0
goto :goto_a
nop
:pswitch_data_1a
.packed-switch 0x28
:pswitch_b
:pswitch_12
.end packed-switch
.end method
.method private final jjMoveStringLiteralDfa0_3()I
.registers 3
const/4 v1, 0x0
iget-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
packed-switch v0, :pswitch_data_12
invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_3(II)I
move-result v0
:goto_a
return v0
:pswitch_b
const/16 v0, 0x13
invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I
move-result v0
goto :goto_a
:pswitch_data_12
.packed-switch 0x22
:pswitch_b
.end packed-switch
.end method
.method private final jjStartNfaWithStates_0(III)I
.registers 6
iput p2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I
iput p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I
:try_start_4
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C
move-result v1
iput-char v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
:try_end_c
.catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13
add-int/lit8 v1, p1, 0x1
invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_0(II)I
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
iput p2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I
iput p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I
:try_start_4
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C
move-result v1
iput-char v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
:try_end_c
.catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13
add-int/lit8 v1, p1, 0x1
invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_1(II)I
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
iput p2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I
iput p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I
:try_start_4
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C
move-result v1
iput-char v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
:try_end_c
.catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13
add-int/lit8 v1, p1, 0x1
invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_2(II)I
move-result v1
:goto_12
return v1
:catch_13
move-exception v1
move-object v0, v1
add-int/lit8 v1, p1, 0x1
goto :goto_12
.end method
.method private final jjStartNfaWithStates_3(III)I
.registers 6
iput p2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I
iput p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I
:try_start_4
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C
move-result v1
iput-char v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
:try_end_c
.catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13
add-int/lit8 v1, p1, 0x1
invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_3(II)I
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
invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I
move-result v0
add-int/lit8 v1, p1, 0x1
invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_0(II)I
move-result v0
return v0
.end method
.method private final jjStartNfa_1(IJ)I
.registers 6
invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I
move-result v0
add-int/lit8 v1, p1, 0x1
invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_1(II)I
move-result v0
return v0
.end method
.method private final jjStartNfa_2(IJ)I
.registers 6
invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopStringLiteralDfa_2(IJ)I
move-result v0
add-int/lit8 v1, p1, 0x1
invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_2(II)I
move-result v0
return v0
.end method
.method private final jjStartNfa_3(IJ)I
.registers 6
invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopStringLiteralDfa_3(IJ)I
move-result v0
add-int/lit8 v1, p1, 0x1
invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_3(II)I
move-result v0
return v0
.end method
.method private final jjStopAtPos(II)I
.registers 4
iput p2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I
iput p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I
add-int/lit8 v0, p1, 0x1
return v0
.end method
.method private final jjStopStringLiteralDfa_0(IJ)I
.registers 5
const/4 v0, -0x1
return v0
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
.method private final jjStopStringLiteralDfa_3(IJ)I
.registers 5
const/4 v0, -0x1
return v0
.end method
.method  MoreLexicalActions()V
.registers 7
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->lengthOfMatch:I
add-int/2addr v0, v1
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I
iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I
packed-switch v0, :pswitch_data_11a
:cond_13
:pswitch_13
:goto_13
return-void
:pswitch_14
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
if-nez v0, :cond_1f
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
:cond_1f
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I
invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;
iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I
move-result v1
sub-int/2addr v1, v5
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;
goto :goto_13
:pswitch_3b
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
if-nez v0, :cond_46
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
:cond_46
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I
invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;
iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I
sput v4, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I
goto :goto_13
:pswitch_58
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
if-nez v0, :cond_63
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
:cond_63
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I
invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;
iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I
move-result v1
sub-int/2addr v1, v5
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;
goto :goto_13
:pswitch_7f
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
if-nez v0, :cond_8a
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
:cond_8a
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I
invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;
iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I
sget v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I
add-int/lit8 v0, v0, 0x1
sput v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I
goto/16 :goto_13
:pswitch_a1
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
if-nez v0, :cond_ac
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
:cond_ac
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I
invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;
iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I
sget v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I
sub-int/2addr v0, v4
sput v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I
sget v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I
if-nez v0, :cond_13
invoke-virtual {p0, v4}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->SwitchTo(I)V
goto/16 :goto_13
:pswitch_c9
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
if-nez v0, :cond_d4
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
:cond_d4
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I
invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;
iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I
move-result v1
sub-int/2addr v1, v4
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;
goto/16 :goto_13
:pswitch_f1
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
if-nez v0, :cond_fc
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
:cond_fc
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I
invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;
iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I
move-result v1
sub-int/2addr v1, v5
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;
goto/16 :goto_13
nop
:pswitch_data_11a
.packed-switch 0x9
:pswitch_14
:pswitch_3b
:pswitch_13
:pswitch_58
:pswitch_7f
:pswitch_a1
:pswitch_13
:pswitch_c9
:pswitch_f1
.end packed-switch
.end method
.method public ReInit(Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;)V
.registers 3
const/4 v0, 0x0
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I
iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->defaultLexState:I
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I
iput-object p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInitRounds()V
return-void
.end method
.method public ReInit(Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;I)V
.registers 3
invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;)V
invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->SwitchTo(I)V
return-void
.end method
.method public SwitchTo(I)V
.registers 5
const/4 v0, 0x4
if-ge p1, v0, :cond_5
if-gez p1, :cond_25
:cond_5
new-instance v0, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;
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
invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V
throw v0
:cond_25
iput p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I
return-void
.end method
.method  TokenLexicalActions(Lorg/apache/james/mime4j/field/contenttype/parser/Token;)V
.registers 6
iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I
packed-switch v0, :pswitch_data_38
:goto_5
return-void
:pswitch_6
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
if-nez v0, :cond_11
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
:cond_11
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I
iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I
add-int/lit8 v3, v3, 0x1
iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->lengthOfMatch:I
add-int/2addr v2, v3
invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
const/4 v1, 0x0
iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I
move-result v2
const/4 v3, 0x1
sub-int/2addr v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;
move-result-object v0
iput-object v0, p1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->image:Ljava/lang/String;
goto :goto_5
nop
:pswitch_data_38
.packed-switch 0x13
:pswitch_6
.end packed-switch
.end method
.method public getNextToken()Lorg/apache/james/mime4j/field/contenttype/parser/Token;
.registers 15
const/4 v13, 0x0
const/4 v8, 0x0
:try_start_2
:goto_2
:cond_2
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->BeginToken()C
move-result v0
iput-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
:try_end_a
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_a} :catch_5f
const/4 v0, 0x0
iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;
const/4 v0, 0x0
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I
:goto_10
iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I
packed-switch v0, :pswitch_data_170
:goto_15
iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I
const v1, 0x7fffffff
if-eq v0, v1, :cond_112
iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I
add-int/lit8 v0, v0, 0x1
if-ge v0, v8, :cond_2d
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I
sub-int v1, v8, v1
const/4 v2, 0x1
sub-int/2addr v1, v2
invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->backup(I)V
:cond_2d
sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoToken:[J
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I
shr-int/lit8 v1, v1, 0x6
aget-wide v6, v0, v1
const-wide/16 v9, 0x1
iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I
and-int/lit8 v0, v0, 0x3f
shl-long/2addr v9, v0
and-long/2addr v6, v9
const-wide/16 v9, 0x0
cmp-long v0, v6, v9
if-eqz v0, :cond_a1
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/contenttype/parser/Token;
move-result-object v11
iput-object v13, v11, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
invoke-virtual {p0, v11}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->TokenLexicalActions(Lorg/apache/james/mime4j/field/contenttype/parser/Token;)V
sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I
aget v0, v0, v1
const/4 v1, -0x1
if-eq v0, v1, :cond_5d
sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I
aget v0, v0, v1
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I
:cond_5d
move-object v12, v11
:goto_5e
return-object v12
:catch_5f
move-exception v0
move-object v9, v0
const/4 v0, 0x0
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/contenttype/parser/Token;
move-result-object v11
iput-object v13, v11, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
move-object v12, v11
goto :goto_5e
:pswitch_6c
const v0, 0x7fffffff
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I
const/4 v0, 0x0
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I
invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveStringLiteralDfa0_0()I
move-result v8
goto :goto_15
:pswitch_79
const v0, 0x7fffffff
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I
const/4 v0, 0x0
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I
invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveStringLiteralDfa0_1()I
move-result v8
goto :goto_15
:pswitch_86
const v0, 0x7fffffff
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I
const/4 v0, 0x0
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I
invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveStringLiteralDfa0_2()I
move-result v8
goto :goto_15
:pswitch_93
const v0, 0x7fffffff
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I
const/4 v0, 0x0
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I
invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveStringLiteralDfa0_3()I
move-result v8
goto/16 :goto_15
:cond_a1
sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoSkip:[J
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I
shr-int/lit8 v1, v1, 0x6
aget-wide v6, v0, v1
const-wide/16 v9, 0x1
iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I
and-int/lit8 v0, v0, 0x3f
shl-long/2addr v9, v0
and-long/2addr v6, v9
const-wide/16 v9, 0x0
cmp-long v0, v6, v9
if-eqz v0, :cond_ed
sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoSpecial:[J
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I
shr-int/lit8 v1, v1, 0x6
aget-wide v6, v0, v1
const-wide/16 v9, 0x1
iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I
and-int/lit8 v0, v0, 0x3f
shl-long/2addr v9, v0
and-long/2addr v6, v9
const-wide/16 v9, 0x0
cmp-long v0, v6, v9
if-eqz v0, :cond_d4
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/contenttype/parser/Token;
move-result-object v11
if-nez v13, :cond_e7
move-object v13, v11
:cond_d4
:goto_d4
sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I
aget v0, v0, v1
const/4 v1, -0x1
if-eq v0, v1, :cond_2
sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I
aget v0, v0, v1
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I
goto/16 :goto_2
:cond_e7
iput-object v13, v11, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
iput-object v11, v13, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->next:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
move-object v13, v11
goto :goto_d4
:cond_ed
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->MoreLexicalActions()V
sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I
aget v0, v0, v1
const/4 v1, -0x1
if-eq v0, v1, :cond_101
sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I
aget v0, v0, v1
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I
:cond_101
const/4 v8, 0x0
const v0, 0x7fffffff
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I
:try_start_107
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C
move-result v0
iput-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
:try_end_10f
.catch Ljava/io/IOException; {:try_start_107 .. :try_end_10f} :catch_111
goto/16 :goto_10
:catch_111
move-exception v0
:cond_112
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->getEndLine()I
move-result v3
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->getEndColumn()I
move-result v4
const/4 v5, 0x0
const/4 v1, 0x0
:try_start_120
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
const/4 v2, 0x1
invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->backup(I)V
:goto_12b
:try_end_12b
.catch Ljava/io/IOException; {:try_start_120 .. :try_end_12b} :catch_144
if-nez v1, :cond_139
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
const/4 v2, 0x1
invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->backup(I)V
const/4 v0, 0x1
if-gt v8, v0, :cond_168
const-string v0, ""
move-object v5, v0
:cond_139
:goto_139
new-instance v0, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I
iget-char v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
const/4 v7, 0x0
invoke-direct/range {v0 .. v7}, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V
throw v0
:catch_144
move-exception v0
move-object v10, v0
const/4 v1, 0x1
const/4 v0, 0x1
if-gt v8, v0, :cond_15d
const-string v0, ""
move-object v5, v0
:goto_14d
iget-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
const/16 v2, 0xa
if-eq v0, v2, :cond_159
iget-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
const/16 v2, 0xd
if-ne v0, v2, :cond_165
:cond_159
add-int/lit8 v3, v3, 0x1
const/4 v4, 0x0
goto :goto_12b
:cond_15d
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetImage()Ljava/lang/String;
move-result-object v0
move-object v5, v0
goto :goto_14d
:cond_165
add-int/lit8 v4, v4, 0x1
goto :goto_12b
:cond_168
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetImage()Ljava/lang/String;
move-result-object v0
move-object v5, v0
goto :goto_139
:pswitch_data_170
.packed-switch 0x0
:pswitch_6c
:pswitch_79
:pswitch_86
:pswitch_93
.end packed-switch
.end method
.method protected jjFillToken()Lorg/apache/james/mime4j/field/contenttype/parser/Token;
.registers 5
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I
invoke-static {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->newToken(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;
move-result-object v1
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I
iput v2, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->kind:I
sget-object v2, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;
iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I
aget-object v0, v2, v3
if-nez v0, :cond_3b
iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetImage()Ljava/lang/String;
move-result-object v2
:goto_18
iput-object v2, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->image:Ljava/lang/String;
iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->getBeginLine()I
move-result v2
iput v2, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->beginLine:I
iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->getBeginColumn()I
move-result v2
iput v2, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->beginColumn:I
iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->getEndLine()I
move-result v2
iput v2, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->endLine:I
iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->getEndColumn()I
move-result v2
iput v2, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->endColumn:I
return-object v1
:cond_3b
move-object v2, v0
goto :goto_18
.end method
.method public setDebugStream(Ljava/io/PrintStream;)V
.registers 2
iput-object p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->debugStream:Ljava/io/PrintStream;
return-void
.end method