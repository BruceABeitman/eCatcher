.class final Lcom/a/a/a/cy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private synthetic a:Lcom/a/a/a/cx;


# direct methods
.method constructor <init>(Lcom/a/a/a/cx;)V
    .registers 2

    iput-object p1, p0, Lcom/a/a/a/cy;->a:Lcom/a/a/a/cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/a/a/a/cy;->a:Lcom/a/a/a/cx;

    iget-object v0, v0, Lcom/a/a/a/cx;->a:Lcom/a/a/a/cw;

    invoke-static {v0, p1}, Lcom/a/a/a/cw;->a(Lcom/a/a/a/cw;Landroid/app/Activity;)Lcom/a/a/a/cw;

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/a/a/a/cy;->a:Lcom/a/a/a/cx;

    iget-object v0, v0, Lcom/a/a/a/cx;->a:Lcom/a/a/a/cw;

    invoke-static {v0, p1}, Lcom/a/a/a/cw;->a(Lcom/a/a/a/cw;Landroid/app/Activity;)Lcom/a/a/a/cw;

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/a/a/a/cy;->a:Lcom/a/a/a/cx;

    iget-object v0, v0, Lcom/a/a/a/cx;->a:Lcom/a/a/a/cw;

    invoke-static {v0, p1}, Lcom/a/a/a/cw;->a(Lcom/a/a/a/cw;Landroid/app/Activity;)Lcom/a/a/a/cw;

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
