.class public final Lcom/instagram/camera/c;
.super Ljava/lang/Object;
.source "CameraErrorCallback.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/camera/c;->a:Landroid/app/Activity;

    return-void
.end method

.method public final onError(ILandroid/hardware/Camera;)V
    .registers 6

    const-string v0, "CameraErrorCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got camera error callback. error="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_2d

    sget v0, Lcom/facebook/az;->cannot_connect_camera:I

    invoke-static {v0}, Lcom/instagram/n/e;->a(I)V

    const-string v0, "Media server died. Restarting app."

    const-string v1, "Media server died. Restarting app."

    invoke-static {v0, v1}, Lcom/instagram/common/g/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/camera/c;->a:Landroid/app/Activity;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/instagram/camera/c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_2d
    return-void
.end method
