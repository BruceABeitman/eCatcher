.class final Lcom/instagram/cliffjumper/edit/photo/a/x;
.super Lcom/instagram/filterkit/c/a;
.source "PhotoFilterFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/a/a;

.field private b:Lcom/instagram/filterkit/e/a;

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/a/x;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-direct {p0}, Lcom/instagram/filterkit/c/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/x;->b:Lcom/instagram/filterkit/e/a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/a;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/a/x;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    return-void
.end method

.method private static a(IIIIZ)Landroid/graphics/Rect;
    .registers 12

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v5, p0, v4

    sub-int v6, p1, v4

    if-nez p3, :cond_15

    if-eqz p2, :cond_15

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p4

    invoke-static/range {v0 .. v6}, Lcom/instagram/cliffjumper/util/d;->b(IIIZIII)Landroid/graphics/Rect;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    move v0, p0

    move v1, p1

    move v2, p3

    move v3, p4

    invoke-static/range {v0 .. v6}, Lcom/instagram/cliffjumper/util/d;->a(IIIZIII)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_14
.end method

.method private d()Landroid/graphics/Rect;
    .registers 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/x;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cropRect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/x;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cropRect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    :goto_1d
    return-object v0

    :cond_1e
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/x;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cameraRotation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/x;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->r(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/creation/photo/gallery/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/creation/photo/gallery/c;->e()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/x;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->r(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/creation/photo/gallery/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/instagram/creation/photo/gallery/c;->f()I

    move-result v1

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/a/x;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "cameraRotation"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/a/x;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v3}, Lcom/instagram/cliffjumper/edit/photo/a/a;->u(Lcom/instagram/cliffjumper/edit/photo/a/a;)I

    move-result v3

    iget-object v4, p0, Lcom/instagram/cliffjumper/edit/photo/a/x;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v4}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "mirrorMedia"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/instagram/cliffjumper/edit/photo/a/x;->a(IIIIZ)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_1d

    :cond_63
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/x;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->r(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/creation/photo/gallery/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/creation/photo/gallery/c;->e()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/x;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->r(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/creation/photo/gallery/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/instagram/creation/photo/gallery/c;->f()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1d
.end method


# virtual methods
.method public final a()Lcom/instagram/filterkit/e/a;
    .registers 6

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/x;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->r(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/creation/photo/gallery/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/creation/photo/gallery/c;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/x;->b:Lcom/instagram/filterkit/e/a;

    if-nez v1, :cond_36

    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/x;->d()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/jpeg/a;->a(Ljava/lang/String;Landroid/graphics/Rect;)Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;

    move-result-object v0

    new-instance v1, Lcom/instagram/filterkit/d/d;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->uploadTexture(Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;)I

    move-result v2

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->getHeight()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/instagram/filterkit/d/d;-><init>(III)V

    iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/x;->b:Lcom/instagram/filterkit/e/a;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/x;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->s(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/cliffjumper/edit/photo/lux/a;

    move-result-object v1

    invoke-static {}, Lcom/instagram/common/u/c/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/instagram/cliffjumper/edit/photo/lux/a;->a(Ljava/util/concurrent/Executor;Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;)V

    :cond_36
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/x;->b:Lcom/instagram/filterkit/e/a;

    return-object v0
.end method

.method public final b()V
    .registers 3

    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/x;->c:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/x;->c:Z

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/x;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->t(Lcom/instagram/cliffjumper/edit/photo/a/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_11
    return-void
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/x;->b:Lcom/instagram/filterkit/e/a;

    invoke-interface {v0}, Lcom/instagram/filterkit/e/a;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/x;->b:Lcom/instagram/filterkit/e/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/x;->c:Z

    return-void
.end method
