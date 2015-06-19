.class public final Lcom/spotify/mobile/android/util/webview/action/f;
.super Lcom/spotify/mobile/android/util/webview/action/b;
.source "SourceFile"
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/util/webview/action/b;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public final a()V
.registers 4
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/webview/action/f;->b()Ljava/util/Map;
move-result-object v0
const-string v1, "togglePlay"
invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_17
const-class v0, Lcom/spotify/mobile/android/ui/actions/d;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
iget-object v0, p0, Lcom/spotify/mobile/android/util/webview/action/f;->b:Landroid/content/Context;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/actions/d;->b(Landroid/content/Context;)V
:goto_16
return-void
:cond_17
const-string v1, "next"
invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2a
const-class v0, Lcom/spotify/mobile/android/ui/actions/d;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
iget-object v0, p0, Lcom/spotify/mobile/android/util/webview/action/f;->b:Landroid/content/Context;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;)V
goto :goto_16
:cond_2a
const-string v1, "previous"
invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_3e
const-class v0, Lcom/spotify/mobile/android/ui/actions/d;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
iget-object v0, p0, Lcom/spotify/mobile/android/util/webview/action/f;->b:Landroid/content/Context;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/actions/d;->b(Landroid/content/Context;Z)V
goto :goto_16
:cond_3e
new-instance v1, Lcom/spotify/mobile/android/util/SpotifyLink;
const-string v2, "uri"
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-direct {v1, v0}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V
invoke-static {v1}, Lcom/spotify/mobile/android/util/dd;->a(Lcom/spotify/mobile/android/util/SpotifyLink;)Landroid/net/Uri;
move-result-object v0
const-class v1, Lcom/spotify/mobile/android/ui/actions/d;
invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
iget-object v1, p0, Lcom/spotify/mobile/android/util/webview/action/f;->b:Landroid/content/Context;
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->aY:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;)V
goto :goto_16
.end method