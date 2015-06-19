.class public final Lorg/codehaus/jackson/util/CharTypes;
.super Ljava/lang/Object;


# static fields
.field static final HEX_CHARS:[C

.field static final sHexValues:[I

.field static final sInputCodes:[I

.field static final sInputCodesComment:[I

.field static final sInputCodesUtf8:[I

.field static final sOutputEscapes:[I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/16 v8, 0x100

    const/16 v7, 0xa

    const/4 v6, -0x1

    const/16 v5, 0x80

    const/4 v4, 0x0

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/util/CharTypes;->HEX_CHARS:[C

    new-array v0, v8, [I

    move v1, v4

    :goto_13
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1c

    aput v6, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_1c
    const/16 v1, 0x22

    const/4 v2, 0x1

    aput v2, v0, v1

    const/16 v1, 0x5c

    const/4 v2, 0x1

    aput v2, v0, v1

    sput-object v0, Lorg/codehaus/jackson/util/CharTypes;->sInputCodes:[I

    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->sInputCodes:[I

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lorg/codehaus/jackson/util/CharTypes;->sInputCodes:[I

    sget-object v2, Lorg/codehaus/jackson/util/CharTypes;->sInputCodes:[I

    array-length v2, v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v5

    :goto_36
    if-ge v1, v8, :cond_56

    and-int/lit16 v2, v1, 0xe0

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_44

    const/4 v2, 0x2

    :goto_3f
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_44
    and-int/lit16 v2, v1, 0xf0

    const/16 v3, 0xe0

    if-ne v2, v3, :cond_4c

    const/4 v2, 0x3

    goto :goto_3f

    :cond_4c
    and-int/lit16 v2, v1, 0xf8

    const/16 v3, 0xf0

    if-ne v2, v3, :cond_54

    const/4 v2, 0x4

    goto :goto_3f

    :cond_54
    move v2, v6

    goto :goto_3f

    :cond_56
    sput-object v0, Lorg/codehaus/jackson/util/CharTypes;->sInputCodesUtf8:[I

    new-array v0, v8, [I

    sput-object v0, Lorg/codehaus/jackson/util/CharTypes;->sInputCodesComment:[I

    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->sInputCodesUtf8:[I

    sget-object v1, Lorg/codehaus/jackson/util/CharTypes;->sInputCodesComment:[I

    invoke-static {v0, v5, v1, v5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->sInputCodesComment:[I

    const/16 v1, 0x20

    invoke-static {v0, v4, v1, v6}, Ljava/util/Arrays;->fill([IIII)V

    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->sInputCodesComment:[I

    const/16 v1, 0x9

    aput v4, v0, v1

    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->sInputCodesComment:[I

    aput v7, v0, v7

    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->sInputCodesComment:[I

    const/16 v1, 0xd

    const/16 v2, 0xd

    aput v2, v0, v1

    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->sInputCodesComment:[I

    const/16 v1, 0x2a

    const/16 v2, 0x2a

    aput v2, v0, v1

    new-array v0, v8, [I

    move v1, v4

    :goto_87
    const/16 v2, 0x20

    if-ge v1, v2, :cond_93

    add-int/lit8 v2, v1, 0x1

    neg-int v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_87

    :cond_93
    const/16 v1, 0x22

    const/16 v2, 0x22

    aput v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0x5c

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x62

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x74

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x66

    aput v2, v0, v1

    const/16 v1, 0x6e

    aput v1, v0, v7

    const/16 v1, 0xd

    const/16 v2, 0x72

    aput v2, v0, v1

    sput-object v0, Lorg/codehaus/jackson/util/CharTypes;->sOutputEscapes:[I

    new-array v0, v5, [I

    sput-object v0, Lorg/codehaus/jackson/util/CharTypes;->sHexValues:[I

    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->sHexValues:[I

    invoke-static {v0, v6}, Ljava/util/Arrays;->fill([II)V

    move v0, v4

    :goto_c7
    if-ge v0, v7, :cond_d2

    sget-object v1, Lorg/codehaus/jackson/util/CharTypes;->sHexValues:[I

    add-int/lit8 v2, v0, 0x30

    aput v0, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_c7

    :cond_d2
    move v0, v4

    :goto_d3
    const/4 v1, 0x6

    if-ge v0, v1, :cond_e9

    sget-object v1, Lorg/codehaus/jackson/util/CharTypes;->sHexValues:[I

    add-int/lit8 v2, v0, 0x61

    add-int/lit8 v3, v0, 0xa

    aput v3, v1, v2

    sget-object v1, Lorg/codehaus/jackson/util/CharTypes;->sHexValues:[I

    add-int/lit8 v2, v0, 0x41

    add-int/lit8 v3, v0, 0xa

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d3

    :cond_e9
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 10

    const/16 v7, 0x30

    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->sOutputEscapes:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_a
    if-ge v2, v3, :cond_4b

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ge v4, v1, :cond_16

    aget v5, v0, v4

    if-nez v5, :cond_1c

    :cond_16
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1c
    const/16 v5, 0x5c

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget v4, v0, v4

    if-gez v4, :cond_46

    const/16 v5, 0x75

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    neg-int v4, v4

    sget-object v5, Lorg/codehaus/jackson/util/CharTypes;->HEX_CHARS:[C

    shr-int/lit8 v6, v4, 0x4

    aget-char v5, v5, v6

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v5, Lorg/codehaus/jackson/util/CharTypes;->HEX_CHARS:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v5, v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_19

    :cond_46
    int-to-char v4, v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_19

    :cond_4b
    return-void
.end method

.method public static charToHex(I)I
    .registers 2

    const/16 v0, 0x7f

    if-le p0, v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->sHexValues:[I

    aget v0, v0, p0

    goto :goto_5
.end method

.method public static final getInputCodeComment()[I
    .registers 1

    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->sInputCodesComment:[I

    return-object v0
.end method

.method public static final getInputCodeLatin1()[I
    .registers 1

    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->sInputCodes:[I

    return-object v0
.end method

.method public static final getInputCodeUtf8()[I
    .registers 1

    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->sInputCodesUtf8:[I

    return-object v0
.end method

.method public static final getOutputEscapes()[I
    .registers 1

    sget-object v0, Lorg/codehaus/jackson/util/CharTypes;->sOutputEscapes:[I

    return-object v0
.end method
