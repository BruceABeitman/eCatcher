.class final Lcom/bbm/f/m;
.super Ljava/lang/Object;
.source "NativeServiceLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bbm/f/l;


# direct methods
.method constructor <init>(Lcom/bbm/f/l;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/f/m;->a:Lcom/bbm/f/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/bbm/f/m;->a:Lcom/bbm/f/l;

    iget-object v0, v0, Lcom/bbm/f/l;->a:Lcom/bbm/f/j;

    invoke-static {v0}, Lcom/bbm/f/j;->c(Lcom/bbm/f/j;)Z

    iget-object v0, p0, Lcom/bbm/f/m;->a:Lcom/bbm/f/l;

    iget-object v0, v0, Lcom/bbm/f/l;->a:Lcom/bbm/f/j;

    invoke-static {v0}, Lcom/bbm/f/j;->a(Lcom/bbm/f/j;)Lcom/bbm/util/cr;

    move-result-object v0

    sget-object v1, Lcom/bbm/f/b;->c:Lcom/bbm/f/b;

    invoke-virtual {v0, v1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V

    const-string v0, "Service layer status: disconnected"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/f/m;->a:Lcom/bbm/f/l;

    iget-object v0, v0, Lcom/bbm/f/l;->a:Lcom/bbm/f/j;

    invoke-static {v0}, Lcom/bbm/f/j;->d(Lcom/bbm/f/j;)Z

    move-result v0

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/bbm/f/m;->a:Lcom/bbm/f/l;

    iget-object v0, v0, Lcom/bbm/f/l;->a:Lcom/bbm/f/j;

    invoke-static {}, Lcom/bbm/f/j;->j()J

    move-result-wide v0

    const-string v2, "Unsolicited shutdown of bbmcore attempting to restart in %d ms"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v7, v2, v3}, Lcom/bbm/x;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/bbm/f/m;->a:Lcom/bbm/f/l;

    iget-object v2, v2, Lcom/bbm/f/l;->a:Lcom/bbm/f/j;

    invoke-static {v2, v6}, Lcom/bbm/f/j;->a(Lcom/bbm/f/j;Z)Z

    iget-object v2, p0, Lcom/bbm/f/m;->a:Lcom/bbm/f/l;

    iget-object v2, v2, Lcom/bbm/f/l;->a:Lcom/bbm/f/j;

    invoke-static {v2}, Lcom/bbm/f/j;->f(Lcom/bbm/f/j;)Lcom/bbm/util/dc;

    move-result-object v2

    iget-object v3, p0, Lcom/bbm/f/m;->a:Lcom/bbm/f/l;

    iget-object v3, v3, Lcom/bbm/f/l;->a:Lcom/bbm/f/j;

    invoke-static {v3}, Lcom/bbm/f/j;->e(Lcom/bbm/f/j;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Lcom/bbm/util/dc;->a(Ljava/lang/Runnable;J)V

    :goto_57
    return-void

    :cond_58
    invoke-static {}, Lcom/bbm/f/j;->k()Z

    move-result v0

    if-eqz v0, :cond_75

    const-string v0, "Stopping Platform"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/rim/bbm/BbmPlatformService;->stopPlatform()V

    invoke-static {v7}, Lcom/rim/bbm/BbmPlatformService;->setPlatformDelegate(Lcom/rim/bbm/BbmPlatformService$PlatformDelegate;)V

    const-string v0, "StopPlatform returned."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/bbm/f/j;->l()Z

    :cond_75
    invoke-static {}, Lcom/bbm/f/j;->m()Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/bbm/f/m;->a:Lcom/bbm/f/l;

    iget-object v0, v0, Lcom/bbm/f/l;->a:Lcom/bbm/f/j;

    invoke-static {v0}, Lcom/bbm/f/j;->g(Lcom/bbm/f/j;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z

    move-result v0

    if-eqz v0, :cond_ae

    const-string v0, "Stopping MediaCallService"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/f/m;->a:Lcom/bbm/f/l;

    iget-object v0, v0, Lcom/bbm/f/l;->a:Lcom/bbm/f/j;

    invoke-static {v0}, Lcom/bbm/f/j;->g(Lcom/bbm/f/j;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rim/bbm/BbmMediaCallService;

    invoke-virtual {v0}, Lcom/rim/bbm/BbmMediaCallService;->stop()Z

    move-result v0

    if-eqz v0, :cond_bd

    const-string v0, "MediaCallService stopped successfully."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_ab
    invoke-static {}, Lcom/bbm/f/j;->n()Z

    :cond_ae
    const-string v0, "NativeServiceLayer Stopped"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_57

    :cond_bd
    const-string v0, "Fatal error stopping MediaCallService"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_ab
.end method
