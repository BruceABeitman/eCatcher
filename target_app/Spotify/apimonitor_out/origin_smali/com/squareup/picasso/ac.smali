.class public final Lcom/squareup/picasso/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/net/Uri;

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:F

.field private h:F

.field private i:F

.field private j:Z

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/ak;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/graphics/Bitmap$Config;


# direct methods
.method constructor <init>(Landroid/net/Uri;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/picasso/ac;->a:Landroid/net/Uri;

    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/picasso/ac;->b:I

    return-void
.end method


# virtual methods
.method public final a(II)Lcom/squareup/picasso/ac;
    .registers 5

    if-gtz p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Width must be positive number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-gtz p2, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height must be positive number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iput p1, p0, Lcom/squareup/picasso/ac;->c:I

    iput p2, p0, Lcom/squareup/picasso/ac;->d:I

    return-object p0
.end method

.method public final a(Lcom/squareup/picasso/ak;)Lcom/squareup/picasso/ac;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transformation must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/squareup/picasso/ac;->k:Ljava/util/List;

    if-nez v0, :cond_16

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/squareup/picasso/ac;->k:Ljava/util/List;

    :cond_16
    iget-object v0, p0, Lcom/squareup/picasso/ac;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method final a()Z
    .registers 2

    iget-object v0, p0, Lcom/squareup/picasso/ac;->a:Landroid/net/Uri;

    if-nez v0, :cond_8

    iget v0, p0, Lcom/squareup/picasso/ac;->b:I

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method final b()Z
    .registers 2

    iget v0, p0, Lcom/squareup/picasso/ac;->c:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final c()Lcom/squareup/picasso/ac;
    .registers 3

    iget-boolean v0, p0, Lcom/squareup/picasso/ac;->f:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center crop can not be used after calling centerInside"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/picasso/ac;->e:Z

    return-object p0
.end method

.method public final d()Lcom/squareup/picasso/ab;
    .registers 15

    iget-boolean v0, p0, Lcom/squareup/picasso/ac;->f:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/squareup/picasso/ac;->e:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center crop and center inside can not be used together."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-boolean v0, p0, Lcom/squareup/picasso/ac;->e:Z

    if-eqz v0, :cond_20

    iget v0, p0, Lcom/squareup/picasso/ac;->c:I

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center crop requires calling resize."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    iget-boolean v0, p0, Lcom/squareup/picasso/ac;->f:Z

    if-eqz v0, :cond_30

    iget v0, p0, Lcom/squareup/picasso/ac;->c:I

    if-nez v0, :cond_30

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center inside requires calling resize."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    new-instance v0, Lcom/squareup/picasso/ab;

    iget-object v1, p0, Lcom/squareup/picasso/ac;->a:Landroid/net/Uri;

    iget v2, p0, Lcom/squareup/picasso/ac;->b:I

    iget-object v3, p0, Lcom/squareup/picasso/ac;->k:Ljava/util/List;

    iget v4, p0, Lcom/squareup/picasso/ac;->c:I

    iget v5, p0, Lcom/squareup/picasso/ac;->d:I

    iget-boolean v6, p0, Lcom/squareup/picasso/ac;->e:Z

    iget-boolean v7, p0, Lcom/squareup/picasso/ac;->f:Z

    iget v8, p0, Lcom/squareup/picasso/ac;->g:F

    iget v9, p0, Lcom/squareup/picasso/ac;->h:F

    iget v10, p0, Lcom/squareup/picasso/ac;->i:F

    iget-boolean v11, p0, Lcom/squareup/picasso/ac;->j:Z

    iget-object v12, p0, Lcom/squareup/picasso/ac;->l:Landroid/graphics/Bitmap$Config;

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v13}, Lcom/squareup/picasso/ab;-><init>(Landroid/net/Uri;ILjava/util/List;IIZZFFFZLandroid/graphics/Bitmap$Config;B)V

    return-object v0
.end method
