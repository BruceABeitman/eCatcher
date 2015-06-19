.class Lcom/flurry/sdk/ds$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ds;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ds;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ds;)V
    .registers 2

    iput-object p1, p0, Lcom/flurry/sdk/ds$1;->a:Lcom/flurry/sdk/ds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Activity;Lcom/flurry/sdk/dr$a;)V
    .registers 5

    iget-object v0, p0, Lcom/flurry/sdk/ds$1;->a:Lcom/flurry/sdk/ds;

    invoke-static {v0}, Lcom/flurry/sdk/ds;->a(Lcom/flurry/sdk/ds;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/dr;

    invoke-interface {v0, p1, p2}, Lcom/flurry/sdk/dr;->a(Landroid/app/Activity;Lcom/flurry/sdk/dr$a;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    sget-object v0, Lcom/flurry/sdk/dr$a;->a:Lcom/flurry/sdk/dr$a;

    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/ds$1;->a(Landroid/app/Activity;Lcom/flurry/sdk/dr$a;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    sget-object v0, Lcom/flurry/sdk/dr$a;->b:Lcom/flurry/sdk/dr$a;

    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/ds$1;->a(Landroid/app/Activity;Lcom/flurry/sdk/dr$a;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    sget-object v0, Lcom/flurry/sdk/dr$a;->c:Lcom/flurry/sdk/dr$a;

    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/ds$1;->a(Landroid/app/Activity;Lcom/flurry/sdk/dr$a;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    sget-object v0, Lcom/flurry/sdk/dr$a;->d:Lcom/flurry/sdk/dr$a;

    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/ds$1;->a(Landroid/app/Activity;Lcom/flurry/sdk/dr$a;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    sget-object v0, Lcom/flurry/sdk/dr$a;->g:Lcom/flurry/sdk/dr$a;

    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/ds$1;->a(Landroid/app/Activity;Lcom/flurry/sdk/dr$a;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    sget-object v0, Lcom/flurry/sdk/dr$a;->e:Lcom/flurry/sdk/dr$a;

    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/ds$1;->a(Landroid/app/Activity;Lcom/flurry/sdk/dr$a;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 3

    sget-object v0, Lcom/flurry/sdk/dr$a;->f:Lcom/flurry/sdk/dr$a;

    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/ds$1;->a(Landroid/app/Activity;Lcom/flurry/sdk/dr$a;)V

    return-void
.end method
