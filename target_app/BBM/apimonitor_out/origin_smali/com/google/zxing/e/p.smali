.class public abstract Lcom/google/zxing/e/p;
.super Lcom/google/zxing/e/k;
.source "UPCEANReader.java"


# static fields
.field static final b:[I

.field static final c:[I

.field static final d:[[I

.field static final e:[[I


# instance fields
.field private final a:Ljava/lang/StringBuilder;

.field private final f:Lcom/google/zxing/e/o;

.field private final g:Lcom/google/zxing/e/g;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x5

    const/4 v6, 0x3

    const/16 v0, 0xa

    const/4 v1, 0x0

    const/4 v5, 0x4

    new-array v2, v6, [I

    fill-array-data v2, :array_9a

    sput-object v2, Lcom/google/zxing/e/p;->b:[I

    new-array v2, v7, [I

    fill-array-data v2, :array_a4

    sput-object v2, Lcom/google/zxing/e/p;->c:[I

    new-array v2, v0, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_b2

    aput-object v3, v2, v1

    const/4 v3, 0x1

    new-array v4, v5, [I

    fill-array-data v4, :array_be

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-array v4, v5, [I

    fill-array-data v4, :array_ca

    aput-object v4, v2, v3

    new-array v3, v5, [I

    fill-array-data v3, :array_d6

    aput-object v3, v2, v6

    new-array v3, v5, [I

    fill-array-data v3, :array_e2

    aput-object v3, v2, v5

    new-array v3, v5, [I

    fill-array-data v3, :array_ee

    aput-object v3, v2, v7

    const/4 v3, 0x6

    new-array v4, v5, [I

    fill-array-data v4, :array_fa

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v5, [I

    fill-array-data v4, :array_106

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v5, [I

    fill-array-data v4, :array_112

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v5, [I

    fill-array-data v4, :array_11e

    aput-object v4, v2, v3

    sput-object v2, Lcom/google/zxing/e/p;->d:[[I

    const/16 v2, 0x14

    new-array v2, v2, [[I

    sput-object v2, Lcom/google/zxing/e/p;->e:[[I

    sget-object v2, Lcom/google/zxing/e/p;->d:[[I

    sget-object v3, Lcom/google/zxing/e/p;->e:[[I

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v0

    :goto_74
    const/16 v0, 0x14

    if-ge v2, v0, :cond_98

    sget-object v0, Lcom/google/zxing/e/p;->d:[[I

    add-int/lit8 v3, v2, -0xa

    aget-object v3, v0, v3

    array-length v0, v3

    new-array v4, v0, [I

    move v0, v1

    :goto_82
    array-length v5, v3

    if-ge v0, v5, :cond_90

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    aget v5, v3, v5

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_82

    :cond_90
    sget-object v0, Lcom/google/zxing/e/p;->e:[[I

    aput-object v4, v0, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_74

    :cond_98
    return-void

    nop

    :array_9a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_a4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_b2
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_be
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_ca
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_d6
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_e2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_ee
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_fa
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_106
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_112
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_11e
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/zxing/e/k;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/e/p;->a:Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/zxing/e/o;

    invoke-direct {v0}, Lcom/google/zxing/e/o;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/e/p;->f:Lcom/google/zxing/e/o;

    new-instance v0, Lcom/google/zxing/e/g;

    invoke-direct {v0}, Lcom/google/zxing/e/g;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/e/p;->g:Lcom/google/zxing/e/g;

    return-void
.end method

.method static a(Lcom/google/zxing/b/a;[II[[I)I
    .registers 10

    invoke-static {p0, p2, p1}, Lcom/google/zxing/e/p;->a(Lcom/google/zxing/b/a;I[I)V

    const/16 v3, 0x7a

    const/4 v0, -0x1

    array-length v4, p3

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v4, :cond_19

    aget-object v2, p3, v1

    const/16 v5, 0xb3

    invoke-static {p1, v2, v5}, Lcom/google/zxing/e/p;->a([I[II)I

    move-result v2

    if-ge v2, v3, :cond_21

    move v0, v1

    :goto_15
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_8

    :cond_19
    if-ltz v0, :cond_1c

    return v0

    :cond_1c
    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0

    :cond_21
    move v2, v3

    goto :goto_15
.end method

.method static a(Lcom/google/zxing/b/a;)[I
    .registers 8

    const/4 v2, 0x0

    const/4 v0, 0x0

    sget-object v1, Lcom/google/zxing/e/p;->b:[I

    array-length v1, v1

    new-array v4, v1, [I

    move v1, v2

    move-object v3, v0

    move v0, v2

    :cond_a
    :goto_a
    if-nez v0, :cond_28

    sget-object v3, Lcom/google/zxing/e/p;->b:[I

    array-length v3, v3

    invoke-static {v4, v2, v3, v2}, Ljava/util/Arrays;->fill([IIII)V

    sget-object v3, Lcom/google/zxing/e/p;->b:[I

    invoke-static {p0, v1, v2, v3, v4}, Lcom/google/zxing/e/p;->a(Lcom/google/zxing/b/a;IZ[I[I)[I

    move-result-object v3

    aget v5, v3, v2

    const/4 v1, 0x1

    aget v1, v3, v1

    sub-int v6, v1, v5

    sub-int v6, v5, v6

    if-ltz v6, :cond_a

    invoke-virtual {p0, v6, v5}, Lcom/google/zxing/b/a;->a(II)Z

    move-result v0

    goto :goto_a

    :cond_28
    return-object v3
.end method

.method static a(Lcom/google/zxing/b/a;IZ[I)[I
    .registers 5

    array-length v0, p3

    new-array v0, v0, [I

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/zxing/e/p;->a(Lcom/google/zxing/b/a;IZ[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/google/zxing/b/a;IZ[I[I)[I
    .registers 16

    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    array-length v6, p3

    iget v7, p0, Lcom/google/zxing/b/a;->b:I

    if-eqz p2, :cond_21

    invoke-virtual {p0, p1}, Lcom/google/zxing/b/a;->d(I)I

    move-result v0

    :goto_c
    move v2, p2

    move v1, v4

    move v5, v0

    :goto_f
    if-ge v5, v7, :cond_5b

    invoke-virtual {p0, v5}, Lcom/google/zxing/b/a;->a(I)Z

    move-result v8

    xor-int/2addr v8, v2

    if-eqz v8, :cond_26

    aget v8, p4, v1

    add-int/lit8 v8, v8, 0x1

    aput v8, p4, v1

    :goto_1e
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_21
    invoke-virtual {p0, p1}, Lcom/google/zxing/b/a;->c(I)I

    move-result v0

    goto :goto_c

    :cond_26
    add-int/lit8 v8, v6, -0x1

    if-ne v1, v8, :cond_56

    const/16 v8, 0xb3

    invoke-static {p4, p3, v8}, Lcom/google/zxing/e/p;->a([I[II)I

    move-result v8

    const/16 v9, 0x7a

    if-ge v8, v9, :cond_3b

    new-array v1, v10, [I

    aput v0, v1, v4

    aput v5, v1, v3

    return-object v1

    :cond_3b
    aget v8, p4, v4

    aget v9, p4, v3

    add-int/2addr v8, v9

    add-int/2addr v0, v8

    add-int/lit8 v8, v6, -0x2

    invoke-static {p4, v10, p4, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v6, -0x2

    aput v4, p4, v8

    add-int/lit8 v8, v6, -0x1

    aput v4, p4, v8

    add-int/lit8 v1, v1, -0x1

    :goto_50
    aput v3, p4, v1

    if-nez v2, :cond_59

    move v2, v3

    goto :goto_1e

    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    :cond_59
    move v2, v4

    goto :goto_1e

    :cond_5b
    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method protected abstract a(Lcom/google/zxing/b/a;[ILjava/lang/StringBuilder;)I
.end method

.method public a(ILcom/google/zxing/b/a;Ljava/util/Map;)Lcom/google/zxing/m;
    .registers 5
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

    invoke-static {p2}, Lcom/google/zxing/e/p;->a(Lcom/google/zxing/b/a;)[I

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/zxing/e/p;->a(ILcom/google/zxing/b/a;[ILjava/util/Map;)Lcom/google/zxing/m;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/google/zxing/b/a;[ILjava/util/Map;)Lcom/google/zxing/m;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/b/a;",
            "[I",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/e;",
            "*>;)",
            "Lcom/google/zxing/m;"
        }
    .end annotation

    if-nez p4, :cond_61

    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_19

    new-instance v1, Lcom/google/zxing/o;

    const/4 v2, 0x0

    aget v2, p3, v2

    const/4 v3, 0x1

    aget v3, p3, v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    int-to-float v3, p1

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/o;-><init>(FF)V

    invoke-interface {v0, v1}, Lcom/google/zxing/p;->a(Lcom/google/zxing/o;)V

    :cond_19
    iget-object v1, p0, Lcom/google/zxing/e/p;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p0, p2, p3, v1}, Lcom/google/zxing/e/p;->a(Lcom/google/zxing/b/a;[ILjava/lang/StringBuilder;)I

    move-result v2

    if-eqz v0, :cond_2f

    new-instance v3, Lcom/google/zxing/o;

    int-to-float v4, v2

    int-to-float v5, p1

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/o;-><init>(FF)V

    invoke-interface {v0, v3}, Lcom/google/zxing/p;->a(Lcom/google/zxing/o;)V

    :cond_2f
    invoke-virtual {p0, p2, v2}, Lcom/google/zxing/e/p;->a(Lcom/google/zxing/b/a;I)[I

    move-result-object v2

    if-eqz v0, :cond_49

    new-instance v3, Lcom/google/zxing/o;

    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x1

    aget v5, v2, v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    int-to-float v5, p1

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/o;-><init>(FF)V

    invoke-interface {v0, v3}, Lcom/google/zxing/p;->a(Lcom/google/zxing/o;)V

    :cond_49
    const/4 v0, 0x1

    aget v0, v2, v0

    const/4 v3, 0x0

    aget v3, v2, v3

    sub-int v3, v0, v3

    add-int/2addr v3, v0

    iget v4, p2, Lcom/google/zxing/b/a;->b:I

    if-ge v3, v4, :cond_5c

    invoke-virtual {p2, v0, v3}, Lcom/google/zxing/b/a;->a(II)Z

    move-result v0

    if-nez v0, :cond_6a

    :cond_5c
    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0

    :cond_61
    sget-object v0, Lcom/google/zxing/e;->h:Lcom/google/zxing/e;

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/p;

    goto :goto_3

    :cond_6a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/e/p;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_79

    invoke-static {}, Lcom/google/zxing/d;->a()Lcom/google/zxing/d;

    move-result-object v0

    throw v0

    :cond_79
    const/4 v1, 0x1

    aget v1, p3, v1

    const/4 v3, 0x0

    aget v3, p3, v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v3, 0x4000

    div-float/2addr v1, v3

    const/4 v3, 0x1

    aget v3, v2, v3

    const/4 v4, 0x0

    aget v4, v2, v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/zxing/e/p;->b()Lcom/google/zxing/a;

    move-result-object v4

    new-instance v5, Lcom/google/zxing/m;

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/google/zxing/o;

    const/4 v8, 0x0

    new-instance v9, Lcom/google/zxing/o;

    int-to-float v10, p1

    invoke-direct {v9, v1, v10}, Lcom/google/zxing/o;-><init>(FF)V

    aput-object v9, v7, v8

    const/4 v1, 0x1

    new-instance v8, Lcom/google/zxing/o;

    int-to-float v9, p1

    invoke-direct {v8, v3, v9}, Lcom/google/zxing/o;-><init>(FF)V

    aput-object v8, v7, v1

    invoke-direct {v5, v0, v6, v7, v4}, Lcom/google/zxing/m;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/o;Lcom/google/zxing/a;)V

    :try_start_ae
    iget-object v1, p0, Lcom/google/zxing/e/p;->f:Lcom/google/zxing/e/o;

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/zxing/e/o;->a(ILcom/google/zxing/b/a;I)Lcom/google/zxing/m;

    move-result-object v1

    sget-object v2, Lcom/google/zxing/n;->h:Lcom/google/zxing/n;

    iget-object v3, v1, Lcom/google/zxing/m;->a:Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Lcom/google/zxing/m;->a(Lcom/google/zxing/n;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/zxing/m;->e:Ljava/util/Map;

    invoke-virtual {v5, v2}, Lcom/google/zxing/m;->a(Ljava/util/Map;)V

    iget-object v1, v1, Lcom/google/zxing/m;->c:[Lcom/google/zxing/o;

    iget-object v2, v5, Lcom/google/zxing/m;->c:[Lcom/google/zxing/o;

    if-nez v2, :cond_110

    iput-object v1, v5, Lcom/google/zxing/m;->c:[Lcom/google/zxing/o;
    :try_end_cb
    .catch Lcom/google/zxing/l; {:try_start_ae .. :try_end_cb} :catch_129

    :cond_cb
    :goto_cb
    sget-object v1, Lcom/google/zxing/a;->h:Lcom/google/zxing/a;

    if-eq v4, v1, :cond_d3

    sget-object v1, Lcom/google/zxing/a;->o:Lcom/google/zxing/a;

    if-ne v4, v1, :cond_10f

    :cond_d3
    iget-object v3, p0, Lcom/google/zxing/e/p;->g:Lcom/google/zxing/e/g;

    invoke-virtual {v3}, Lcom/google/zxing/e/g;->a()V

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v0, v3, Lcom/google/zxing/e/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v0, 0x0

    move v1, v0

    :goto_ea
    if-ge v1, v6, :cond_133

    iget-object v0, v3, Lcom/google/zxing/e/g;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v2, 0x0

    aget v2, v0, v2

    if-lt v4, v2, :cond_133

    array-length v7, v0

    const/4 v8, 0x1

    if-ne v7, v8, :cond_12b

    move v0, v2

    :goto_fe
    if-gt v4, v0, :cond_12f

    iget-object v0, v3, Lcom/google/zxing/e/g;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_108
    if-eqz v0, :cond_10f

    sget-object v1, Lcom/google/zxing/n;->g:Lcom/google/zxing/n;

    invoke-virtual {v5, v1, v0}, Lcom/google/zxing/m;->a(Lcom/google/zxing/n;Ljava/lang/Object;)V

    :cond_10f
    return-object v5

    :cond_110
    if-eqz v1, :cond_cb

    :try_start_112
    array-length v3, v1

    if-lez v3, :cond_cb

    array-length v3, v2

    array-length v6, v1

    add-int/2addr v3, v6

    new-array v3, v3, [Lcom/google/zxing/o;

    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, v2

    invoke-static {v2, v6, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x0

    array-length v2, v2

    array-length v7, v1

    invoke-static {v1, v6, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, v5, Lcom/google/zxing/m;->c:[Lcom/google/zxing/o;
    :try_end_128
    .catch Lcom/google/zxing/l; {:try_start_112 .. :try_end_128} :catch_129

    goto :goto_cb

    :catch_129
    move-exception v1

    goto :goto_cb

    :cond_12b
    const/4 v2, 0x1

    aget v0, v0, v2

    goto :goto_fe

    :cond_12f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_ea

    :cond_133
    const/4 v0, 0x0

    goto :goto_108
.end method

.method a(Ljava/lang/String;)Z
    .registers 8

    const/16 v5, 0x9

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eqz v3, :cond_3f

    add-int/lit8 v1, v3, -0x2

    move v2, v0

    :goto_c
    if-ltz v1, :cond_21

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    if-ltz v4, :cond_18

    if-le v4, v5, :cond_1d

    :cond_18
    invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;

    move-result-object v0

    throw v0

    :cond_1d
    add-int/2addr v2, v4

    add-int/lit8 v1, v1, -0x2

    goto :goto_c

    :cond_21
    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v1, v3, -0x1

    :goto_25
    if-ltz v1, :cond_3a

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    if-ltz v3, :cond_31

    if-le v3, v5, :cond_36

    :cond_31
    invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;

    move-result-object v0

    throw v0

    :cond_36
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x2

    goto :goto_25

    :cond_3a
    rem-int/lit8 v1, v2, 0xa

    if-nez v1, :cond_3f

    const/4 v0, 0x1

    :cond_3f
    return v0
.end method

.method a(Lcom/google/zxing/b/a;I)[I
    .registers 5

    const/4 v0, 0x0

    sget-object v1, Lcom/google/zxing/e/p;->b:[I

    invoke-static {p1, p2, v0, v1}, Lcom/google/zxing/e/p;->a(Lcom/google/zxing/b/a;IZ[I)[I

    move-result-object v0

    return-object v0
.end method

.method abstract b()Lcom/google/zxing/a;
.end method
