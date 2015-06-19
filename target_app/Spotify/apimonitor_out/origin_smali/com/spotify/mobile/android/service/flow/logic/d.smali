.class public abstract Lcom/spotify/mobile/android/service/flow/logic/d;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/spotify/mobile/android/service/flow/a;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/d;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final D()V
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/logic/d;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/flow/FlowActivity;

    if-nez v0, :cond_11

    const-string v0, "Could not finish flow - activity not attached"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_10
    return-void

    :cond_11
    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v0, "Already finishing."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    :cond_1f
    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->a()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->startActivity(Landroid/content/Intent;)V

    :cond_28
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->setResult(I)V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->finish()V

    goto :goto_10
.end method

.method public final E()V
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/logic/d;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/flow/FlowActivity;

    if-nez v0, :cond_11

    const-string v0, "Could not finish flow - activity not attached"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_10
    return-void

    :cond_11
    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v0, "Already finishing."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    :cond_1f
    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->a()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_2a

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    :cond_2a
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, "spotify:internal:startpage"

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object v1, v2

    :cond_4a
    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->startActivity(Landroid/content/Intent;)V

    new-instance v1, Lcom/spotify/mobile/android/util/d/e;

    invoke-direct {v1, v0}, Lcom/spotify/mobile/android/util/d/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/d/e;->c()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->setResult(I)V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->finish()V

    goto :goto_10
.end method

.method public final a(Lcom/spotify/mobile/android/service/flow/a;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/spotify/mobile/android/service/flow/a;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/d;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
    .registers 5

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/logic/d;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/flow/FlowActivity;

    if-nez v0, :cond_11

    const-string v0, "Could not finish flow - activity not attached"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_10
    return-void

    :cond_11
    invoke-virtual {v0, p1, p2}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    goto :goto_10
.end method

.method protected final a(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/spotify/mobile/android/service/flow/a;",
            ">;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected final b(Lcom/spotify/mobile/android/service/flow/a;)V
    .registers 4

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/logic/d;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/flow/FlowActivity;

    if-nez v0, :cond_11

    const-string v0, "Could not switch fragment - activity not attached"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_10
    return-void

    :cond_11
    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->a(Lcom/spotify/mobile/android/service/flow/a;)V

    goto :goto_10
.end method

.method protected final c()Lcom/spotify/mobile/android/service/flow/a;
    .registers 2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/logic/d;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/flow/FlowActivity;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->f()Lcom/spotify/mobile/android/service/flow/a;

    move-result-object v0

    goto :goto_9
.end method

.method protected final c(Lcom/spotify/mobile/android/service/flow/a;)V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/logic/d;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/flow/FlowActivity;

    if-nez v0, :cond_11

    const-string v0, "Could not switch fragment - activity not attached"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_10
    return-void

    :cond_11
    invoke-virtual {v0, p1, v1}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->a(Lcom/spotify/mobile/android/service/flow/a;Z)V

    goto :goto_10
.end method
