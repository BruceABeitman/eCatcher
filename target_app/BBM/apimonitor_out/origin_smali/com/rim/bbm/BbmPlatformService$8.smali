.class final Lcom/rim/bbm/BbmPlatformService$8;
.super Ljava/lang/Object;
.source "BbmPlatformService.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    invoke-static {}, Lcom/rim/bbm/BbmPlatformService;->access$500()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/rim/bbm/BbmPlatformService;->access$500()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    invoke-static {}, Lcom/rim/bbm/BbmPlatformService;->access$500()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "Platform wake lock released."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_1f
    return-void
.end method
