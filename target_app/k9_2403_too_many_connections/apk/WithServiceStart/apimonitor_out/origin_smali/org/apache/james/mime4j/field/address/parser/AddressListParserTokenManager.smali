.class public Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;
.super Ljava/lang/Object;
.source "AddressListParserTokenManager.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/address/parser/AddressListParserConstants;


# static fields
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


# instance fields
.field protected curChar:C

.field curLexState:I

.field public debugStream:Ljava/io/PrintStream;

.field defaultLexState:I

.field image:Ljava/lang/StringBuffer;

.field protected input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

.field jjimageLen:I

.field jjmatchedKind:I

.field jjmatchedPos:I

.field jjnewStateCnt:I

.field jjround:I

.field private final jjrounds:[I

.field private final jjstateSet:[I

.field lengthOfMatch:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-array v0, v6, [J

    fill-array-data v0, :array_f0

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    new-array v0, v4, [I

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnextStates:[I

    const/16 v0, 0x22

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "\r"

    aput-object v1, v0, v5

    const-string v1, "\n"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, ","

    aput-object v2, v0, v1

    const-string v1, ":"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, ";"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "<"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "@"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "."

    aput-object v2, v0, v1

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

    const/16 v1, 0x18

    aput-object v3, v0, v1

    const/16 v1, 0x19

    aput-object v3, v0, v1

    const/16 v1, 0x1a

    aput-object v3, v0, v1

    const/16 v1, 0x1b

    aput-object v3, v0, v1

    const/16 v1, 0x1c

    aput-object v3, v0, v1

    const/16 v1, 0x1d

    aput-object v3, v0, v1

    const/16 v1, 0x1e

    aput-object v3, v0, v1

    const/16 v1, 0x1f

    aput-object v3, v0, v1

    const/16 v1, 0x20

    aput-object v3, v0, v1

    const/16 v1, 0x21

    aput-object v3, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v4

    const-string v1, "INDOMAINLITERAL"

    aput-object v1, v0, v5

    const-string v1, "INCOMMENT"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "NESTED_COMMENT"

    aput-object v2, v0, v1

    const-string v1, "INQUOTEDSTRING"

    aput-object v1, v0, v6

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->lexStateNames:[Ljava/lang/String;

    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_104

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    new-array v0, v5, [J

    const-wide v1, 0x800443ffL

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoToken:[J

    new-array v0, v5, [J

    const-wide/32 v1, 0x100400

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoSkip:[J

    new-array v0, v5, [J

    const-wide/16 v1, 0x400

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoSpecial:[J

    new-array v0, v5, [J

    const-wide/32 v1, 0x7feb8000

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoMore:[J

    return-void

    nop

    :array_f0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_104
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
        0x1t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x3t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x4t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->debugStream:Ljava/io/PrintStream;

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjrounds:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->defaultLexState:I

    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;I)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;)V

    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method private final ReInitRounds()V
    .registers 5

    const v2, -0x7fffffff

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    const/4 v0, 0x3

    move v1, v0

    :goto_7
    add-int/lit8 v0, v1, -0x1

    if-lez v1, :cond_13

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjrounds:[I

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
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    sget-object v3, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnextStates:[I

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

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjrounds:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    aput v1, v0, p1

    :cond_18
    return-void
.end method

.method private final jjCheckNAddStates(I)V
    .registers 4

    sget-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    sget-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnextStates:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private final jjCheckNAddStates(II)V
    .registers 5

    :goto_0
    sget-object v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnextStates:[I

    aget v1, v1, p1

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_c

    return-void

    :cond_c
    move p1, v0

    goto :goto_0
.end method

.method private final jjCheckNAddTwoStates(II)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private final jjMoveNfa_0(II)I
    .registers 16

    const/4 v8, 0x0

    const/4 v9, 0x3

    iput v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    const v3, 0x7fffffff

    :goto_d
    iget v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_1b

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInitRounds()V

    :cond_1b
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_a2

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    :cond_27
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_fa

    :cond_30
    :goto_30
    if-ne v1, v8, :cond_27

    :goto_32
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3e

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    const v3, 0x7fffffff

    :cond_3e
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v9, 0x3

    iput v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    sub-int v8, v9, v8

    if-ne v1, v8, :cond_ec

    :goto_49
    return p2

    :pswitch_4a
    const-wide v9, -0x5c00530600000000L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_61

    const/16 v9, 0xe

    if-le v3, v9, :cond_5c

    const/16 v3, 0xe

    :cond_5c
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_30

    :cond_61
    const-wide v9, 0x100000200L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_30

    const/16 v9, 0xa

    if-le v3, v9, :cond_73

    const/16 v3, 0xa

    :cond_73
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_30

    :pswitch_78
    const-wide v9, 0x100000200L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_30

    const/16 v3, 0xa

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_30

    :pswitch_8b
    const-wide v9, -0x5c00130600000000L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_30

    const/16 v9, 0xe

    if-le v3, v9, :cond_9d

    const/16 v3, 0xe

    :cond_9d
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_30

    :cond_a2
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_d4

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    :cond_b0
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_104

    :cond_b9
    :goto_b9
    if-ne v1, v8, :cond_b0

    goto/16 :goto_32

    :pswitch_bd
    const-wide v9, 0x7fffffffc7fffffeL

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_b9

    const/16 v9, 0xe

    if-le v3, v9, :cond_cf

    const/16 v3, 0xe

    :cond_cf
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_b9

    :cond_d4
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    :cond_e2
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    if-ne v1, v8, :cond_e2

    goto/16 :goto_32

    :cond_ec
    :try_start_ec
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_f4} :catch_f6

    goto/16 :goto_d

    :catch_f6
    move-exception v9

    move-object v0, v9

    goto/16 :goto_49

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_78
        :pswitch_4a
        :pswitch_8b
    .end packed-switch

    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_bd
        :pswitch_bd
    .end packed-switch
.end method

.method private final jjMoveNfa_1(II)I
    .registers 16

    const/4 v8, 0x0

    const/4 v9, 0x3

    iput v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    const v3, 0x7fffffff

    :goto_d
    iget v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_1b

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInitRounds()V

    :cond_1b
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_58

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    :cond_27
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_fa

    :cond_30
    :goto_30
    if-ne v1, v8, :cond_27

    :goto_32
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3e

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    const v3, 0x7fffffff

    :cond_3e
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v9, 0x3

    iput v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    sub-int v8, v9, v8

    if-ne v1, v8, :cond_ec

    :goto_49
    return p2

    :pswitch_4a
    const/16 v9, 0x11

    if-le v3, v9, :cond_30

    const/16 v3, 0x11

    goto :goto_30

    :pswitch_51
    const/16 v9, 0x10

    if-le v3, v9, :cond_30

    const/16 v3, 0x10

    goto :goto_30

    :cond_58
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_ad

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    :cond_66
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_102

    :cond_6f
    :goto_6f
    if-ne v1, v8, :cond_66

    goto :goto_32

    :pswitch_72
    const-wide/32 v9, -0x38000001

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_83

    const/16 v9, 0x11

    if-le v3, v9, :cond_6f

    const/16 v3, 0x11

    goto :goto_6f

    :cond_83
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6f

    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_6f

    :pswitch_95
    const/16 v9, 0x10

    if-le v3, v9, :cond_6f

    const/16 v3, 0x10

    goto :goto_6f

    :pswitch_9c
    const-wide/32 v9, -0x38000001

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_6f

    const/16 v9, 0x11

    if-le v3, v9, :cond_6f

    const/16 v3, 0x11

    goto :goto_6f

    :cond_ad
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    :cond_bb
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_10c

    :cond_c4
    :goto_c4
    if-ne v1, v8, :cond_bb

    goto/16 :goto_32

    :pswitch_c8
    sget-object v9, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_c4

    const/16 v9, 0x11

    if-le v3, v9, :cond_c4

    const/16 v3, 0x11

    goto :goto_c4

    :pswitch_da
    sget-object v9, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_c4

    const/16 v9, 0x10

    if-le v3, v9, :cond_c4

    const/16 v3, 0x10

    goto :goto_c4

    :cond_ec
    :try_start_ec
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_f4} :catch_f6

    goto/16 :goto_d

    :catch_f6
    move-exception v9

    move-object v0, v9

    goto/16 :goto_49

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_51
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_72
        :pswitch_95
        :pswitch_9c
    .end packed-switch

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_c8
        :pswitch_da
    .end packed-switch
.end method

.method private final jjMoveNfa_2(II)I
    .registers 16

    const/4 v8, 0x0

    const/4 v9, 0x3

    iput v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    const v3, 0x7fffffff

    :goto_d
    iget v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_1b

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInitRounds()V

    :cond_1b
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_58

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    :cond_27
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_e4

    :cond_30
    :goto_30
    if-ne v1, v8, :cond_27

    :goto_32
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3e

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    const v3, 0x7fffffff

    :cond_3e
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v9, 0x3

    iput v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    sub-int v8, v9, v8

    if-ne v1, v8, :cond_d6

    :goto_49
    return p2

    :pswitch_4a
    const/16 v9, 0x17

    if-le v3, v9, :cond_30

    const/16 v3, 0x17

    goto :goto_30

    :pswitch_51
    const/16 v9, 0x15

    if-le v3, v9, :cond_30

    const/16 v3, 0x15

    goto :goto_30

    :cond_58
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_98

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    :cond_66
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_ec

    :cond_6f
    :goto_6f
    if-ne v1, v8, :cond_66

    goto :goto_32

    :pswitch_72
    const/16 v9, 0x17

    if-le v3, v9, :cond_78

    const/16 v3, 0x17

    :cond_78
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6f

    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_6f

    :pswitch_8a
    const/16 v9, 0x15

    if-le v3, v9, :cond_6f

    const/16 v3, 0x15

    goto :goto_6f

    :pswitch_91
    const/16 v9, 0x17

    if-le v3, v9, :cond_6f

    const/16 v3, 0x17

    goto :goto_6f

    :cond_98
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    :cond_a6
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_f6

    :cond_af
    :goto_af
    if-ne v1, v8, :cond_a6

    goto :goto_32

    :pswitch_b2
    sget-object v9, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_af

    const/16 v9, 0x17

    if-le v3, v9, :cond_af

    const/16 v3, 0x17

    goto :goto_af

    :pswitch_c4
    sget-object v9, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_af

    const/16 v9, 0x15

    if-le v3, v9, :cond_af

    const/16 v3, 0x15

    goto :goto_af

    :cond_d6
    :try_start_d6
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_de} :catch_e0

    goto/16 :goto_d

    :catch_e0
    move-exception v9

    move-object v0, v9

    goto/16 :goto_49

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_51
    .end packed-switch

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_72
        :pswitch_8a
        :pswitch_91
    .end packed-switch

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_b2
        :pswitch_c4
    .end packed-switch
.end method

.method private final jjMoveNfa_3(II)I
    .registers 16

    const/4 v8, 0x0

    const/4 v9, 0x3

    iput v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    const v3, 0x7fffffff

    :goto_d
    iget v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_1b

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInitRounds()V

    :cond_1b
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_58

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    :cond_27
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_e4

    :cond_30
    :goto_30
    if-ne v1, v8, :cond_27

    :goto_32
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3e

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    const v3, 0x7fffffff

    :cond_3e
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v9, 0x3

    iput v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    sub-int v8, v9, v8

    if-ne v1, v8, :cond_d6

    :goto_49
    return p2

    :pswitch_4a
    const/16 v9, 0x1b

    if-le v3, v9, :cond_30

    const/16 v3, 0x1b

    goto :goto_30

    :pswitch_51
    const/16 v9, 0x18

    if-le v3, v9, :cond_30

    const/16 v3, 0x18

    goto :goto_30

    :cond_58
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_98

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    :cond_66
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_ec

    :cond_6f
    :goto_6f
    if-ne v1, v8, :cond_66

    goto :goto_32

    :pswitch_72
    const/16 v9, 0x1b

    if-le v3, v9, :cond_78

    const/16 v3, 0x1b

    :cond_78
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6f

    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_6f

    :pswitch_8a
    const/16 v9, 0x18

    if-le v3, v9, :cond_6f

    const/16 v3, 0x18

    goto :goto_6f

    :pswitch_91
    const/16 v9, 0x1b

    if-le v3, v9, :cond_6f

    const/16 v3, 0x1b

    goto :goto_6f

    :cond_98
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    :cond_a6
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_f6

    :cond_af
    :goto_af
    if-ne v1, v8, :cond_a6

    goto :goto_32

    :pswitch_b2
    sget-object v9, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_af

    const/16 v9, 0x1b

    if-le v3, v9, :cond_af

    const/16 v3, 0x1b

    goto :goto_af

    :pswitch_c4
    sget-object v9, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_af

    const/16 v9, 0x18

    if-le v3, v9, :cond_af

    const/16 v3, 0x18

    goto :goto_af

    :cond_d6
    :try_start_d6
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_de} :catch_e0

    goto/16 :goto_d

    :catch_e0
    move-exception v9

    move-object v0, v9

    goto/16 :goto_49

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_51
    .end packed-switch

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_72
        :pswitch_8a
        :pswitch_91
    .end packed-switch

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_b2
        :pswitch_c4
    .end packed-switch
.end method

.method private final jjMoveNfa_4(II)I
    .registers 16

    const/4 v8, 0x0

    const/4 v9, 0x3

    iput v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    const v3, 0x7fffffff

    :goto_d
    iget v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_1b

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInitRounds()V

    :cond_1b
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_68

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    :cond_27
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_116

    :cond_30
    :goto_30
    if-ne v1, v8, :cond_27

    :goto_32
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3e

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    const v3, 0x7fffffff

    :cond_3e
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v9, 0x3

    iput v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

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

    const/16 v9, 0x1e

    if-le v3, v9, :cond_5c

    const/16 v3, 0x1e

    :cond_5c
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_30

    :pswitch_61
    const/16 v9, 0x1d

    if-le v3, v9, :cond_30

    const/16 v3, 0x1d

    goto :goto_30

    :cond_68
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_c5

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    :cond_76
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_120

    :cond_7f
    :goto_7f
    if-ne v1, v8, :cond_76

    goto :goto_32

    :pswitch_82
    const-wide/32 v9, -0x10000001

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_97

    const/16 v9, 0x1e

    if-le v3, v9, :cond_92

    const/16 v3, 0x1e

    :cond_92
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_7f

    :cond_97
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_7f

    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_7f

    :pswitch_a9
    const/16 v9, 0x1d

    if-le v3, v9, :cond_7f

    const/16 v3, 0x1d

    goto :goto_7f

    :pswitch_b0
    const-wide/32 v9, -0x10000001

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7f

    const/16 v9, 0x1e

    if-le v3, v9, :cond_c0

    const/16 v3, 0x1e

    :cond_c0
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_7f

    :cond_c5
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    :cond_d3
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_12a

    :cond_dc
    :goto_dc
    if-ne v1, v8, :cond_d3

    goto/16 :goto_32

    :pswitch_e0
    sget-object v9, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_dc

    const/16 v9, 0x1e

    if-le v3, v9, :cond_f1

    const/16 v3, 0x1e

    :cond_f1
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_dc

    :pswitch_f6
    sget-object v9, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_dc

    const/16 v9, 0x1d

    if-le v3, v9, :cond_dc

    const/16 v3, 0x1d

    goto :goto_dc

    :cond_108
    :try_start_108
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_110
    .catch Ljava/io/IOException; {:try_start_108 .. :try_end_110} :catch_112

    goto/16 :goto_d

    :catch_112
    move-exception v9

    move-object v0, v9

    goto/16 :goto_49

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

    :pswitch_data_12a
    .packed-switch 0x0
        :pswitch_e0
        :pswitch_f6
        :pswitch_e0
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_0()I
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-char v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_58

    invoke-direct {p0, v2, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_b
    return v0

    :sswitch_c
    const/4 v0, 0x2

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_b

    :sswitch_12
    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_b

    :sswitch_17
    const/16 v0, 0x1c

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_b

    :sswitch_1e
    const/16 v0, 0x13

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_b

    :sswitch_25
    const/4 v0, 0x3

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_b

    :sswitch_2b
    const/16 v0, 0x9

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_b

    :sswitch_32
    const/4 v0, 0x4

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_b

    :sswitch_38
    const/4 v0, 0x5

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_b

    :sswitch_3e
    const/4 v0, 0x6

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_b

    :sswitch_44
    const/4 v0, 0x7

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_b

    :sswitch_4a
    const/16 v0, 0x8

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_b

    :sswitch_51
    const/16 v0, 0xf

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_b

    :sswitch_data_58
    .sparse-switch
        0xa -> :sswitch_c
        0xd -> :sswitch_12
        0x22 -> :sswitch_17
        0x28 -> :sswitch_1e
        0x2c -> :sswitch_25
        0x2e -> :sswitch_2b
        0x3a -> :sswitch_32
        0x3b -> :sswitch_38
        0x3c -> :sswitch_3e
        0x3e -> :sswitch_44
        0x40 -> :sswitch_4a
        0x5b -> :sswitch_51
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa0_1()I
    .registers 3

    const/4 v1, 0x0

    iget-char v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_12

    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    :goto_a
    return v0

    :pswitch_b
    const/16 v0, 0x12

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    :pswitch_data_12
    .packed-switch 0x5d
        :pswitch_b
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_2()I
    .registers 3

    const/4 v1, 0x0

    iget-char v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_1a

    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    :goto_a
    return v0

    :pswitch_b
    const/16 v0, 0x16

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    :pswitch_12
    const/16 v0, 0x14

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

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

    iget-char v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_1a

    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    :goto_a
    return v0

    :pswitch_b
    const/16 v0, 0x19

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    :pswitch_12
    const/16 v0, 0x1a

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    nop

    :pswitch_data_1a
    .packed-switch 0x28
        :pswitch_b
        :pswitch_12
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_4()I
    .registers 3

    const/4 v1, 0x0

    iget-char v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_12

    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_4(II)I

    move-result v0

    :goto_a
    return v0

    :pswitch_b
    const/16 v0, 0x1f

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    :pswitch_data_12
    .packed-switch 0x22
        :pswitch_b
    .end packed-switch
.end method

.method private final jjStartNfaWithStates_0(III)I
    .registers 6

    iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    :try_start_4
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_0(II)I

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

    iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    :try_start_4
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_1(II)I

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

    iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    :try_start_4
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_2(II)I

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

    iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    :try_start_4
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_3(II)I

    move-result v1

    :goto_12
    return v1

    :catch_13
    move-exception v1

    move-object v0, v1

    add-int/lit8 v1, p1, 0x1

    goto :goto_12
.end method

.method private final jjStartNfaWithStates_4(III)I
    .registers 6

    iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    :try_start_4
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_4(II)I

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

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_1(IJ)I
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_2(IJ)I
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopStringLiteralDfa_2(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_3(IJ)I
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopStringLiteralDfa_3(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_4(IJ)I
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopStringLiteralDfa_4(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_4(II)I

    move-result v0

    return v0
.end method

.method private final jjStopAtPos(II)I
    .registers 4

    iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

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

.method private final jjStopStringLiteralDfa_4(IJ)I
    .registers 5

    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method MoreLexicalActions()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_142

    :cond_13
    :goto_13
    :pswitch_13
    return-void

    :pswitch_14
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_1f
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_13

    :pswitch_3b
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_46

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_46
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_13

    :pswitch_62
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_6d

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_6d
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    sput v5, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    goto :goto_13

    :pswitch_7f
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_8a

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_8a
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_13

    :pswitch_a7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_b2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_b2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    sget v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    goto/16 :goto_13

    :pswitch_c9
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_d4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_d4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    sget v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    sub-int/2addr v0, v5

    sput v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    sget v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    if-nez v0, :cond_13

    invoke-virtual {p0, v4}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_13

    :pswitch_f1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_fc

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_fc
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_13

    :pswitch_119
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_124

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_124
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_13

    nop

    :pswitch_data_142
    .packed-switch 0x10
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_3b
        :pswitch_62
        :pswitch_13
        :pswitch_7f
        :pswitch_a7
        :pswitch_c9
        :pswitch_13
        :pswitch_f1
        :pswitch_119
    .end packed-switch
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->defaultLexState:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInitRounds()V

    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;I)V
    .registers 3

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;)V

    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method public SwitchTo(I)V
    .registers 5

    const/4 v0, 0x5

    if-ge p1, v0, :cond_5

    if-gez p1, :cond_25

    :cond_5
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;

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

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_25
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    return-void
.end method

.method TokenLexicalActions(Lorg/apache/james/mime4j/field/address/parser/Token;)V
    .registers 6

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    sparse-switch v0, :sswitch_data_60

    :goto_5
    return-void

    :sswitch_6
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_11
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    goto :goto_5

    :sswitch_2e
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_39

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_39
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    goto :goto_5

    nop

    :sswitch_data_60
    .sparse-switch
        0x12 -> :sswitch_6
        0x1f -> :sswitch_2e
    .end sparse-switch
.end method

.method public getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;
    .registers 15

    const/4 v13, 0x0

    const/4 v8, 0x0

    :cond_2
    :goto_2
    :try_start_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->BeginToken()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_a} :catch_5f

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    :goto_10
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    packed-switch v0, :pswitch_data_17e

    :goto_15
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_120

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v8, :cond_2d

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    sub-int v1, v8, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->backup(I)V

    :cond_2d
    sget-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoToken:[J

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v1, v1, 0x6

    aget-wide v6, v0, v1

    const-wide/16 v9, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v9, v0

    and-long/2addr v6, v9

    const-wide/16 v9, 0x0

    cmp-long v0, v6, v9

    if-eqz v0, :cond_af

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v11

    iput-object v13, v11, Lorg/apache/james/mime4j/field/address/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-virtual {p0, v11}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->TokenLexicalActions(Lorg/apache/james/mime4j/field/address/parser/Token;)V

    sget-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5d

    sget-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    :cond_5d
    move-object v12, v11

    :goto_5e
    return-object v12

    :catch_5f
    move-exception v0

    move-object v9, v0

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v11

    iput-object v13, v11, Lorg/apache/james/mime4j/field/address/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    move-object v12, v11

    goto :goto_5e

    :pswitch_6c
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v8

    goto :goto_15

    :pswitch_79
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v8

    goto :goto_15

    :pswitch_86
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v8

    goto :goto_15

    :pswitch_93
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v8

    goto/16 :goto_15

    :pswitch_a1
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveStringLiteralDfa0_4()I

    move-result v8

    goto/16 :goto_15

    :cond_af
    sget-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoSkip:[J

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v1, v1, 0x6

    aget-wide v6, v0, v1

    const-wide/16 v9, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v9, v0

    and-long/2addr v6, v9

    const-wide/16 v9, 0x0

    cmp-long v0, v6, v9

    if-eqz v0, :cond_fb

    sget-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoSpecial:[J

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v1, v1, 0x6

    aget-wide v6, v0, v1

    const-wide/16 v9, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v9, v0

    and-long/2addr v6, v9

    const-wide/16 v9, 0x0

    cmp-long v0, v6, v9

    if-eqz v0, :cond_e2

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v11

    if-nez v13, :cond_f5

    move-object v13, v11

    :cond_e2
    :goto_e2
    sget-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    sget-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    goto/16 :goto_2

    :cond_f5
    iput-object v13, v11, Lorg/apache/james/mime4j/field/address/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v11, v13, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    move-object v13, v11

    goto :goto_e2

    :cond_fb
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->MoreLexicalActions()V

    sget-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10f

    sget-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    :cond_10f
    const/4 v8, 0x0

    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    :try_start_115
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_115 .. :try_end_11d} :catch_11f

    goto/16 :goto_10

    :catch_11f
    move-exception v0

    :cond_120
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->getEndLine()I

    move-result v3

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->getEndColumn()I

    move-result v4

    const/4 v5, 0x0

    const/4 v1, 0x0

    :try_start_12e
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->backup(I)V
    :try_end_139
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_139} :catch_152

    :goto_139
    if-nez v1, :cond_147

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->backup(I)V

    const/4 v0, 0x1

    if-gt v8, v0, :cond_176

    const-string v0, ""

    move-object v5, v0

    :cond_147
    :goto_147
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    iget-char v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v0

    :catch_152
    move-exception v0

    move-object v10, v0

    const/4 v1, 0x1

    const/4 v0, 0x1

    if-gt v8, v0, :cond_16b

    const-string v0, ""

    move-object v5, v0

    :goto_15b
    iget-char v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v2, 0xa

    if-eq v0, v2, :cond_167

    iget-char v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v2, 0xd

    if-ne v0, v2, :cond_173

    :cond_167
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    goto :goto_139

    :cond_16b
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_15b

    :cond_173
    add-int/lit8 v4, v4, 0x1

    goto :goto_139

    :cond_176
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_147

    :pswitch_data_17e
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_79
        :pswitch_86
        :pswitch_93
        :pswitch_a1
    .end packed-switch
.end method

.method protected jjFillToken()Lorg/apache/james/mime4j/field/address/parser/Token;
    .registers 5

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    invoke-static {v2}, Lorg/apache/james/mime4j/field/address/parser/Token;->newToken(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v1

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    iput v2, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    sget-object v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget-object v0, v2, v3

    if-nez v0, :cond_3b

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v2

    :goto_18
    iput-object v2, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->getBeginLine()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->beginLine:I

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->getBeginColumn()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->beginColumn:I

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->getEndLine()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->endLine:I

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->getEndColumn()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->endColumn:I

    return-object v1

    :cond_3b
    move-object v2, v0

    goto :goto_18
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
