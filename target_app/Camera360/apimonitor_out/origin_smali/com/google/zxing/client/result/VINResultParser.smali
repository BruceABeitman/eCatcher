.class public final Lcom/google/zxing/client/result/VINResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "VINResultParser.java"


# static fields
.field private static final AZ09:Ljava/util/regex/Pattern;

.field private static final IOQ:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "[IOQ]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VINResultParser;->IOQ:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "[A-Z0-9]{17}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VINResultParser;->AZ09:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static checkChar(I)C
    .registers 2

    const/16 v0, 0xa

    if-ge p0, v0, :cond_8

    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    :goto_7
    return v0

    :cond_8
    if-ne p0, v0, :cond_d

    const/16 v0, 0x58

    goto :goto_7

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static checkChecksum(Ljava/lang/CharSequence;)Z
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_1b

    add-int/lit8 v4, v2, 0x1

    invoke-static {v4}, Lcom/google/zxing/client/result/VINResultParser;->vinPositionWeight(I)I

    move-result v4

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/google/zxing/client/result/VINResultParser;->vinCharValue(C)I

    move-result v5

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1b
    const/16 v4, 0x8

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    rem-int/lit8 v4, v3, 0xb

    invoke-static {v4}, Lcom/google/zxing/client/result/VINResultParser;->checkChar(I)C

    move-result v1

    if-ne v0, v1, :cond_2b

    const/4 v4, 0x1

    :goto_2a
    return v4

    :cond_2b
    const/4 v4, 0x0

    goto :goto_2a
.end method

.method private static countryCode(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 9

    const/16 v7, 0x45

    const/16 v6, 0x39

    const/16 v5, 0x33

    const/16 v4, 0x52

    const/16 v3, 0x41

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    sparse-switch v0, :sswitch_data_9c

    :cond_17
    const/4 v2, 0x0

    :goto_18
    return-object v2

    :sswitch_19
    const-string/jumbo v2, "US"

    goto :goto_18

    :sswitch_1d
    const-string/jumbo v2, "CA"

    goto :goto_18

    :sswitch_21
    if-lt v1, v3, :cond_17

    const/16 v2, 0x57

    if-gt v1, v2, :cond_17

    const-string/jumbo v2, "MX"

    goto :goto_18

    :sswitch_2b
    if-lt v1, v3, :cond_2f

    if-le v1, v7, :cond_33

    :cond_2f
    if-lt v1, v5, :cond_17

    if-gt v1, v6, :cond_17

    :cond_33
    const-string/jumbo v2, "BR"

    goto :goto_18

    :sswitch_37
    if-lt v1, v3, :cond_17

    const/16 v2, 0x54

    if-gt v1, v2, :cond_17

    const-string/jumbo v2, "JP"

    goto :goto_18

    :sswitch_41
    const/16 v2, 0x4c

    if-lt v1, v2, :cond_17

    if-gt v1, v4, :cond_17

    const-string/jumbo v2, "KO"

    goto :goto_18

    :sswitch_4b
    const-string/jumbo v2, "CN"

    goto :goto_18

    :sswitch_4f
    if-lt v1, v3, :cond_17

    if-gt v1, v7, :cond_17

    const-string/jumbo v2, "IN"

    goto :goto_18

    :sswitch_57
    if-lt v1, v3, :cond_61

    const/16 v2, 0x4d

    if-gt v1, v2, :cond_61

    const-string/jumbo v2, "UK"

    goto :goto_18

    :cond_61
    const/16 v2, 0x4e

    if-lt v1, v2, :cond_17

    const/16 v2, 0x54

    if-gt v1, v2, :cond_17

    const-string/jumbo v2, "DE"

    goto :goto_18

    :sswitch_6d
    const/16 v2, 0x46

    if-lt v1, v2, :cond_77

    if-gt v1, v4, :cond_77

    const-string/jumbo v2, "FR"

    goto :goto_18

    :cond_77
    const/16 v2, 0x53

    if-lt v1, v2, :cond_17

    const/16 v2, 0x57

    if-gt v1, v2, :cond_17

    const-string/jumbo v2, "ES"

    goto :goto_18

    :sswitch_83
    const-string/jumbo v2, "DE"

    goto :goto_18

    :sswitch_87
    const/16 v2, 0x30

    if-eq v1, v2, :cond_8f

    if-lt v1, v5, :cond_17

    if-gt v1, v6, :cond_17

    :cond_8f
    const-string/jumbo v2, "RU"

    goto :goto_18

    :sswitch_93
    if-lt v1, v3, :cond_17

    if-gt v1, v4, :cond_17

    const-string/jumbo v2, "IT"

    goto/16 :goto_18

    :sswitch_data_9c
    .sparse-switch
        0x31 -> :sswitch_19
        0x32 -> :sswitch_1d
        0x33 -> :sswitch_21
        0x34 -> :sswitch_19
        0x35 -> :sswitch_19
        0x39 -> :sswitch_2b
        0x4a -> :sswitch_37
        0x4b -> :sswitch_41
        0x4c -> :sswitch_4b
        0x4d -> :sswitch_4f
        0x53 -> :sswitch_57
        0x56 -> :sswitch_6d
        0x57 -> :sswitch_83
        0x58 -> :sswitch_87
        0x5a -> :sswitch_93
    .end sparse-switch
.end method

.method private static modelYear(C)I
    .registers 2

    const/16 v0, 0x45

    if-lt p0, v0, :cond_d

    const/16 v0, 0x48

    if-gt p0, v0, :cond_d

    add-int/lit8 v0, p0, -0x45

    add-int/lit16 v0, v0, 0x7c0

    :goto_c
    return v0

    :cond_d
    const/16 v0, 0x4a

    if-lt p0, v0, :cond_1a

    const/16 v0, 0x4e

    if-gt p0, v0, :cond_1a

    add-int/lit8 v0, p0, -0x4a

    add-int/lit16 v0, v0, 0x7c4

    goto :goto_c

    :cond_1a
    const/16 v0, 0x50

    if-ne p0, v0, :cond_21

    const/16 v0, 0x7c9

    goto :goto_c

    :cond_21
    const/16 v0, 0x52

    if-lt p0, v0, :cond_2e

    const/16 v0, 0x54

    if-gt p0, v0, :cond_2e

    add-int/lit8 v0, p0, -0x52

    add-int/lit16 v0, v0, 0x7ca

    goto :goto_c

    :cond_2e
    const/16 v0, 0x56

    if-lt p0, v0, :cond_3b

    const/16 v0, 0x59

    if-gt p0, v0, :cond_3b

    add-int/lit8 v0, p0, -0x56

    add-int/lit16 v0, v0, 0x7cd

    goto :goto_c

    :cond_3b
    const/16 v0, 0x31

    if-lt p0, v0, :cond_48

    const/16 v0, 0x39

    if-gt p0, v0, :cond_48

    add-int/lit8 v0, p0, -0x31

    add-int/lit16 v0, v0, 0x7d1

    goto :goto_c

    :cond_48
    const/16 v0, 0x41

    if-lt p0, v0, :cond_55

    const/16 v0, 0x44

    if-gt p0, v0, :cond_55

    add-int/lit8 v0, p0, -0x41

    add-int/lit16 v0, v0, 0x7da

    goto :goto_c

    :cond_55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static vinCharValue(C)I
    .registers 2

    const/16 v0, 0x41

    if-lt p0, v0, :cond_d

    const/16 v0, 0x49

    if-gt p0, v0, :cond_d

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/16 v0, 0x4a

    if-lt p0, v0, :cond_1a

    const/16 v0, 0x52

    if-gt p0, v0, :cond_1a

    add-int/lit8 v0, p0, -0x4a

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1a
    const/16 v0, 0x53

    if-lt p0, v0, :cond_27

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_27

    add-int/lit8 v0, p0, -0x53

    add-int/lit8 v0, v0, 0x2

    goto :goto_c

    :cond_27
    const/16 v0, 0x30

    if-lt p0, v0, :cond_32

    const/16 v0, 0x39

    if-gt p0, v0, :cond_32

    add-int/lit8 v0, p0, -0x30

    goto :goto_c

    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static vinPositionWeight(I)I
    .registers 3

    const/16 v0, 0xa

    const/4 v1, 0x1

    if-lt p0, v1, :cond_b

    const/4 v1, 0x7

    if-gt p0, v1, :cond_b

    rsub-int/lit8 v0, p0, 0x9

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/16 v1, 0x8

    if-eq p0, v1, :cond_a

    const/16 v1, 0x9

    if-ne p0, v1, :cond_15

    const/4 v0, 0x0

    goto :goto_a

    :cond_15
    if-lt p0, v0, :cond_1e

    const/16 v0, 0x11

    if-gt p0, v0, :cond_1e

    rsub-int/lit8 v0, p0, 0x13

    goto :goto_a

    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/VINResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/VINParsedResult;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/VINParsedResult;
    .registers 14

    const/4 v11, 0x0

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    if-eq v0, v3, :cond_b

    move-object v0, v11

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/google/zxing/client/result/VINResultParser;->IOQ:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/google/zxing/client/result/VINResultParser;->AZ09:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_2e

    move-object v0, v11

    goto :goto_a

    :cond_2e
    :try_start_2e
    invoke-static {v1}, Lcom/google/zxing/client/result/VINResultParser;->checkChecksum(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    move-object v0, v11

    goto :goto_a

    :cond_36
    const/4 v0, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/google/zxing/client/result/VINParsedResult;

    const/4 v3, 0x3

    const/16 v4, 0x9

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    const/16 v5, 0x11

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/google/zxing/client/result/VINResultParser;->countryCode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    const/16 v7, 0x8

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x9

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/google/zxing/client/result/VINResultParser;->modelYear(C)I

    move-result v7

    const/16 v8, 0xa

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xb

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/client/result/VINParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_71} :catch_72

    goto :goto_a

    :catch_72
    move-exception v10

    move-object v0, v11

    goto :goto_a
.end method
