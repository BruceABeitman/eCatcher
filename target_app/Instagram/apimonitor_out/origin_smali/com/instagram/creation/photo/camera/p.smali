.class final Lcom/instagram/creation/photo/camera/p;
.super Ljava/lang/Object;
.source "CameraFragment.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field final synthetic a:Lcom/instagram/creation/photo/camera/c;


# direct methods
.method private constructor <init>(Lcom/instagram/creation/photo/camera/c;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/photo/camera/p;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/creation/photo/camera/c;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/creation/photo/camera/p;-><init>(Lcom/instagram/creation/photo/camera/c;)V

    return-void
.end method

.method private static a(Landroid/hardware/Camera;)I
    .registers 3

    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "rotation"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 10

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/p;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->t(Lcom/instagram/creation/photo/camera/c;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "on_picture_taken"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/p;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->o(Lcom/instagram/creation/photo/camera/c;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/p;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->u(Lcom/instagram/creation/photo/camera/c;)Lcom/instagram/creation/photo/camera/o;

    move-result-object v0

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-static {p2}, Lcom/instagram/creation/photo/camera/p;->a(Landroid/hardware/Camera;)I

    move-result v4

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/instagram/creation/photo/camera/o;->a([BIII)Ljava/lang/String;

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/p;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->h(Lcom/instagram/creation/photo/camera/c;)V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/p;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->u(Lcom/instagram/creation/photo/camera/c;)Lcom/instagram/creation/photo/camera/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/photo/camera/o;->a()V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/p;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->v(Lcom/instagram/creation/photo/camera/c;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_52

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/p;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->w(Lcom/instagram/creation/photo/camera/c;)V

    :goto_48
    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "on_picture_taken"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->b(Ljava/lang/String;)V

    goto :goto_8

    :cond_52
    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "rotation"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_63

    :try_start_5f
    invoke-static {p2}, Lcom/instagram/creation/photo/camera/p;->a(Landroid/hardware/Camera;)I
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_d1

    move-result v0

    :cond_63
    :goto_63
    iget-object v2, p0, Lcom/instagram/creation/photo/camera/p;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v2}, Lcom/instagram/creation/photo/camera/c;->v(Lcom/instagram/creation/photo/camera/c;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/instagram/camera/e;->a()Lcom/instagram/camera/e;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/creation/photo/camera/p;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v4}, Lcom/instagram/creation/photo/camera/c;->j(Lcom/instagram/creation/photo/camera/c;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/instagram/camera/e;->c(I)Z

    move-result v3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "mediaSource"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "mediaFilePath"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cameraRotation"

    invoke-virtual {v4, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "mirrorMedia"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "originalWidth"

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "originalHeight"

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "straighteningAngle"

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/p;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v1}, Lcom/instagram/creation/photo/camera/c;->x(Lcom/instagram/creation/photo/camera/c;)F

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "pendingMediaKey"

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/p;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v1}, Lcom/instagram/creation/photo/camera/c;->y(Lcom/instagram/creation/photo/camera/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "directShare"

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/p;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v1}, Lcom/instagram/creation/photo/camera/c;->z(Lcom/instagram/creation/photo/camera/c;)Z

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/p;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-virtual {v0}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/photo/camera/s;

    invoke-interface {v0, v4}, Lcom/instagram/creation/photo/camera/s;->a(Landroid/os/Bundle;)V

    goto/16 :goto_48

    :catch_d1
    move-exception v2

    goto :goto_63
.end method
