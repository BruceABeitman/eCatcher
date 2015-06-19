.class public final Lcom/spotify/mobile/android/util/webview/action/g;
.super Lcom/spotify/mobile/android/util/webview/action/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/util/webview/action/b;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/webview/action/g;->b()Ljava/util/Map;

    move-result-object v3

    const-string v0, "shareText"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "title"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "subtitle"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "uri"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3c

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3c

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3d

    :cond_3c
    :goto_3c
    return-void

    :cond_3d
    new-instance v3, Lcom/spotify/mobile/android/ui/activity/k;

    iget-object v4, p0, Lcom/spotify/mobile/android/util/webview/action/g;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/spotify/mobile/android/ui/activity/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/spotify/mobile/android/ui/activity/k;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/k;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/spotify/mobile/android/ui/activity/k;->b(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/k;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/ui/activity/k;->a(Z)Lcom/spotify/mobile/android/ui/activity/k;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/spotify/mobile/android/ui/activity/k;->e(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/activity/k;->f(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/k;->a()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/util/webview/action/g;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3c
.end method
