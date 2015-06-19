.class public Lcom/lenovo/anyshare/sdk/internal/cg;
.super Ljava/lang/Object;
.source "SsidHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/anyshare/sdk/internal/cg$a;
    }
.end annotation


# static fields
.field static a:Lcom/lenovo/anyshare/sdk/internal/cl;

.field static b:I

.field private static c:Ljava/util/Random;

.field private static d:Ljava/lang/String;

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    sget-object v2, Lcom/lenovo/anyshare/sdk/internal/cl;->b:Lcom/lenovo/anyshare/sdk/internal/cl;

    sput-object v2, Lcom/lenovo/anyshare/sdk/internal/cg;->a:Lcom/lenovo/anyshare/sdk/internal/cl;

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/cf;->g()Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v2, 0x1

    :goto_b
    sput v2, Lcom/lenovo/anyshare/sdk/internal/cg;->b:I

    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    sput-object v2, Lcom/lenovo/anyshare/sdk/internal/cg;->c:Ljava/util/Random;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x30

    :goto_1f
    const/16 v2, 0x39

    if-gt v1, v2, :cond_2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x1

    int-to-char v1, v2

    goto :goto_1f

    :cond_2a
    const/4 v2, 0x0

    goto :goto_b

    :cond_2c
    const/16 v1, 0x61

    :goto_2e
    const/16 v2, 0x7a

    if-gt v1, v2, :cond_39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x1

    int-to-char v1, v2

    goto :goto_2e

    :cond_39
    const/16 v1, 0x41

    :goto_3b
    const/16 v2, 0x5a

    if-gt v1, v2, :cond_46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x1

    int-to-char v1, v2

    goto :goto_3b

    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lenovo/anyshare/sdk/internal/cg;->d:Ljava/lang/String;

    sget-object v2, Lcom/lenovo/anyshare/sdk/internal/cg;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sput v2, Lcom/lenovo/anyshare/sdk/internal/cg;->e:I

    return-void
.end method

.method private static a(C)I
    .registers 2

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/cg;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/cg$a;
    .registers 5

    invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/ah;->c(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/cg;->c(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V

    invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/cg;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/cg$a;

    invoke-direct {v0}, Lcom/lenovo/anyshare/sdk/internal/cg$a;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/cl;->a(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/cl;

    move-result-object v2

    iput-object v2, v0, Lcom/lenovo/anyshare/sdk/internal/cg$a;->a:Lcom/lenovo/anyshare/sdk/internal/cl;

    invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/cg;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cg;->a(Lcom/lenovo/anyshare/sdk/internal/cg$a;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/cg;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lenovo/anyshare/sdk/internal/cg$a;->e:Ljava/lang/String;

    iget v2, v0, Lcom/lenovo/anyshare/sdk/internal/cg$a;->c:I

    invoke-static {v2, p0}, Lcom/lenovo/anyshare/sdk/internal/cg;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lenovo/anyshare/sdk/internal/cg$a;->f:Ljava/lang/String;

    iget v2, v0, Lcom/lenovo/anyshare/sdk/internal/cg$a;->b:I

    invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/cg;->a(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lenovo/anyshare/sdk/internal/cg$a;->g:Ljava/lang/String;

    return-object v0
.end method

.method private static a(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_14

    const-string/jumbo v0, "192.168.43"

    :goto_6
    return-object v0

    :pswitch_7
    const-string/jumbo v0, "192.168.1"

    goto :goto_6

    :pswitch_b
    const-string/jumbo v0, "192.168.173"

    goto :goto_6

    :pswitch_f
    const-string/jumbo v0, "192.168.137"

    goto :goto_6

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method

.method private static a(III)Ljava/lang/String;
    .registers 18

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-static {p0, v10, v11}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(III)V

    const/4 v10, 0x0

    const/4 v11, 0x3

    move/from16 v0, p1

    invoke-static {v0, v10, v11}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(III)V

    const/4 v10, 0x0

    const/16 v11, 0xa

    move/from16 v0, p2

    invoke-static {v0, v10, v11}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(III)V

    const/4 v9, 0x3

    const/4 v10, 0x3

    if-ne v9, v10, :cond_4a

    const/4 v10, 0x1

    if-ne p0, v10, :cond_45

    const/16 v1, 0x5f

    :goto_1d
    invoke-static/range {p2 .. p2}, Lcom/lenovo/anyshare/sdk/internal/cg;->c(I)C

    move-result v2

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/cg;->b()C

    move-result v3

    const-string/jumbo v10, "%c%c%c"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :goto_44
    return-object v10

    :cond_45
    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/cg;->b()C

    move-result v1

    goto :goto_1d

    :cond_4a
    sget-object v10, Lcom/lenovo/anyshare/sdk/internal/cg;->c:Ljava/util/Random;

    const v11, 0x7fffffff

    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    and-int/lit16 v4, v10, 0x1ff

    and-int/lit8 v10, p0, 0x3

    shl-int/lit8 v10, v10, 0xf

    and-int/lit8 v11, p1, 0x3

    shl-int/lit8 v11, v11, 0xd

    or-int/2addr v10, v11

    and-int/lit8 v11, p2, 0xf

    shl-int/lit8 v11, v11, 0x9

    or-int/2addr v10, v11

    or-int/2addr v4, v10

    move v5, v4

    sget v10, Lcom/lenovo/anyshare/sdk/internal/cg;->e:I

    rem-int v8, v4, v10

    sub-int v10, v4, v8

    sget v11, Lcom/lenovo/anyshare/sdk/internal/cg;->e:I

    div-int v4, v10, v11

    sget v10, Lcom/lenovo/anyshare/sdk/internal/cg;->e:I

    rem-int v7, v4, v10

    sub-int v10, v4, v7

    sget v11, Lcom/lenovo/anyshare/sdk/internal/cg;->e:I

    div-int v4, v10, v11

    sget v10, Lcom/lenovo/anyshare/sdk/internal/cg;->e:I

    rem-int v6, v4, v10

    const-string/jumbo v10, "SsidHelper"

    const-string/jumbo v11, "encode->randomIndex1=%d, randomIndex2=%d, randomIndex3=%d, randomEncode1=%d"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v10, "%c%c%c%s"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    sget-object v13, Lcom/lenovo/anyshare/sdk/internal/cg;->d:Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Lcom/lenovo/anyshare/sdk/internal/cg;->d:Ljava/lang/String;

    invoke-virtual {v13, v7}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    sget-object v13, Lcom/lenovo/anyshare/sdk/internal/cg;->d:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-static {v13}, Lcom/lenovo/anyshare/sdk/internal/cg;->b(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_44
.end method

.method private static a(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    const/16 v2, 0x8

    const/4 v1, 0x1

    if-ne p0, v1, :cond_9

    const-string/jumbo v1, "12345678"

    :goto_8
    return-object v1

    :cond_9
    const/4 v1, 0x2

    if-ne p0, v1, :cond_20

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_19

    add-int/lit8 v1, v0, -0x8

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_19
    const/16 v1, 0x30

    invoke-static {p1, v2, v1}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_20
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    .registers 10

    invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/ah;->c(Ljava/lang/String;)V

    new-instance v3, Lcom/lenovo/anyshare/sdk/internal/bc;

    invoke-direct {v3, p0}, Lcom/lenovo/anyshare/sdk/internal/bc;-><init>(Landroid/content/Context;)V

    const-string/jumbo v4, "anyshare_ssid_random"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/anyshare/sdk/internal/bc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_2b

    new-instance v1, Lcom/lenovo/anyshare/sdk/internal/cg$a;

    invoke-direct {v1}, Lcom/lenovo/anyshare/sdk/internal/cg$a;-><init>()V

    invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/cg;->a(Lcom/lenovo/anyshare/sdk/internal/cg$a;Ljava/lang/String;)V

    iget v4, v1, Lcom/lenovo/anyshare/sdk/internal/cg$a;->c:I

    if-ne v4, p3, :cond_2a

    iget v4, v1, Lcom/lenovo/anyshare/sdk/internal/cg$a;->d:I

    if-ne v4, p2, :cond_2a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_49

    :cond_2a
    const/4 v0, 0x1

    :cond_2b
    :goto_2b
    if-eqz v2, :cond_2f

    if-eqz v0, :cond_3b

    :cond_2f
    sget v4, Lcom/lenovo/anyshare/sdk/internal/cg;->b:I

    invoke-static {v4, p3, p2}, Lcom/lenovo/anyshare/sdk/internal/cg;->a(III)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "anyshare_ssid_random"

    invoke-virtual {v3, v4, v2}, Lcom/lenovo/anyshare/sdk/internal/bc;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/String;)V

    sget-object v4, Lcom/lenovo/anyshare/sdk/internal/cg;->a:Lcom/lenovo/anyshare/sdk/internal/cl;

    invoke-virtual {v4}, Lcom/lenovo/anyshare/sdk/internal/cl;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2, p1}, Lcom/lenovo/anyshare/sdk/internal/cg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_49
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string/jumbo v0, "unknown"

    :try_start_3
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_e} :catch_2b

    move-result-object v0

    :goto_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catch_2b
    move-exception v1

    goto :goto_f
.end method

.method private static a(Lcom/lenovo/anyshare/sdk/internal/cg$a;Ljava/lang/String;)V
    .registers 14

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_21

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v7, 0x5f

    if-ne v0, v7, :cond_1f

    const/4 v7, 0x1

    :goto_11
    iput v7, p0, Lcom/lenovo/anyshare/sdk/internal/cg$a;->b:I

    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/cg;->b(C)I

    move-result v7

    iput v7, p0, Lcom/lenovo/anyshare/sdk/internal/cg$a;->d:I

    :goto_1e
    return-void

    :cond_1f
    const/4 v7, 0x0

    goto :goto_11

    :cond_21
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/lenovo/anyshare/sdk/internal/cg;->a(C)I

    move-result v3

    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/lenovo/anyshare/sdk/internal/cg;->a(C)I

    move-result v4

    const/4 v7, 0x2

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/lenovo/anyshare/sdk/internal/cg;->a(C)I

    move-result v5

    sget v7, Lcom/lenovo/anyshare/sdk/internal/cg;->e:I

    mul-int/2addr v7, v4

    add-int/2addr v7, v5

    sget v8, Lcom/lenovo/anyshare/sdk/internal/cg;->e:I

    mul-int/2addr v8, v3

    sget v9, Lcom/lenovo/anyshare/sdk/internal/cg;->e:I

    mul-int/2addr v8, v9

    add-int v2, v7, v8

    const-string/jumbo v7, "SsidHelper"

    const-string/jumbo v8, "decode->randomIndex1=%d, randomIndex2=%d, randomIndex3=%d, randomEncode=%d, sCharsLength=%d"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    sget v11, Lcom/lenovo/anyshare/sdk/internal/cg;->e:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    ushr-int/lit8 v7, v2, 0xf

    and-int/lit8 v7, v7, 0x3

    iput v7, p0, Lcom/lenovo/anyshare/sdk/internal/cg$a;->b:I

    ushr-int/lit8 v7, v2, 0xd

    and-int/lit8 v7, v7, 0x3

    iput v7, p0, Lcom/lenovo/anyshare/sdk/internal/cg$a;->c:I

    ushr-int/lit8 v7, v2, 0x9

    and-int/lit8 v7, v7, 0xf

    iput v7, p0, Lcom/lenovo/anyshare/sdk/internal/cg$a;->d:I

    goto :goto_1e
.end method

.method public static a()Z
    .registers 2

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/cl;->a:Lcom/lenovo/anyshare/sdk/internal/cl;

    sget-object v1, Lcom/lenovo/anyshare/sdk/internal/cg;->a:Lcom/lenovo/anyshare/sdk/internal/cl;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static a(Ljava/lang/String;Lcom/lenovo/anyshare/sdk/internal/cl;)Z
    .registers 9

    const/4 v6, 0x3

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "^%s[^-]{%d,%d}-\\S+"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v1

    const/4 v5, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez p0, :cond_24

    :goto_23
    return v1

    :cond_24
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    goto :goto_23
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/cg;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/cg;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private static b()C
    .registers 3

    sget-object v1, Lcom/lenovo/anyshare/sdk/internal/cg;->c:Ljava/util/Random;

    sget v2, Lcom/lenovo/anyshare/sdk/internal/cg;->e:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v1, Lcom/lenovo/anyshare/sdk/internal/cg;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    return v1
.end method

.method private static b(C)I
    .registers 3

    invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/cg;->a(C)I

    move-result v0

    rem-int/lit8 v1, v0, 0xa

    return v1
.end method

.method private static b(I)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    if-ge v1, p0, :cond_1c

    sget-object v3, Lcom/lenovo/anyshare/sdk/internal/cg;->c:Ljava/util/Random;

    sget v4, Lcom/lenovo/anyshare/sdk/internal/cg;->e:I

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sget-object v3, Lcom/lenovo/anyshare/sdk/internal/cg;->d:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/cg;->a:Lcom/lenovo/anyshare/sdk/internal/cl;

    invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/cg;->a:Lcom/lenovo/anyshare/sdk/internal/cl;

    invoke-static {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/cg;->a(Ljava/lang/String;Lcom/lenovo/anyshare/sdk/internal/cl;)Z

    move-result v0

    return v0
.end method

.method private static c(I)C
    .registers 5

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-static {p0, v2, v3}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(III)V

    sget v2, Lcom/lenovo/anyshare/sdk/internal/cg;->e:I

    div-int/lit8 v1, v2, 0xa

    sget v2, Lcom/lenovo/anyshare/sdk/internal/cg;->e:I

    rem-int/lit8 v2, v2, 0xa

    if-le v2, p0, :cond_12

    add-int/lit8 v1, v1, 0x1

    :cond_12
    sget-object v2, Lcom/lenovo/anyshare/sdk/internal/cg;->c:Ljava/util/Random;

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v2, Lcom/lenovo/anyshare/sdk/internal/cg;->d:Ljava/lang/String;

    mul-int/lit8 v3, v0, 0xa

    add-int/2addr v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    return v2
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 9

    const/4 v7, 0x3

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/lenovo/anyshare/sdk/internal/cl;->a:Lcom/lenovo/anyshare/sdk/internal/cl;

    invoke-virtual {v4}, Lcom/lenovo/anyshare/sdk/internal/cl;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/lenovo/anyshare/sdk/internal/cl;->b:Lcom/lenovo/anyshare/sdk/internal/cl;

    invoke-virtual {v4}, Lcom/lenovo/anyshare/sdk/internal/cl;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/lenovo/anyshare/sdk/internal/cl;->c:Lcom/lenovo/anyshare/sdk/internal/cl;

    invoke-virtual {v4}, Lcom/lenovo/anyshare/sdk/internal/cl;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "^[%s][^-]{%d,%d}-\\S+"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v2

    const/4 v6, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-nez p0, :cond_48

    :goto_47
    return v2

    :cond_48
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    goto :goto_47
.end method

.method public static d(Ljava/lang/String;)Lcom/lenovo/network/base/Device;
    .registers 7

    :try_start_0
    invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/cg;->a(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/cg$a;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_27

    move-result-object v2

    new-instance v0, Lcom/lenovo/network/base/Device;

    iget-object v3, v2, Lcom/lenovo/anyshare/sdk/internal/cg$a;->e:Ljava/lang/String;

    iget v4, v2, Lcom/lenovo/anyshare/sdk/internal/cg$a;->d:I

    invoke-direct {v0, p0, v3, v4}, Lcom/lenovo/network/base/Device;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/lenovo/anyshare/sdk/internal/cg$a;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/lenovo/network/base/Device;->setIp(Ljava/lang/String;)V

    :goto_26
    return-object v0

    :catch_27
    move-exception v1

    const-string/jumbo v3, "SsidHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error ssid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_26
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    :cond_3
    :goto_3
    return-object p0

    :cond_4
    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-nez v0, :cond_3

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v2, 0x1

    const/16 v1, 0x2d

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-le v0, v2, :cond_12

    move v1, v2

    :goto_a
    invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/ah;->c(Ljava/lang/String;)V

    :try_start_3
    invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/cg;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    const/16 v3, 0x2d

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "unknown"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2b} :catch_2c

    :goto_2b
    return-object v3

    :catch_2c
    move-exception v3

    :cond_2d
    const-string/jumbo v3, "unknown"

    goto :goto_2b
.end method
