.class public final Lcom/google/android/gms/common/images/h;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/android/gms/common/images/i;

.field b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/ref/WeakReference;

.field private g:Ljava/lang/ref/WeakReference;

.field private h:Ljava/lang/ref/WeakReference;

.field private i:I

.field private j:Z

.field private k:Z

.field private l:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/google/android/gms/common/images/h;->c:I

    iput v1, p0, Lcom/google/android/gms/common/images/h;->d:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/images/h;->i:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/images/h;->j:Z

    iput-boolean v1, p0, Lcom/google/android/gms/common/images/h;->k:Z

    new-instance v0, Lcom/google/android/gms/common/images/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/images/i;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/h;->a:Lcom/google/android/gms/common/images/i;

    iput p1, p0, Lcom/google/android/gms/common/images/h;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/google/android/gms/common/images/h;->c:I

    iput v1, p0, Lcom/google/android/gms/common/images/h;->d:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/images/h;->i:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/images/h;->j:Z

    iput-boolean v1, p0, Lcom/google/android/gms/common/images/h;->k:Z

    new-instance v0, Lcom/google/android/gms/common/images/i;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/images/i;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/h;->a:Lcom/google/android/gms/common/images/i;

    iput v1, p0, Lcom/google/android/gms/common/images/h;->d:I

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/google/android/gms/internal/gd;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    instance-of v0, p1, Lcom/google/android/gms/internal/gd;

    if-eqz v0, :cond_d

    check-cast p1, Lcom/google/android/gms/internal/gd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gd;->b()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_d
    :goto_d
    new-instance v0, Lcom/google/android/gms/internal/gd;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/gd;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_13
    move-object p1, v0

    goto :goto_d
.end method

.method private a(Landroid/graphics/drawable/Drawable;ZZZ)V
    .registers 11

    iget v0, p0, Lcom/google/android/gms/common/images/h;->b:I

    packed-switch v0, :pswitch_data_42

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    if-nez p3, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/common/images/h;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/a;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/common/images/h;->a:Lcom/google/android/gms/common/images/i;

    iget-object v1, v1, Lcom/google/android/gms/common/images/i;->a:Landroid/net/Uri;

    invoke-interface {v0, v1, p1, p4}, Lcom/google/android/gms/common/images/a;->a(Landroid/net/Uri;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_5

    :pswitch_1a
    iget-object v0, p0, Lcom/google/android/gms/common/images/h;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/images/h;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZZZ)V

    goto :goto_5

    :pswitch_2d
    iget-object v0, p0, Lcom/google/android/gms/common/images/h;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    iget v2, p0, Lcom/google/android/gms/common/images/h;->i:I

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/images/h;->a(Landroid/widget/TextView;ILandroid/graphics/drawable/Drawable;ZZ)V

    goto :goto_5

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_6
        :pswitch_1a
        :pswitch_2d
    .end packed-switch
.end method

.method private a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZZZ)V
    .registers 11

    const/4 v2, 0x0

    if-nez p4, :cond_1d

    if-nez p5, :cond_1d

    const/4 v0, 0x1

    move v3, v0

    :goto_7
    if-eqz v3, :cond_1f

    instance-of v0, p1, Lcom/google/android/gms/internal/gi;

    if-eqz v0, :cond_1f

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gi;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/common/images/h;->d:I

    if-eqz v1, :cond_1f

    iget v1, p0, Lcom/google/android/gms/common/images/h;->d:I

    if-ne v0, v1, :cond_1f

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    move v3, v2

    goto :goto_7

    :cond_1f
    invoke-direct {p0, p3, p4}, Lcom/google/android/gms/common/images/h;->a(ZZ)Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/images/h;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/google/android/gms/internal/gd;

    move-result-object v0

    :goto_2d
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of v1, p1, Lcom/google/android/gms/internal/gi;

    if-eqz v1, :cond_46

    check-cast p1, Lcom/google/android/gms/internal/gi;

    if-eqz p5, :cond_50

    iget-object v1, p0, Lcom/google/android/gms/common/images/h;->a:Lcom/google/android/gms/common/images/i;

    iget-object v1, v1, Lcom/google/android/gms/common/images/i;->a:Landroid/net/Uri;

    :goto_3c
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/gi;->a(Landroid/net/Uri;)V

    if-eqz v3, :cond_52

    iget v1, p0, Lcom/google/android/gms/common/images/h;->d:I

    :goto_43
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/gi;->a(I)V

    :cond_46
    if-eqz v4, :cond_1c

    check-cast v0, Lcom/google/android/gms/internal/gd;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gd;->a(I)V

    goto :goto_1c

    :cond_50
    const/4 v1, 0x0

    goto :goto_3c

    :cond_52
    move v1, v2

    goto :goto_43

    :cond_54
    move-object v0, p2

    goto :goto_2d
.end method

.method private a(Landroid/widget/TextView;ILandroid/graphics/drawable/Drawable;ZZ)V
    .registers 14

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x1

    invoke-direct {p0, p4, p5}, Lcom/google/android/gms/common/images/h;->a(ZZ)Z

    move-result v5

    invoke-static {}, Lcom/google/android/gms/internal/jo;->f()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v1, v0

    :goto_12
    aget-object v0, v1, p2

    if-eqz v5, :cond_52

    invoke-direct {p0, v0, p3}, Lcom/google/android/gms/common/images/h;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/google/android/gms/internal/gd;

    move-result-object v0

    :goto_1a
    if-nez p2, :cond_3f

    move-object v4, v0

    :goto_1d
    if-ne p2, v3, :cond_44

    move-object v3, v0

    :goto_20
    if-ne p2, v6, :cond_48

    move-object v2, v0

    :goto_23
    if-ne p2, v7, :cond_4b

    move-object v1, v0

    :goto_26
    invoke-static {}, Lcom/google/android/gms/internal/jo;->f()Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-virtual {p1, v4, v3, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_2f
    if-eqz v5, :cond_38

    check-cast v0, Lcom/google/android/gms/internal/gd;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gd;->a(I)V

    :cond_38
    return-void

    :cond_39
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v1, v0

    goto :goto_12

    :cond_3f
    const/4 v2, 0x0

    aget-object v2, v1, v2

    move-object v4, v2

    goto :goto_1d

    :cond_44
    aget-object v2, v1, v3

    move-object v3, v2

    goto :goto_20

    :cond_48
    aget-object v2, v1, v6

    goto :goto_23

    :cond_4b
    aget-object v1, v1, v7

    goto :goto_26

    :cond_4e
    invoke-virtual {p1, v4, v3, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2f

    :cond_52
    move-object v0, p3

    goto :goto_1a
.end method

.method private a(ZZ)Z
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/common/images/h;->j:Z

    if-eqz v0, :cond_e

    if-nez p2, :cond_e

    if-eqz p1, :cond_c

    iget-boolean v0, p0, Lcom/google/android/gms/common/images/h;->k:Z

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/common/images/h;->d:I

    return-void
.end method

.method a(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/common/images/h;->c:I

    if-eqz v1, :cond_1a

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, p0, Lcom/google/android/gms/common/images/h;->c:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/common/images/h;->l:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1a

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gh;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1a
    const/4 v1, 0x1

    invoke-direct {p0, v0, v3, v1, v3}, Lcom/google/android/gms/common/images/h;->a(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method

.method a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V
    .registers 7

    invoke-static {p2}, Lcom/google/android/gms/internal/gj;->a(Ljava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/common/images/h;->l:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d

    invoke-static {p2}, Lcom/google/android/gms/internal/gh;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_d
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, p3, v1, v2}, Lcom/google/android/gms/common/images/h;->a(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method

.method a(Landroid/content/Context;Z)V
    .registers 7

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/common/images/h;->d:I

    if-eqz v1, :cond_1a

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, p0, Lcom/google/android/gms/common/images/h;->d:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/common/images/h;->l:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1a

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gh;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1a
    invoke-direct {p0, v0, p2, v3, v3}, Lcom/google/android/gms/common/images/h;->a(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method

.method public a(Landroid/widget/ImageView;)V
    .registers 4

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/gj;->a(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/common/images/h;->f:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/h;->g:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lcom/google/android/gms/common/images/h;->h:Ljava/lang/ref/WeakReference;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/images/h;->i:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/images/h;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/images/h;->e:I

    return-void
.end method

.method public a(Lcom/google/android/gms/common/images/a;)V
    .registers 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/google/android/gms/internal/gj;->a(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/h;->f:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lcom/google/android/gms/common/images/h;->g:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lcom/google/android/gms/common/images/h;->h:Ljava/lang/ref/WeakReference;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/images/h;->i:I

    iput v2, p0, Lcom/google/android/gms/common/images/h;->b:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/common/images/h;->a:Lcom/google/android/gms/common/images/i;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/internal/hq;->a([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/images/h;->e:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/gms/common/images/h;

    if-nez v2, :cond_8

    move v0, v1

    :cond_7
    :goto_7
    return v0

    :cond_8
    if-eq p0, p1, :cond_7

    check-cast p1, Lcom/google/android/gms/common/images/h;

    invoke-virtual {p1}, Lcom/google/android/gms/common/images/h;->hashCode()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/common/images/h;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_7
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/images/h;->e:I

    return v0
.end method
