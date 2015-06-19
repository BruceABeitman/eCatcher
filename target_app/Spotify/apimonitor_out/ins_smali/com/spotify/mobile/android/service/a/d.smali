.class public final Lcom/spotify/mobile/android/service/a/d;
.super Ljava/lang/Object;
.source "SourceFile"
.method public static a(Landroid/net/Uri;)Lcom/spotify/mobile/android/service/a/e;
.registers 8
const/4 v1, 0x1
const/4 v0, 0x0
new-instance v2, Lcom/spotify/mobile/android/service/a/e;
invoke-direct {v2}, Lcom/spotify/mobile/android/service/a/e;-><init>()V
iput-object p0, v2, Lcom/spotify/mobile/android/service/a/e;->b:Landroid/net/Uri;
invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v3
const-string v4, "http"
invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_8f
const-string v4, "https"
invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_8f
:goto_1d
:cond_1d
iput-boolean v0, v2, Lcom/spotify/mobile/android/service/a/e;->a:Z
invoke-virtual {p0}, Landroid/net/Uri;->isHierarchical()Z
move-result v0
if-eqz v0, :cond_bd
const-string v0, "sp_req_login_token"
invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_bd
iput-boolean v1, v2, Lcom/spotify/mobile/android/service/a/e;->a:Z
iget-object v0, v2, Lcom/spotify/mobile/android/service/a/e;->b:Landroid/net/Uri;
const-string v1, "sp_req_login_token"
new-instance v3, Landroid/net/Uri$Builder;
invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V
invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v4
invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v4
invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v4
invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
move-result-object v0
const-string v4, "UTF-8"
invoke-static {v0, v4}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_69
:goto_69
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_b7
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/http/NameValuePair;
invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_69
invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;
move-result-object v5
invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;
move-result-object v6
if-nez v6, :cond_b2
const-string v0, ""
:goto_8b
invoke-virtual {v3, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
goto :goto_69
:cond_8f
invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;
move-result-object v3
const-string v4, "spotify.com"
invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_a3
const-string v4, "www.spotify.com"
invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_1d
:cond_a3
invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v3
const-string v4, "notoken"
invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_1d
move v0, v1
goto/16 :goto_1d
:cond_b2
invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;
move-result-object v0
goto :goto_8b
:cond_b7
invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
move-result-object v0
iput-object v0, v2, Lcom/spotify/mobile/android/service/a/e;->b:Landroid/net/Uri;
:cond_bd
return-object v2
.end method
.method public static a(Landroid/app/Service;Landroid/net/Uri;Ljava/lang/String;)V
.registers 6
if-eqz p1, :cond_4f
new-instance v0, Lcom/spotify/mobile/android/util/SpotifyLink;
invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->F:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
if-eq v0, v1, :cond_36
invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
:goto_1b
if-eqz v0, :cond_25
const/high16 v1, 0x1000
invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
invoke-virtual {p0, v0}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V
:cond_25
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$Event;->S:Lcom/spotify/mobile/android/util/ClientEvent$Event;
invoke-static {v0, p2}, Lcom/spotify/music/spotlets/gcm/GcmBroadcastReceiver;->a(Lcom/spotify/mobile/android/util/ClientEvent$Event;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v0
const-class v1, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->aV:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {p0, v1, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
return-void
:cond_36
invoke-static {p1}, Lcom/spotify/mobile/android/service/a/d;->a(Landroid/net/Uri;)Lcom/spotify/mobile/android/service/a/e;
move-result-object v0
iget-object v1, v0, Lcom/spotify/mobile/android/service/a/e;->b:Landroid/net/Uri;
iget-boolean v0, v0, Lcom/spotify/mobile/android/service/a/e;->a:Z
if-eqz v0, :cond_47
new-instance v0, Lcom/spotify/mobile/android/service/a/f;
invoke-direct {v0, p0, v1}, Lcom/spotify/mobile/android/service/a/f;-><init>(Landroid/app/Service;Landroid/net/Uri;)V
const/4 v0, 0x0
goto :goto_1b
:cond_47
new-instance v0, Landroid/content/Intent;
const-string v2, "android.intent.action.VIEW"
invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
goto :goto_1b
:cond_4f
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/spotify/music/MainActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
goto :goto_1b
.end method