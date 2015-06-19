.class final Lcom/instagram/android/creation/a/y;
.super Ljava/lang/Object;
.source "FollowersShareFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/a/t;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/a/t;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/creation/a/y;->a:Lcom/instagram/android/creation/a/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/creation/a/y;->a:Lcom/instagram/android/creation/a/t;

    invoke-static {}, Lcom/instagram/creation/b/d/a;->a()Lcom/instagram/creation/b/d/a;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/creation/a/y;->a:Lcom/instagram/android/creation/a/t;

    invoke-virtual {v2}, Lcom/instagram/android/creation/a/t;->j()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "pendingMediaKey"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/creation/b/d/a;->a(Ljava/lang/String;)Lcom/instagram/creation/b/a/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/creation/a/t;->a(Lcom/instagram/android/creation/a/t;Lcom/instagram/creation/b/a/b;)Lcom/instagram/creation/b/a/b;

    iget-object v0, p0, Lcom/instagram/android/creation/a/y;->a:Lcom/instagram/android/creation/a/t;

    iget-object v1, p0, Lcom/instagram/android/creation/a/y;->a:Lcom/instagram/android/creation/a/t;

    invoke-virtual {v1}, Lcom/instagram/android/creation/a/t;->n()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/creation/a/y;->a:Lcom/instagram/android/creation/a/t;

    invoke-static {v2}, Lcom/instagram/android/creation/a/t;->d(Lcom/instagram/android/creation/a/t;)Lcom/instagram/creation/b/a/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/android/widget/x;->a(Landroid/content/Context;Lcom/instagram/model/a/b;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/creation/a/t;->a(Lcom/instagram/android/creation/a/t;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/instagram/android/creation/a/y;->a:Lcom/instagram/android/creation/a/t;

    invoke-static {v0}, Lcom/instagram/android/creation/a/t;->e(Lcom/instagram/android/creation/a/t;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/x;

    iget-object v2, p0, Lcom/instagram/android/creation/a/y;->a:Lcom/instagram/android/creation/a/t;

    invoke-static {v2}, Lcom/instagram/android/creation/a/t;->f(Lcom/instagram/android/creation/a/t;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/instagram/android/widget/x;->g()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    :cond_56
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "NearbyVenuesFragment.VENUE_CLEARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "NearbyVenuesFragment.VENUE_SELECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/instagram/android/creation/a/y;->a:Lcom/instagram/android/creation/a/t;

    iget-object v1, v1, Lcom/instagram/android/creation/a/t;->b:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v0}, Lcom/instagram/common/u/d;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/y;->a:Lcom/instagram/android/creation/a/t;

    new-instance v1, Lcom/instagram/android/creation/a/z;

    iget-object v2, p0, Lcom/instagram/android/creation/a/y;->a:Lcom/instagram/android/creation/a/t;

    iget-object v3, p0, Lcom/instagram/android/creation/a/y;->a:Lcom/instagram/android/creation/a/t;

    invoke-static {v3}, Lcom/instagram/android/creation/a/t;->d(Lcom/instagram/android/creation/a/t;)Lcom/instagram/creation/b/a/b;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/instagram/android/creation/a/z;-><init>(Lcom/instagram/android/creation/a/y;Landroid/support/v4/app/Fragment;Lcom/instagram/model/a/b;)V

    invoke-static {v0, v1}, Lcom/instagram/android/creation/a/t;->a(Lcom/instagram/android/creation/a/t;Lcom/facebook/b/e;)Lcom/facebook/b/e;

    return-void
.end method
