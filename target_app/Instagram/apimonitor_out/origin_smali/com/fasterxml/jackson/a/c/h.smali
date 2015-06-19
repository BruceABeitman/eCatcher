.class public final Lcom/fasterxml/jackson/a/c/h;
.super Ljava/lang/Object;
.source "NumberInput.java"


# static fields
.field static final a:Ljava/lang/String;

.field static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "-9223372036854775808"

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/a/c/h;->a:Ljava/lang/String;

    const-string v0, "9223372036854775807"

    sput-object v0, Lcom/fasterxml/jackson/a/c/h;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;D)D
    .registers 5

    if-nez p0, :cond_3

    :cond_2
    :goto_2
    return-wide p1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    :try_start_d
    invoke-static {v0}, Lcom/fasterxml/jackson/a/c/h;->d(Ljava/lang/String;)D
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_10} :catch_12

    move-result-wide p1

    goto :goto_2

    :catch_12
    move-exception v0

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)I
    .registers 9

    const/4 v2, 0x0

    const/16 v6, 0x39

    const/16 v5, 0x30

    const/4 v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_20

    move v3, v1

    :goto_13
    if-eqz v3, :cond_33

    if-eq v4, v1, :cond_1b

    const/16 v0, 0xa

    if-le v4, v0, :cond_22

    :cond_1b
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_1f
    :goto_1f
    return v0

    :cond_20
    move v3, v2

    goto :goto_13

    :cond_22
    const/4 v0, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v7, v0

    move v0, v1

    move v1, v7

    :cond_2a
    if-gt v0, v6, :cond_2e

    if-ge v0, v5, :cond_3c

    :cond_2e
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1f

    :cond_33
    const/16 v2, 0x9

    if-le v4, v2, :cond_2a

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1f

    :cond_3c
    add-int/lit8 v0, v0, -0x30

    if-ge v1, v4, :cond_82

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-gt v1, v6, :cond_4a

    if-ge v1, v5, :cond_4f

    :cond_4a
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1f

    :cond_4f
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    if-ge v2, v4, :cond_82

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-gt v2, v6, :cond_60

    if-ge v2, v5, :cond_65

    :cond_60
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1f

    :cond_65
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v0, v2

    if-ge v1, v4, :cond_82

    :goto_6c
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-gt v1, v6, :cond_76

    if-ge v1, v5, :cond_7b

    :cond_76
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1f

    :cond_7b
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    if-lt v2, v4, :cond_86

    :cond_82
    if-eqz v3, :cond_1f

    neg-int v0, v0

    goto :goto_1f

    :cond_86
    move v1, v2

    goto :goto_6c
.end method

.method public static a(Ljava/lang/String;I)I
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return p1

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    if-lez v2, :cond_49

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_35

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_21
    if-ge v0, v1, :cond_40

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    if-gt v3, v4, :cond_2f

    const/16 v4, 0x30

    if-ge v3, v4, :cond_3d

    :cond_2f
    :try_start_2f
    invoke-static {v2}, Lcom/fasterxml/jackson/a/c/h;->d(Ljava/lang/String;)D
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_32} :catch_45

    move-result-wide v0

    double-to-int p1, v0

    goto :goto_4

    :cond_35
    const/16 v5, 0x2d

    if-ne v4, v5, :cond_49

    move v0, v1

    move v1, v2

    move-object v2, v3

    goto :goto_21

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_40
    :try_start_40
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_40 .. :try_end_43} :catch_47

    move-result p1

    goto :goto_4

    :catch_45
    move-exception v0

    goto :goto_4

    :catch_47
    move-exception v0

    goto :goto_4

    :cond_49
    move v1, v2

    move-object v2, v3

    goto :goto_21
.end method

.method public static a([CII)I
    .registers 7

    aget-char v0, p0, p1

    add-int/lit8 v0, v0, -0x30

    add-int v1, p2, p1

    add-int/lit8 v2, p1, 0x1

    if-ge v2, v1, :cond_5e

    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_5e

    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_5e

    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_5e

    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_5e

    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_5e

    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_5e

    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_5e

    mul-int/lit8 v0, v0, 0xa

    aget-char v1, p0, v2

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    :cond_5e
    return v0
.end method

.method public static a(Ljava/lang/String;J)J
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return-wide p1

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    if-lez v2, :cond_49

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_35

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_21
    if-ge v0, v1, :cond_40

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    if-gt v3, v4, :cond_2f

    const/16 v4, 0x30

    if-ge v3, v4, :cond_3d

    :cond_2f
    :try_start_2f
    invoke-static {v2}, Lcom/fasterxml/jackson/a/c/h;->d(Ljava/lang/String;)D
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_32} :catch_45

    move-result-wide v0

    double-to-long p1, v0

    goto :goto_4

    :cond_35
    const/16 v5, 0x2d

    if-ne v4, v5, :cond_49

    move v0, v1

    move v1, v2

    move-object v2, v3

    goto :goto_21

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_40
    :try_start_40
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_40 .. :try_end_43} :catch_47

    move-result-wide p1

    goto :goto_4

    :catch_45
    move-exception v0

    goto :goto_4

    :catch_47
    move-exception v0

    goto :goto_4

    :cond_49
    move v1, v2

    move-object v2, v3

    goto :goto_21
.end method

.method public static a([CIIZ)Z
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_e

    sget-object v0, Lcom/fasterxml/jackson/a/c/h;->a:Ljava/lang/String;

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge p2, v4, :cond_11

    move v0, v1

    :goto_d
    return v0

    :cond_e
    sget-object v0, Lcom/fasterxml/jackson/a/c/h;->b:Ljava/lang/String;

    goto :goto_6

    :cond_11
    if-le p2, v4, :cond_15

    move v0, v2

    goto :goto_d

    :cond_15
    move v3, v2

    :goto_16
    if-ge v3, v4, :cond_2c

    add-int v5, p1, v3

    aget-char v5, p0, v5

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sub-int/2addr v5, v6

    if-eqz v5, :cond_29

    if-gez v5, :cond_27

    move v0, v1

    goto :goto_d

    :cond_27
    move v0, v2

    goto :goto_d

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_2c
    move v0, v1

    goto :goto_d
.end method

.method public static b(Ljava/lang/String;)J
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_e

    invoke-static {p0}, Lcom/fasterxml/jackson/a/c/h;->a(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    :goto_d
    return-wide v0

    :cond_e
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_d
.end method

.method public static b([CII)J
    .registers 8

    add-int/lit8 v0, p2, -0x9

    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/a/c/h;->a([CII)I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v3, 0x3b9aca00

    mul-long/2addr v1, v3

    add-int/2addr v0, p1

    const/16 v3, 0x9

    invoke-static {p0, v0, v3}, Lcom/fasterxml/jackson/a/c/h;->a([CII)I

    move-result v0

    int-to-long v3, v0

    add-long v0, v1, v3

    return-wide v0
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v3, Lcom/fasterxml/jackson/a/c/h;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    if-le v2, v4, :cond_13

    move v0, v1

    goto :goto_e

    :cond_13
    move v2, v1

    :goto_14
    if-ge v2, v4, :cond_e

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sub-int/2addr v5, v6

    if-eqz v5, :cond_25

    if-ltz v5, :cond_e

    move v0, v1

    goto :goto_e

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_14
.end method

.method public static d(Ljava/lang/String;)D
    .registers 3

    const-string v0, "2.2250738585072012e-308"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-wide/16 v0, 0x1

    :goto_a
    return-wide v0

    :cond_b
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_a
.end method
