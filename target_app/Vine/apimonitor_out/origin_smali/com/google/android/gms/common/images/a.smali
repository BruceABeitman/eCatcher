.class public abstract Lcom/google/android/gms/common/images/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/images/a$a;,
        Lcom/google/android/gms/common/images/a$c;,
        Lcom/google/android/gms/common/images/a$b;
    }
.end annotation


# instance fields
.field final Fj:Lcom/google/android/gms/common/images/a$a;

.field protected Fk:I

.field protected Fl:I

.field private Fm:Z

.field private Fn:Z

.field protected Fo:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;I)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/google/android/gms/common/images/a;->Fk:I

    iput v1, p0, Lcom/google/android/gms/common/images/a;->Fl:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/images/a;->Fm:Z

    iput-boolean v1, p0, Lcom/google/android/gms/common/images/a;->Fn:Z

    new-instance v0, Lcom/google/android/gms/common/images/a$a;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/images/a$a;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/a;->Fj:Lcom/google/android/gms/common/images/a$a;

    iput p2, p0, Lcom/google/android/gms/common/images/a;->Fl:I

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/google/android/gms/internal/gx;I)Landroid/graphics/drawable/Drawable;
    .registers 8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, p0, Lcom/google/android/gms/common/images/a;->Fo:I

    if-lez v0, :cond_29

    new-instance v2, Lcom/google/android/gms/internal/gx$a;

    iget v0, p0, Lcom/google/android/gms/common/images/a;->Fo:I

    invoke-direct {v2, p3, v0}, Lcom/google/android/gms/internal/gx$a;-><init>(II)V

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/gx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_28

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v3, p0, Lcom/google/android/gms/common/images/a;->Fo:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_25

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/common/images/a;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_25
    invoke-virtual {p2, v2, v0}, Lcom/google/android/gms/internal/gx;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    :goto_28
    return-object v0

    :cond_29
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_28
.end method


# virtual methods
.method protected a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 4

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/gv;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/google/android/gms/internal/gu;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    instance-of v0, p1, Lcom/google/android/gms/internal/gu;

    if-eqz v0, :cond_d

    check-cast p1, Lcom/google/android/gms/internal/gu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gu;->fb()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_d
    :goto_d
    new-instance v0, Lcom/google/android/gms/internal/gu;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/gu;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_13
    move-object p1, v0

    goto :goto_d
.end method

.method a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V
    .registers 7

    invoke-static {p2}, Lcom/google/android/gms/internal/gy;->c(Ljava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/common/images/a;->Fo:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d

    invoke-static {p2}, Lcom/google/android/gms/internal/gv;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_d
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p3, v1, v2}, Lcom/google/android/gms/common/images/a;->a(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method

.method a(Landroid/content/Context;Lcom/google/android/gms/internal/gx;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/common/images/a;->Fk:I

    if-eqz v1, :cond_c

    iget v0, p0, Lcom/google/android/gms/common/images/a;->Fk:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/images/a;->a(Landroid/content/Context;Lcom/google/android/gms/internal/gx;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_c
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/google/android/gms/common/images/a;->a(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method

.method a(Landroid/content/Context;Lcom/google/android/gms/internal/gx;Z)V
    .registers 7

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/common/images/a;->Fl:I

    if-eqz v1, :cond_c

    iget v0, p0, Lcom/google/android/gms/common/images/a;->Fl:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/images/a;->a(Landroid/content/Context;Lcom/google/android/gms/internal/gx;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_c
    invoke-virtual {p0, v0, p3, v2, v2}, Lcom/google/android/gms/common/images/a;->a(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method

.method protected abstract a(Landroid/graphics/drawable/Drawable;ZZZ)V
.end method

.method public aj(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/common/images/a;->Fl:I

    return-void
.end method

.method protected b(ZZ)Z
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/common/images/a;->Fm:Z

    if-eqz v0, :cond_e

    if-nez p2, :cond_e

    if-eqz p1, :cond_c

    iget-boolean v0, p0, Lcom/google/android/gms/common/images/a;->Fn:Z

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
