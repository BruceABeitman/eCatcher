.class final Lcom/instagram/creation/photo/camera/i;
.super Ljava/lang/Object;
.source "CameraFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/creation/photo/camera/c;


# direct methods
.method constructor <init>(Lcom/instagram/creation/photo/camera/c;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/photo/camera/i;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/i;->a:Lcom/instagram/creation/photo/camera/c;

    iget-object v1, p0, Lcom/instagram/creation/photo/camera/i;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-virtual {v1}, Lcom/instagram/creation/photo/camera/c;->l()Landroid/support/v4/app/k;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/creation/photo/camera/i;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v2}, Lcom/instagram/creation/photo/camera/c;->j(Lcom/instagram/creation/photo/camera/c;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/instagram/camera/h;->a(Landroid/app/Activity;I)Landroid/hardware/Camera;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/creation/photo/camera/c;->a(Lcom/instagram/creation/photo/camera/c;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    :try_end_15
    .catch Lcom/instagram/camera/d; {:try_start_0 .. :try_end_15} :catch_16
    .catch Lcom/instagram/camera/b; {:try_start_0 .. :try_end_15} :catch_1d

    :goto_15
    return-void

    :catch_16
    move-exception v0

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/i;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->k(Lcom/instagram/creation/photo/camera/c;)Z

    goto :goto_15

    :catch_1d
    move-exception v0

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/i;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->l(Lcom/instagram/creation/photo/camera/c;)Z

    goto :goto_15
.end method
