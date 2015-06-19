.class public Lcom/glympse/android/lib/json/JsonTokener;
.super Ljava/lang/Object;
.source "JsonTokener.java"

# interfaces
.implements Lcom/glympse/android/core/GCommon;


# instance fields
.field private _buffer:[C

.field private _end:I

.field private uU:Lcom/glympse/android/lib/json/JsonToken;

.field private vc:I

.field private vd:Ljava/lang/String;

.field private ve:Ljava/lang/String;

.field private vf:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/glympse/android/lib/json/JsonToken;

    invoke-direct {v0}, Lcom/glympse/android/lib/json/JsonToken;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/json/JsonTokener;->uU:Lcom/glympse/android/lib/json/JsonToken;

    const-string v0, "rue"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/json/JsonTokener;->vd:Ljava/lang/String;

    const-string v0, "alse"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/json/JsonTokener;->ve:Ljava/lang/String;

    const-string v0, "ull"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/json/JsonTokener;->vf:Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/lang/String;I)Z
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    check-cast v0, [C

    iget v2, p0, Lcom/glympse/android/lib/json/JsonTokener;->_end:I

    iget v3, p0, Lcom/glympse/android/lib/json/JsonTokener;->vc:I

    sub-int/2addr v2, v3

    if-ge v2, p2, :cond_10

    move v0, v1

    :goto_f
    return v0

    :cond_10
    move v2, p2

    :goto_11
    add-int/lit8 v3, v2, -0x1

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/glympse/android/lib/json/JsonTokener;->_buffer:[C

    iget v4, p0, Lcom/glympse/android/lib/json/JsonTokener;->vc:I

    add-int/2addr v4, v3

    aget-char v2, v2, v4

    aget-char v4, v0, v3

    if-eq v2, v4, :cond_29

    move v0, v1

    goto :goto_f

    :cond_22
    iget v0, p0, Lcom/glympse/android/lib/json/JsonTokener;->vc:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/glympse/android/lib/json/JsonTokener;->vc:I

    const/4 v0, 0x1

    goto :goto_f

    :cond_29
    move v2, v3

    goto :goto_11
.end method

.method private df()C
    .registers 4

    iget v0, p0, Lcom/glympse/android/lib/json/JsonTokener;->vc:I

    iget v1, p0, Lcom/glympse/android/lib/json/JsonTokener;->_end:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/glympse/android/lib/json/JsonTokener;->_buffer:[C

    iget v1, p0, Lcom/glympse/android/lib/json/JsonTokener;->vc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/glympse/android/lib/json/JsonTokener;->vc:I

    aget-char v0, v0, v1

    goto :goto_7
.end method

.method private dg()Z
    .registers 6

    const/16 v4, 0x22

    const/4 v1, 0x0

    move v0, v1

    :cond_4
    :goto_4
    iget v2, p0, Lcom/glympse/android/lib/json/JsonTokener;->vc:I

    iget v3, p0, Lcom/glympse/android/lib/json/JsonTokener;->_end:I

    if-eq v2, v3, :cond_18

    invoke-direct {p0}, Lcom/glympse/android/lib/json/JsonTokener;->df()C

    move-result v0

    const/16 v2, 0x5c

    if-ne v0, v2, :cond_16

    invoke-direct {p0}, Lcom/glympse/android/lib/json/JsonTokener;->df()C

    goto :goto_4

    :cond_16
    if-ne v0, v4, :cond_4

    :cond_18
    if-ne v0, v4, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method private dh()Z
    .registers 4

    invoke-direct {p0}, Lcom/glympse/android/lib/json/JsonTokener;->df()C

    move-result v1

    const/4 v0, 0x0

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_e

    invoke-direct {p0}, Lcom/glympse/android/lib/json/JsonTokener;->di()Z

    move-result v0

    :cond_d
    :goto_d
    return v0

    :cond_e
    const/16 v2, 0x2f

    if-ne v1, v2, :cond_d

    invoke-direct {p0}, Lcom/glympse/android/lib/json/JsonTokener;->dj()Z

    move-result v0

    goto :goto_d
.end method

.method private di()Z
    .registers 4

    const/16 v2, 0x2f

    :cond_2
    iget v0, p0, Lcom/glympse/android/lib/json/JsonTokener;->vc:I

    iget v1, p0, Lcom/glympse/android/lib/json/JsonTokener;->_end:I

    if-eq v0, v1, :cond_18

    invoke-direct {p0}, Lcom/glympse/android/lib/json/JsonTokener;->df()C

    move-result v0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/glympse/android/lib/json/JsonTokener;->_buffer:[C

    iget v1, p0, Lcom/glympse/android/lib/json/JsonTokener;->vc:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_2

    :cond_18
    invoke-direct {p0}, Lcom/glympse/android/lib/json/JsonTokener;->df()C

    move-result v0

    if-ne v0, v2, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private dj()Z
    .registers 3

    :cond_0
    iget v0, p0, Lcom/glympse/android/lib/json/JsonTokener;->vc:I

    iget v1, p0, Lcom/glympse/android/lib/json/JsonTokener;->_end:I

    if-eq v0, v1, :cond_12

    invoke-direct {p0}, Lcom/glympse/android/lib/json/JsonTokener;->df()C

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_12

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method private dk()V
    .registers 7

    :goto_0
    iget v0, p0, Lcom/glympse/android/lib/json/JsonTokener;->vc:I

    iget v1, p0, Lcom/glympse/android/lib/json/JsonTokener;->_end:I

    if-eq v0, v1, :cond_31

    iget-object v0, p0, Lcom/glympse/android/lib/json/JsonTokener;->_buffer:[C

    iget v1, p0, Lcom/glympse/android/lib/json/JsonTokener;->vc:I

    aget-char v0, v0, v1

    const/16 v1, 0x30

    if-lt v0, v1, :cond_14

    const/16 v1, 0x39

    if-le v0, v1, :cond_2a

    :cond_14
    const/16 v1, 0x2e

    const/16 v2, 0x65

    const/16 v3, 0x45

    const/16 v4, 0x2b

    const/16 v5, 0x2d

    invoke-static/range {v0 .. v5}, Lcom/glympse/android/lib/json/JsonTokener;->within(CCCCCC)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/glympse/android/lib/json/JsonTokener;->uU:Lcom/glympse/android/lib/json/JsonToken;

    const/16 v1, 0x8

    iput v1, v0, Lcom/glympse/android/lib/json/JsonToken;->_type:I

    :cond_2a
    iget v0, p0, Lcom/glympse/android/lib/json/JsonTokener;->vc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/glympse/android/lib/json/JsonTokener;->vc:I

    goto :goto_0

    :cond_31
    return-void
.end method

.method public static within(CCCCC)Z
    .registers 6

    if-eq p0, p1, :cond_8

    if-eq p0, p2, :cond_8

    if-eq p0, p3, :cond_8

    if-ne p0, p4, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static within(CCCCCC)Z
    .registers 7

    if-eq p0, p1, :cond_a

    if-eq p0, p2, :cond_a

    if-eq p0, p3, :cond_a

    if-eq p0, p4, :cond_a

    if-ne p0, p5, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public getCurrentChar()C
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/json/JsonTokener;->_buffer:[C

    iget v1, p0, Lcom/glympse/android/lib/json/JsonTokener;->vc:I

    aget-char v0, v0, v1

    return v0
.end method

.method public getToken()Lcom/glympse/android/lib/json/JsonToken;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/json/JsonTokener;->uU:Lcom/glympse/android/lib/json/JsonToken;

    return-object v0
.end method

.method public init([CII)V
    .registers 5

    iput-object p1, p0, Lcom/glympse/android/lib/json/JsonTokener;->_buffer:[C

    iput p2, p0, Lcom/glympse/android/lib/json/JsonTokener;->vc:I

    iput p3, p0, Lcom/glympse/android/lib/json/JsonTokener;->_end:I

    iget-object v0, p0, Lcom/glympse/android/lib/json/JsonTokener;->uU:Lcom/glympse/android/lib/json/JsonToken;

    iput-object p1, v0, Lcom/glympse/android/lib/json/JsonToken;->_buffer:[C

    return-void
.end method

.method public readToken()Z
    .registers 6

    const/4 v4, 0x4

    const/4 v0, 0x1

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/glympse/android/lib/json/JsonTokener;->skipSpaces()V

    iget-object v1, p0, Lcom/glympse/android/lib/json/JsonTokener;->uU:Lcom/glympse/android/lib/json/JsonToken;

    iget v2, p0, Lcom/glympse/android/lib/json/JsonTokener;->vc:I

    iput v2, v1, Lcom/glympse/android/lib/json/JsonToken;->_start:I

    invoke-direct {p0}, Lcom/glympse/android/lib/json/JsonTokener;->df()C

    move-result v1

    sparse-switch v1, :sswitch_data_92

    const/4 v0, 0x0

    :goto_14
    if-nez v0, :cond_1c

    iget-object v1, p0, Lcom/glympse/android/lib/json/JsonTokener;->uU:Lcom/glympse/android/lib/json/JsonToken;

    const/16 v2, 0xf

    iput v2, v1, Lcom/glympse/android/lib/json/JsonToken;->_type:I

    :cond_1c
    iget-object v1, p0, Lcom/glympse/android/lib/json/JsonTokener;->uU:Lcom/glympse/android/lib/json/JsonToken;

    iget v2, p0, Lcom/glympse/android/lib/json/JsonTokener;->vc:I

    iput v2, v1, Lcom/glympse/android/lib/json/JsonToken;->_end:I

    return v0

    :sswitch_23
    iget-object v1, p0, Lcom/glympse/android/lib/json/JsonTokener;->uU:Lcom/glympse/android/lib/json/JsonToken;

    const/4 v2, 0x2

    iput v2, v1, Lcom/glympse/android/lib/json/JsonToken;->_type:I

    goto :goto_14

    :sswitch_29
    iget-object v1, p0, Lcom/glympse/android/lib/json/JsonTokener;->uU:Lcom/glympse/android/lib/json/JsonToken;

    iput v3, v1, Lcom/glympse/android/lib/json/JsonToken;->_type:I

    goto :goto_14

    :sswitch_2e
    iget-object v1, p0, Lcom/glympse/android/lib/json/JsonTokener;->uU:Lcom/glympse/android/lib/json/JsonToken;

    iput v4, v1, Lcom/glympse/android/lib/json/JsonToken;->_type:I

    goto :goto_14

    :sswitch_33
    iget-object v1, p0, Lcom/glympse/android/lib/json/JsonTokener;->uU:Lcom/glympse/android/lib/json/JsonToken;

    const/4 v2, 0x5

    iput v2, v1, Lcom/glympse/android/lib/json/JsonToken;->_type:I

    goto :goto_14

    :sswitch_39
    iget-object v0, p0, Lcom/glympse/android/lib/json/JsonTokener;->uU:Lcom/glympse/android/lib/json/JsonToken;

    const/4 v1, 0x6

    iput v1, v0, Lcom/glympse/android/lib/json/JsonToken;->_type:I

    invoke-direct {p0}, Lcom/glympse/android/lib/json/JsonTokener;->dg()Z

    move-result v0

    goto :goto_14

    :sswitch_43
    iget-object v0, p0, Lcom/glympse/android/lib/json/JsonTokener;->uU:Lcom/glympse/android/lib/json/JsonToken;

    const/16 v1, 0xe

    iput v1, v0, Lcom/glympse/android/lib/json/JsonToken;->_type:I

    invoke-direct {p0}, Lcom/glympse/android/lib/json/JsonTokener;->dh()Z

    move-result v0

    goto :goto_14

    :sswitch_4e
    iget-object v1, p0, Lcom/glympse/android/lib/json/JsonTokener;->uU:Lcom/glympse/android/lib/json/JsonToken;

    const/4 v2, 0x7

    iput v2, v1, Lcom/glympse/android/lib/json/JsonToken;->_type:I

    invoke-direct {p0}, Lcom/glympse/android/lib/json/JsonTokener;->dk()V

    goto :goto_14

    :sswitch_57
    iget-object v0, p0, Lcom/glympse/android/lib/json/JsonTokener;->uU:Lcom/glympse/android/lib/json/JsonToken;

    const/16 v1, 0x9

    iput v1, v0, Lcom/glympse/android/lib/json/JsonToken;->_type:I

    iget-object v0, p0, Lcom/glympse/android/lib/json/JsonTokener;->vd:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/glympse/android/lib/json/JsonTokener;->b(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_14

    :sswitch_64
    iget-object v0, p0, Lcom/glympse/android/lib/json/JsonTokener;->uU:Lcom/glympse/android/lib/json/JsonToken;

    const/16 v1, 0xa

    iput v1, v0, Lcom/glympse/android/lib/json/JsonToken;->_type:I

    iget-object v0, p0, Lcom/glympse/android/lib/json/JsonTokener;->ve:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lcom/glympse/android/lib/json/JsonTokener;->b(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_14

    :sswitch_71
    iget-object v0, p0, Lcom/glympse/android/lib/json/JsonTokener;->uU:Lcom/glympse/android/lib/json/JsonToken;

    const/16 v1, 0xb

    iput v1, v0, Lcom/glympse/android/lib/json/JsonToken;->_type:I

    iget-object v0, p0, Lcom/glympse/android/lib/json/JsonTokener;->vf:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/glympse/android/lib/json/JsonTokener;->b(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_14

    :sswitch_7e
    iget-object v1, p0, Lcom/glympse/android/lib/json/JsonTokener;->uU:Lcom/glympse/android/lib/json/JsonToken;

    const/16 v2, 0xc

    iput v2, v1, Lcom/glympse/android/lib/json/JsonToken;->_type:I

    goto :goto_14

    :sswitch_85
    iget-object v1, p0, Lcom/glympse/android/lib/json/JsonTokener;->uU:Lcom/glympse/android/lib/json/JsonToken;

    const/16 v2, 0xd

    iput v2, v1, Lcom/glympse/android/lib/json/JsonToken;->_type:I

    goto :goto_14

    :sswitch_8c
    iget-object v1, p0, Lcom/glympse/android/lib/json/JsonTokener;->uU:Lcom/glympse/android/lib/json/JsonToken;

    iput v0, v1, Lcom/glympse/android/lib/json/JsonToken;->_type:I

    goto :goto_14

    nop

    :sswitch_data_92
    .sparse-switch
        0x0 -> :sswitch_8c
        0x22 -> :sswitch_39
        0x2c -> :sswitch_7e
        0x2d -> :sswitch_4e
        0x2f -> :sswitch_43
        0x30 -> :sswitch_4e
        0x31 -> :sswitch_4e
        0x32 -> :sswitch_4e
        0x33 -> :sswitch_4e
        0x34 -> :sswitch_4e
        0x35 -> :sswitch_4e
        0x36 -> :sswitch_4e
        0x37 -> :sswitch_4e
        0x38 -> :sswitch_4e
        0x39 -> :sswitch_4e
        0x3a -> :sswitch_85
        0x5b -> :sswitch_2e
        0x5d -> :sswitch_33
        0x66 -> :sswitch_64
        0x6e -> :sswitch_71
        0x74 -> :sswitch_57
        0x7b -> :sswitch_23
        0x7d -> :sswitch_29
    .end sparse-switch
.end method

.method public skipSpaces()V
    .registers 3

    :goto_0
    iget v0, p0, Lcom/glympse/android/lib/json/JsonTokener;->vc:I

    iget v1, p0, Lcom/glympse/android/lib/json/JsonTokener;->_end:I

    if-eq v0, v1, :cond_23

    iget-object v0, p0, Lcom/glympse/android/lib/json/JsonTokener;->_buffer:[C

    iget v1, p0, Lcom/glympse/android/lib/json/JsonTokener;->vc:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1c

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1c

    const/16 v1, 0xa

    if-ne v0, v1, :cond_23

    :cond_1c
    iget v0, p0, Lcom/glympse/android/lib/json/JsonTokener;->vc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/glympse/android/lib/json/JsonTokener;->vc:I

    goto :goto_0

    :cond_23
    return-void
.end method
