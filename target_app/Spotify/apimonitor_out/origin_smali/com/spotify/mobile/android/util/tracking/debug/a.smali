.class public final Lcom/spotify/mobile/android/util/tracking/debug/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Landroid/view/View;

.field private c:Landroid/widget/FrameLayout;

.field private final d:Landroid/app/Activity;

.field private e:Lcom/spotify/mobile/android/util/tracking/debug/DebugViewLoadingReceiver;


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/debug/a;->c:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/tracking/debug/a;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final b()V
    .registers 5

    iget-boolean v0, p0, Lcom/spotify/mobile/android/util/tracking/debug/a;->a:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/debug/a;->d:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/content/n;->a(Landroid/content/Context;)Landroid/support/v4/content/n;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/util/tracking/debug/a;->e:Lcom/spotify/mobile/android/util/tracking/debug/DebugViewLoadingReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "ACTION_VIEW_LOAD_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/n;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/util/tracking/debug/a;->a:Z

    :cond_19
    return-void
.end method

.method public final c()V
    .registers 3

    iget-boolean v0, p0, Lcom/spotify/mobile/android/util/tracking/debug/a;->a:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/debug/a;->d:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/content/n;->a(Landroid/content/Context;)Landroid/support/v4/content/n;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/util/tracking/debug/a;->e:Lcom/spotify/mobile/android/util/tracking/debug/DebugViewLoadingReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/n;->a(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/util/tracking/debug/a;->a:Z

    :cond_12
    return-void
.end method
