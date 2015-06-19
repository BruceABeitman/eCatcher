.class final Lcom/bbm/w;
.super Ljava/lang/Object;
.source "LifecycleLogger.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:Lcom/bbm/v;


# direct methods
.method constructor <init>(Lcom/bbm/v;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/w;->a:Lcom/bbm/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "  onActivityCreated"

    invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "  onActivityCreated"

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Class;Ljava/lang/String;)V

    const-string v0, "onCreate"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "  onActivityDestroyed"

    invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "  onActivityDestroyed"

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Class;Ljava/lang/String;)V

    const-string v0, "onDestroy"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "onPause"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "onResume"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "onStart"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "onStop"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method
