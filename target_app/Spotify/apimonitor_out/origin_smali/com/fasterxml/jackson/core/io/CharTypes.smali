.class public final Lcom/fasterxml/jackson/core/io/CharTypes;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HEX_BYTES:[B

.field private static final HEX_CHARS:[C

.field static final sHexValues:[I

.field static final sInputCodes:[I

.field static final sInputCodesComment:[I

.field static final sInputCodesJsNames:[I

.field static final sInputCodesUtf8:[I

.field static final sInputCodesUtf8JsNames:[I

.field static final sOutputEscapes128:[I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/16 v8, 0xa

    const/4 v1, -0x1

    const/16 v7, 0x100

    const/16 v4, 0x80

    const/4 v2, 0x0

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->HEX_CHARS:[C

    array-length v3, v0

    new-array v0, v3, [B

    sput-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->HEX_BYTES:[B

    move v0, v2

    :goto_16
    if-ge v0, v3, :cond_24

    sget-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->HEX_BYTES:[B

    sget-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->HEX_CHARS:[C

    aget-char v6, v6, v0

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_24
    new-array v3, v7, [I

    move v0, v2

    :goto_27
    const/16 v5, 0x20

    if-ge v0, v5, :cond_30

    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_30
    const/16 v0, 0x22

    const/4 v5, 0x1

    aput v5, v3, v0

    const/16 v0, 0x5c

    const/4 v5, 0x1

    aput v5, v3, v0

    sput-object v3, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodes:[I

    new-array v5, v7, [I

    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodes:[I

    sget-object v3, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodes:[I

    array-length v3, v3

    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v4

    :goto_47
    if-ge v3, v7, :cond_68

    and-int/lit16 v0, v3, 0xe0

    const/16 v6, 0xc0

    if-ne v0, v6, :cond_56

    const/4 v0, 0x2

    :goto_50
    aput v0, v5, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_47

    :cond_56
    and-int/lit16 v0, v3, 0xf0

    const/16 v6, 0xe0

    if-ne v0, v6, :cond_5e

    const/4 v0, 0x3

    goto :goto_50

    :cond_5e
    and-int/lit16 v0, v3, 0xf8

    const/16 v6, 0xf0

    if-ne v0, v6, :cond_66

    const/4 v0, 0x4

    goto :goto_50

    :cond_66
    move v0, v1

    goto :goto_50

    :cond_68
    sput-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUtf8:[I

    new-array v3, v7, [I

    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([II)V

    const/16 v0, 0x21

    :goto_71
    if-ge v0, v7, :cond_7f

    int-to-char v5, v0

    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_7c

    aput v2, v3, v0

    :cond_7c
    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    :cond_7f
    const/16 v0, 0x40

    aput v2, v3, v0

    const/16 v0, 0x23

    aput v2, v3, v0

    const/16 v0, 0x2a

    aput v2, v3, v0

    const/16 v0, 0x2d

    aput v2, v3, v0

    const/16 v0, 0x2b

    aput v2, v3, v0

    sput-object v3, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesJsNames:[I

    new-array v0, v7, [I

    sget-object v3, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesJsNames:[I

    sget-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesJsNames:[I

    array-length v5, v5

    invoke-static {v3, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, v4, v4, v2}, Ljava/util/Arrays;->fill([IIII)V

    sput-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUtf8JsNames:[I

    new-array v0, v7, [I

    sput-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesComment:[I

    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUtf8:[I

    sget-object v3, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesComment:[I

    invoke-static {v0, v4, v3, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesComment:[I

    const/16 v3, 0x20

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesComment:[I

    const/16 v3, 0x9

    aput v2, v0, v3

    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesComment:[I

    aput v8, v0, v8

    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesComment:[I

    const/16 v3, 0xd

    const/16 v5, 0xd

    aput v5, v0, v3

    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesComment:[I

    const/16 v3, 0x2a

    const/16 v5, 0x2a

    aput v5, v0, v3

    new-array v3, v4, [I

    move v0, v2

    :goto_d3
    const/16 v5, 0x20

    if-ge v0, v5, :cond_dc

    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d3

    :cond_dc
    const/16 v0, 0x22

    const/16 v5, 0x22

    aput v5, v3, v0

    const/16 v0, 0x5c

    const/16 v5, 0x5c

    aput v5, v3, v0

    const/16 v0, 0x8

    const/16 v5, 0x62

    aput v5, v3, v0

    const/16 v0, 0x9

    const/16 v5, 0x74

    aput v5, v3, v0

    const/16 v0, 0xc

    const/16 v5, 0x66

    aput v5, v3, v0

    const/16 v0, 0x6e

    aput v0, v3, v8

    const/16 v0, 0xd

    const/16 v5, 0x72

    aput v5, v3, v0

    sput-object v3, Lcom/fasterxml/jackson/core/io/CharTypes;->sOutputEscapes128:[I

    new-array v0, v4, [I

    sput-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    move v0, v2

    :goto_10e
    if-ge v0, v8, :cond_119

    sget-object v1, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    add-int/lit8 v3, v0, 0x30

    aput v0, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_10e

    :cond_119
    move v0, v2

    :goto_11a
    const/4 v1, 0x6

    if-ge v0, v1, :cond_130

    sget-object v1, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    add-int/lit8 v2, v0, 0x61

    add-int/lit8 v3, v0, 0xa

    aput v3, v1, v2

    sget-object v1, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    add-int/lit8 v2, v0, 0x41

    add-int/lit8 v3, v0, 0xa

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_11a

    :cond_130
    return-void
.end method

.method public static appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 10

    const/16 v7, 0x30

    sget-object v1, Lcom/fasterxml/jackson/core/io/CharTypes;->sOutputEscapes128:[I

    array-length v2, v1

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_a
    if-ge v0, v3, :cond_4b

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ge v4, v2, :cond_16

    aget v5, v1, v4

    if-nez v5, :cond_1c

    :cond_16
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1c
    const/16 v5, 0x5c

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget v4, v1, v4

    if-gez v4, :cond_46

    const/16 v5, 0x75

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    neg-int v4, v4

    sget-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->HEX_CHARS:[C

    shr-int/lit8 v6, v4, 0x4

    aget-char v5, v5, v6

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->HEX_CHARS:[C

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
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    aget v0, v0, p0

    goto :goto_5
.end method

.method public static copyHexBytes()[B
    .registers 1

    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->HEX_BYTES:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static copyHexChars()[C
    .registers 1

    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->HEX_CHARS:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static get7BitOutputEscapes()[I
    .registers 1

    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sOutputEscapes128:[I

    return-object v0
.end method

.method public static getInputCodeComment()[I
    .registers 1

    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesComment:[I

    return-object v0
.end method

.method public static getInputCodeLatin1()[I
    .registers 1

    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodes:[I

    return-object v0
.end method

.method public static getInputCodeLatin1JsNames()[I
    .registers 1

    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesJsNames:[I

    return-object v0
.end method

.method public static getInputCodeUtf8()[I
    .registers 1

    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUtf8:[I

    return-object v0
.end method

.method public static getInputCodeUtf8JsNames()[I
    .registers 1

    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUtf8JsNames:[I

    return-object v0
.end method
