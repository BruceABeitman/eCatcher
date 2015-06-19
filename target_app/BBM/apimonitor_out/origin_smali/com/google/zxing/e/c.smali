.class public final Lcom/google/zxing/e/c;
.super Lcom/google/zxing/e/k;
.source "Code39Reader.java"


# static fields
.field static final a:[I

.field private static final b:[C

.field private static final c:I


# instance fields
.field private final d:Z

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/e/c;->b:[C

    const/16 v0, 0x2c

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/google/zxing/e/c;->a:[I

    const/16 v1, 0x27

    aget v0, v0, v1

    sput v0, Lcom/google/zxing/e/c;->c:I

    return-void

    :array_18
    .array-data 0x4
        0x34t 0x0t 0x0t 0x0t
        0x21t 0x1t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0x60t 0x1t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x30t 0x1t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x24t 0x1t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x9t 0x1t 0x0t 0x0t
        0x49t 0x0t 0x0t 0x0t
        0x48t 0x1t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x18t 0x1t 0x0t 0x0t
        0x58t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x1t 0x0t 0x0t
        0x4ct 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x3t 0x1t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
        0x42t 0x1t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x12t 0x1t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x6t 0x1t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x81t 0x1t 0x0t 0x0t
        0xc1t 0x0t 0x0t 0x0t
        0xc0t 0x1t 0x0t 0x0t
        0x91t 0x0t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
        0xd0t 0x0t 0x0t 0x0t
        0x85t 0x0t 0x0t 0x0t
        0x84t 0x1t 0x0t 0x0t
        0xc4t 0x0t 0x0t 0x0t
        0x94t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0xa2t 0x0t 0x0t 0x0t
        0x8at 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/zxing/e/k;-><init>()V

    iput-boolean v0, p0, Lcom/google/zxing/e/c;->d:Z

    iput-boolean v0, p0, Lcom/google/zxing/e/c;->e:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Lcom/google/zxing/e/k;-><init>()V

    iput-boolean p1, p0, Lcom/google/zxing/e/c;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/e/c;->e:Z

    return-void
.end method

.method private static a(I)C
    .registers 3

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/google/zxing/e/c;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_14

    sget-object v1, Lcom/google/zxing/e/c;->a:[I

    aget v1, v1, v0

    if-ne v1, p0, :cond_11

    sget-object v1, Lcom/google/zxing/e/c;->b:[C

    aget-char v0, v1, v0

    return v0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0
.end method

.method private static a([I)I
    .registers 14

    const/4 v11, 0x3

    const/4 v5, -0x1

    const/16 v10, 0x9

    const/4 v1, 0x0

    move v0, v1

    :goto_6
    const v2, 0x7fffffff

    move v4, v1

    :goto_a
    if-ge v4, v10, :cond_17

    aget v3, p0, v4

    if-ge v3, v2, :cond_13

    if-le v3, v0, :cond_13

    move v2, v3

    :cond_13
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_a

    :cond_17
    move v6, v1

    move v0, v1

    move v3, v1

    move v4, v1

    :goto_1b
    if-ge v6, v10, :cond_2e

    aget v7, p0, v6

    aget v8, p0, v6

    if-le v8, v2, :cond_2b

    const/4 v8, 0x1

    rsub-int/lit8 v9, v6, 0x8

    shl-int/2addr v8, v9

    or-int/2addr v0, v8

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v7

    :cond_2b
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_2e
    if-ne v4, v11, :cond_48

    move v12, v1

    move v1, v4

    move v4, v12

    :goto_33
    if-ge v4, v10, :cond_44

    if-lez v1, :cond_44

    aget v6, p0, v4

    aget v7, p0, v4

    if-le v7, v2, :cond_45

    add-int/lit8 v1, v1, -0x1

    shl-int/lit8 v6, v6, 0x1

    if-lt v6, v3, :cond_45

    move v0, v5

    :cond_44
    :goto_44
    return v0

    :cond_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_48
    if-gt v4, v11, :cond_4c

    move v0, v5

    goto :goto_44

    :cond_4c
    move v0, v2

    goto :goto_6
.end method

.method private static a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    const/16 v7, 0x5a

    const/16 v6, 0x41

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move v2, v1

    :goto_f
    if-ge v2, v3, :cond_85

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v5, 0x2b

    if-eq v0, v5, :cond_25

    const/16 v5, 0x24

    if-eq v0, v5, :cond_25

    const/16 v5, 0x25

    if-eq v0, v5, :cond_25

    const/16 v5, 0x2f

    if-ne v0, v5, :cond_80

    :cond_25
    add-int/lit8 v5, v2, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    sparse-switch v0, :sswitch_data_8a

    move v0, v1

    :goto_2f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v2, 0x1

    :goto_34
    add-int/lit8 v2, v0, 0x1

    goto :goto_f

    :sswitch_37
    if-lt v5, v6, :cond_3f

    if-gt v5, v7, :cond_3f

    add-int/lit8 v0, v5, 0x20

    int-to-char v0, v0

    goto :goto_2f

    :cond_3f
    invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;

    move-result-object v0

    throw v0

    :sswitch_44
    if-lt v5, v6, :cond_4c

    if-gt v5, v7, :cond_4c

    add-int/lit8 v0, v5, -0x40

    int-to-char v0, v0

    goto :goto_2f

    :cond_4c
    invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;

    move-result-object v0

    throw v0

    :sswitch_51
    if-lt v5, v6, :cond_5b

    const/16 v0, 0x45

    if-gt v5, v0, :cond_5b

    add-int/lit8 v0, v5, -0x26

    int-to-char v0, v0

    goto :goto_2f

    :cond_5b
    const/16 v0, 0x46

    if-lt v5, v0, :cond_67

    const/16 v0, 0x57

    if-gt v5, v0, :cond_67

    add-int/lit8 v0, v5, -0xb

    int-to-char v0, v0

    goto :goto_2f

    :cond_67
    invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;

    move-result-object v0

    throw v0

    :sswitch_6c
    if-lt v5, v6, :cond_76

    const/16 v0, 0x4f

    if-gt v5, v0, :cond_76

    add-int/lit8 v0, v5, -0x20

    int-to-char v0, v0

    goto :goto_2f

    :cond_76
    if-ne v5, v7, :cond_7b

    const/16 v0, 0x3a

    goto :goto_2f

    :cond_7b
    invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;

    move-result-object v0

    throw v0

    :cond_80
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_34

    :cond_85
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_8a
    .sparse-switch
        0x24 -> :sswitch_44
        0x25 -> :sswitch_51
        0x2b -> :sswitch_37
        0x2f -> :sswitch_6c
    .end sparse-switch
.end method


# virtual methods
.method public final a(ILcom/google/zxing/b/a;Ljava/util/Map;)Lcom/google/zxing/m;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/b/a;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/e;",
            "*>;)",
            "Lcom/google/zxing/m;"
        }
    .end annotation

    const/16 v0, 0x9

    new-array v4, v0, [I

    iget v5, p2, Lcom/google/zxing/b/a;->b:I

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/google/zxing/b/a;->c(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v0

    :goto_e
    if-ge v3, v5, :cond_89

    invoke-virtual {p2, v3}, Lcom/google/zxing/b/a;->a(I)Z

    move-result v6

    xor-int/2addr v6, v2

    if-eqz v6, :cond_20

    aget v6, v4, v1

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v1

    :goto_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_20
    const/16 v6, 0x8

    if-ne v1, v6, :cond_84

    invoke-static {v4}, Lcom/google/zxing/e/c;->a([I)I

    move-result v6

    sget v7, Lcom/google/zxing/e/c;->c:I

    if-ne v6, v7, :cond_64

    const/4 v6, 0x0

    sub-int v7, v3, v0

    shr-int/lit8 v7, v7, 0x1

    sub-int v7, v0, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p2, v6, v0}, Lcom/google/zxing/b/a;->a(II)Z

    move-result v6

    if-eqz v6, :cond_64

    const/4 v1, 0x2

    new-array v5, v1, [I

    const/4 v1, 0x0

    aput v0, v5, v1

    const/4 v0, 0x1

    aput v3, v5, v0

    const/4 v0, 0x1

    aget v0, v5, v0

    invoke-virtual {p2, v0}, Lcom/google/zxing/b/a;->c(I)I

    move-result v0

    iget v6, p2, Lcom/google/zxing/b/a;->b:I

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_56
    invoke-static {p2, v0, v4}, Lcom/google/zxing/e/c;->a(Lcom/google/zxing/b/a;I[I)V

    invoke-static {v4}, Lcom/google/zxing/e/c;->a([I)I

    move-result v1

    if-gez v1, :cond_8e

    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0

    :cond_64
    const/4 v6, 0x0

    aget v6, v4, v6

    const/4 v7, 0x1

    aget v7, v4, v7

    add-int/2addr v6, v7

    add-int/2addr v0, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x7

    invoke-static {v4, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x7

    const/4 v7, 0x0

    aput v7, v4, v6

    const/16 v6, 0x8

    const/4 v7, 0x0

    aput v7, v4, v6

    add-int/lit8 v1, v1, -0x1

    :goto_7d
    const/4 v6, 0x1

    aput v6, v4, v1

    if-nez v2, :cond_87

    const/4 v2, 0x1

    goto :goto_1d

    :cond_84
    add-int/lit8 v1, v1, 0x1

    goto :goto_7d

    :cond_87
    const/4 v2, 0x0

    goto :goto_1d

    :cond_89
    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0

    :cond_8e
    invoke-static {v1}, Lcom/google/zxing/e/c;->a(I)C

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move v2, v0

    :goto_97
    const/16 v8, 0x9

    if-ge v1, v8, :cond_a1

    aget v8, v4, v1

    add-int/2addr v2, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_97

    :cond_a1
    invoke-virtual {p2, v2}, Lcom/google/zxing/b/a;->c(I)I

    move-result v1

    const/16 v2, 0x2a

    if-ne v3, v2, :cond_142

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_b4
    const/16 v8, 0x9

    if-ge v2, v8, :cond_be

    aget v8, v4, v2

    add-int/2addr v3, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_b4

    :cond_be
    sub-int v2, v1, v0

    sub-int/2addr v2, v3

    if-eq v1, v6, :cond_cc

    shr-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_cc

    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0

    :cond_cc
    iget-boolean v2, p0, Lcom/google/zxing/e/c;->d:Z

    if-eqz v2, :cond_fc

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_d8
    if-ge v2, v4, :cond_e8

    const-string v6, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_d8

    :cond_e8
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    sget-object v6, Lcom/google/zxing/e/c;->b:[C

    rem-int/lit8 v3, v3, 0x2b

    aget-char v3, v6, v3

    if-eq v2, v3, :cond_f9

    invoke-static {}, Lcom/google/zxing/d;->a()Lcom/google/zxing/d;

    move-result-object v0

    throw v0

    :cond_f9
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_fc
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_107

    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0

    :cond_107
    iget-boolean v2, p0, Lcom/google/zxing/e/c;->e:Z

    if-eqz v2, :cond_13d

    invoke-static {v7}, Lcom/google/zxing/e/c;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :goto_10f
    const/4 v3, 0x1

    aget v3, v5, v3

    const/4 v4, 0x0

    aget v4, v5, v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    new-instance v1, Lcom/google/zxing/m;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/o;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/o;

    int-to-float v8, p1

    invoke-direct {v7, v3, v8}, Lcom/google/zxing/o;-><init>(FF)V

    aput-object v7, v5, v6

    const/4 v3, 0x1

    new-instance v6, Lcom/google/zxing/o;

    int-to-float v7, p1

    invoke-direct {v6, v0, v7}, Lcom/google/zxing/o;-><init>(FF)V

    aput-object v6, v5, v3

    sget-object v0, Lcom/google/zxing/a;->c:Lcom/google/zxing/a;

    invoke-direct {v1, v2, v4, v5, v0}, Lcom/google/zxing/m;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/o;Lcom/google/zxing/a;)V

    return-object v1

    :cond_13d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_10f

    :cond_142
    move v0, v1

    goto/16 :goto_56
.end method
