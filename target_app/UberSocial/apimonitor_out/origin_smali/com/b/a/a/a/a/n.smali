.class public Lcom/b/a/a/a/a/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Ljava/lang/ThreadLocal;


# instance fields
.field public a:Lcom/b/a/a/a/a/p;

.field public b:Lcom/b/a/a/a/a/o;

.field private d:[I

.field private e:Landroid/graphics/Bitmap;

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/b/a/a/a/a/n;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 10

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/b/a/a/a/a/p;

    invoke-direct {v1, p0}, Lcom/b/a/a/a/a/p;-><init>(Lcom/b/a/a/a/a/n;)V

    iput-object v1, p0, Lcom/b/a/a/a/a/n;->a:Lcom/b/a/a/a/a/p;

    new-instance v1, Lcom/b/a/a/a/a/o;

    invoke-direct {v1, p0}, Lcom/b/a/a/a/a/o;-><init>(Lcom/b/a/a/a/a/n;)V

    iput-object v1, p0, Lcom/b/a/a/a/a/n;->b:Lcom/b/a/a/a/a/o;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/a/a/a/n;->e:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/b/a/a/a/a/n;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/b/a/a/a/a/n;->f:I

    iget-object v1, p0, Lcom/b/a/a/a/a/n;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/b/a/a/a/a/n;->g:I

    iget v1, p0, Lcom/b/a/a/a/a/n;->f:I

    if-lez v1, :cond_91

    iget v1, p0, Lcom/b/a/a/a/a/n;->g:I

    if-lez v1, :cond_91

    :goto_33
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iget v0, p0, Lcom/b/a/a/a/a/n;->f:I

    iget v1, p0, Lcom/b/a/a/a/a/n;->g:I

    mul-int/2addr v0, v1

    new-array v1, v0, [I

    iget v0, p0, Lcom/b/a/a/a/a/n;->f:I

    iget v3, p0, Lcom/b/a/a/a/a/n;->g:I

    mul-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/b/a/a/a/a/n;->d:[I

    iget-object v0, p0, Lcom/b/a/a/a/a/n;->e:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/b/a/a/a/a/n;->f:I

    iget v6, p0, Lcom/b/a/a/a/a/n;->f:I

    iget v7, p0, Lcom/b/a/a/a/a/n;->g:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :goto_55
    array-length v0, v1

    if-ge v2, v0, :cond_93

    iget-object v0, p0, Lcom/b/a/a/a/a/n;->d:[I

    mul-int/lit8 v3, v2, 0x4

    aget v4, v1, v2

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    aput v4, v0, v3

    iget-object v0, p0, Lcom/b/a/a/a/a/n;->d:[I

    mul-int/lit8 v3, v2, 0x4

    add-int/lit8 v3, v3, 0x1

    aget v4, v1, v2

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    aput v4, v0, v3

    iget-object v0, p0, Lcom/b/a/a/a/a/n;->d:[I

    mul-int/lit8 v3, v2, 0x4

    add-int/lit8 v3, v3, 0x2

    aget v4, v1, v2

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    aput v4, v0, v3

    iget-object v0, p0, Lcom/b/a/a/a/a/n;->d:[I

    mul-int/lit8 v3, v2, 0x4

    add-int/lit8 v3, v3, 0x3

    aget v4, v1, v2

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    aput v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    :cond_91
    move v0, v2

    goto :goto_33

    :cond_93
    return-void
.end method

.method public constructor <init>([III)V
    .registers 12

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/b/a/a/a/a/p;

    invoke-direct {v0, p0}, Lcom/b/a/a/a/a/p;-><init>(Lcom/b/a/a/a/a/n;)V

    iput-object v0, p0, Lcom/b/a/a/a/a/n;->a:Lcom/b/a/a/a/a/p;

    new-instance v0, Lcom/b/a/a/a/a/o;

    invoke-direct {v0, p0}, Lcom/b/a/a/a/a/o;-><init>(Lcom/b/a/a/a/a/n;)V

    iput-object v0, p0, Lcom/b/a/a/a/a/n;->b:Lcom/b/a/a/a/a/o;

    iput p2, p0, Lcom/b/a/a/a/a/n;->f:I

    iput p3, p0, Lcom/b/a/a/a/a/n;->g:I

    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/b/a/a/a/a/n;->d:[I

    iget-object v0, p0, Lcom/b/a/a/a/a/n;->d:[I

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/b/a/a/a/a/n;->d:[I

    invoke-direct {p0, v0, p2, p3}, Lcom/b/a/a/a/a/n;->a([III)[I

    move-result-object v1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/a/a/n;->e:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/b/a/a/a/a/n;->e:Landroid/graphics/Bitmap;

    move v3, p2

    move v4, v2

    move v5, v2

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void
.end method

.method public static a()Lcom/b/a/a/a/a/m;
    .registers 2

    sget-object v0, Lcom/b/a/a/a/a/n;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/a/a/m;

    if-nez v0, :cond_14

    sget-object v1, Lcom/b/a/a/a/a/n;->c:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/b/a/a/a/a/m;

    invoke-direct {v0}, Lcom/b/a/a/a/a/m;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method static synthetic a(Lcom/b/a/a/a/a/n;)[I
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/a/a/n;->d:[I

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/a/a/a/n;[I)[I
    .registers 2

    iput-object p1, p0, Lcom/b/a/a/a/a/n;->d:[I

    return-object p1
.end method

.method private a([III)[I
    .registers 10

    mul-int v0, p2, p3

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_27

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x3

    aget v2, p1, v2

    mul-int/lit8 v3, v0, 0x4

    aget v3, p1, v3

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x1

    aget v4, p1, v4

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x2

    aget v5, p1, v5

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_27
    return-object v1
.end method

.method static synthetic b(Lcom/b/a/a/a/a/n;)I
    .registers 2

    iget v0, p0, Lcom/b/a/a/a/a/n;->f:I

    return v0
.end method

.method static synthetic c(Lcom/b/a/a/a/a/n;)I
    .registers 2

    iget v0, p0, Lcom/b/a/a/a/a/n;->g:I

    return v0
.end method


# virtual methods
.method public a(D)I
    .registers 6

    const/16 v0, 0xff

    const/4 v1, 0x0

    double-to-int v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public a(I)I
    .registers 4

    const/16 v0, 0xff

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public b()Landroid/graphics/Bitmap;
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/b/a/a/a/a/n;->d:[I

    iget v1, p0, Lcom/b/a/a/a/a/n;->f:I

    iget v3, p0, Lcom/b/a/a/a/a/n;->g:I

    invoke-direct {p0, v0, v1, v3}, Lcom/b/a/a/a/a/n;->a([III)[I

    move-result-object v1

    iget-object v0, p0, Lcom/b/a/a/a/a/n;->e:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/b/a/a/a/a/n;->f:I

    iget v6, p0, Lcom/b/a/a/a/a/n;->f:I

    iget v7, p0, Lcom/b/a/a/a/a/n;->g:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    iget-object v0, p0, Lcom/b/a/a/a/a/n;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()Lcom/b/a/a/a/a/n;
    .registers 5

    new-instance v0, Lcom/b/a/a/a/a/n;

    iget-object v1, p0, Lcom/b/a/a/a/a/n;->d:[I

    iget v2, p0, Lcom/b/a/a/a/a/n;->f:I

    iget v3, p0, Lcom/b/a/a/a/a/n;->g:I

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/a/a/a/n;-><init>([III)V

    return-object v0
.end method
