.class Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DIR_TYPE_CACHE:[B = null

.field private static final DIR_TYPE_CACHE_SIZE:I = 0x700


# instance fields
.field private charIndex:I

.field private final isHtml:Z

.field private lastChar:C

.field private final length:I

.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v3, 0x700

    new-array v0, v3, [B

    sput-object v0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v3, :cond_14

    sget-object v1, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_14
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iput-boolean p2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    return-void
.end method

.method private static getCachedDirectionality(C)B
    .registers 2

    const/16 v0, 0x700

    if-ge p0, v0, :cond_9

    sget-object v0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    aget-byte v0, v0, p0

    :goto_8
    return v0

    :cond_9
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    goto :goto_8
.end method

.method private skipEntityBackward()B
    .registers 5

    const/16 v3, 0x3b

    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    :cond_4
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v1, :cond_23

    iget-object v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x26

    if-ne v1, v2, :cond_1f

    const/16 v0, 0xc

    :goto_1e
    return v0

    :cond_1f
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-ne v1, v3, :cond_4

    :cond_23
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iput-char v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v0, 0xd

    goto :goto_1e
.end method

.method private skipEntityForward()B
    .registers 4

    :cond_0
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v0, v1, :cond_18

    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    :cond_18
    const/16 v0, 0xc

    return v0
.end method

.method private skipTagBackward()B
    .registers 6

    const/16 v4, 0x3e

    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    :cond_4
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v1, :cond_23

    iget-object v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_1f

    const/16 v0, 0xc

    :goto_1e
    return v0

    :cond_1f
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-ne v1, v4, :cond_2a

    :cond_23
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iput-char v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v0, 0xd

    goto :goto_1e

    :cond_2a
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x22

    if-eq v1, v2, :cond_36

    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x27

    if-ne v1, v2, :cond_4

    :cond_36
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    :goto_38
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_4

    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v2, v1, :cond_4

    goto :goto_38
.end method

.method private skipTagForward()B
    .registers 6

    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    :cond_2
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v1, v2, :cond_44

    iget-object v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_1f

    const/16 v0, 0xc

    :goto_1e
    return v0

    :cond_1f
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x22

    if-eq v1, v2, :cond_2b

    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x27

    if-ne v1, v2, :cond_2

    :cond_2b
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    :goto_2d
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v2, v1, :cond_2

    goto :goto_2d

    :cond_44
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/16 v0, 0x3c

    iput-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v0, 0xd

    goto :goto_1e
.end method


# virtual methods
.method dirTypeBackward()B
    .registers 4

    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    iget-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    :cond_29
    :goto_29
    return v0

    :cond_2a
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v0

    iget-boolean v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v1, :cond_29

    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_45

    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipTagBackward()B

    move-result v0

    goto :goto_29

    :cond_45
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_29

    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipEntityBackward()B

    move-result v0

    goto :goto_29
.end method

.method dirTypeForward()B
    .registers 4

    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    iget-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    :cond_27
    :goto_27
    return v0

    :cond_28
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v0

    iget-boolean v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v1, :cond_27

    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_43

    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipTagForward()B

    move-result v0

    goto :goto_27

    :cond_43
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x26

    if-ne v1, v2, :cond_27

    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipEntityForward()B

    move-result v0

    goto :goto_27
.end method

.method getEntryDir()I
    .registers 9

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move v0, v1

    move v3, v1

    move v2, v1

    :goto_8
    :pswitch_8
    iget v6, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v7, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v6, v7, :cond_30

    if-nez v0, :cond_30

    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeForward()B

    move-result v6

    packed-switch v6, :pswitch_data_56

    :pswitch_17
    move v0, v2

    goto :goto_8

    :pswitch_19
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_8

    :pswitch_1d
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_8

    :pswitch_21
    add-int/lit8 v2, v2, -0x1

    move v3, v1

    goto :goto_8

    :pswitch_25
    if-nez v2, :cond_28

    :cond_27
    :goto_27
    return v4

    :cond_28
    move v0, v2

    goto :goto_8

    :pswitch_2a
    if-nez v2, :cond_2e

    move v4, v5

    goto :goto_27

    :cond_2e
    move v0, v2

    goto :goto_8

    :cond_30
    if-nez v0, :cond_34

    move v4, v1

    goto :goto_27

    :cond_34
    if-eqz v3, :cond_38

    move v4, v3

    goto :goto_27

    :cond_38
    :goto_38
    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v3, :cond_53

    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v3

    packed-switch v3, :pswitch_data_80

    goto :goto_38

    :pswitch_44
    if-eq v0, v2, :cond_27

    add-int/lit8 v2, v2, -0x1

    goto :goto_38

    :pswitch_49
    if-ne v0, v2, :cond_4d

    move v4, v5

    goto :goto_27

    :cond_4d
    add-int/lit8 v2, v2, -0x1

    goto :goto_38

    :pswitch_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    :cond_53
    move v4, v1

    goto :goto_27

    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_25
        :pswitch_2a
        :pswitch_2a
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_8
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_19
        :pswitch_19
        :pswitch_1d
        :pswitch_1d
        :pswitch_21
    .end packed-switch

    :pswitch_data_80
    .packed-switch 0xe
        :pswitch_44
        :pswitch_44
        :pswitch_49
        :pswitch_49
        :pswitch_50
    .end packed-switch
.end method

.method getExitDir()I
    .registers 7

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move v0, v1

    move v2, v1

    :cond_9
    :goto_9
    :pswitch_9
    iget v5, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v5, :cond_1b

    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v5

    packed-switch v5, :pswitch_data_3a

    :pswitch_14
    if-nez v0, :cond_9

    move v0, v2

    goto :goto_9

    :pswitch_18
    if-nez v2, :cond_1c

    move v1, v3

    :cond_1b
    :goto_1b
    return v1

    :cond_1c
    if-nez v0, :cond_9

    move v0, v2

    goto :goto_9

    :pswitch_20
    if-ne v0, v2, :cond_24

    move v1, v3

    goto :goto_1b

    :cond_24
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :pswitch_27
    if-nez v2, :cond_2b

    move v1, v4

    goto :goto_1b

    :cond_2b
    if-nez v0, :cond_9

    move v0, v2

    goto :goto_9

    :pswitch_2f
    if-ne v0, v2, :cond_33

    move v1, v4

    goto :goto_1b

    :cond_33
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :pswitch_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_18
        :pswitch_27
        :pswitch_27
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_9
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_20
        :pswitch_20
        :pswitch_2f
        :pswitch_2f
        :pswitch_36
    .end packed-switch
.end method
