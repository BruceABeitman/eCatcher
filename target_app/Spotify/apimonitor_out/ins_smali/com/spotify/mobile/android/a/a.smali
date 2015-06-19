.class public final Lcom/spotify/mobile/android/a/a;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/view/o;
.field protected final a:Landroid/content/Context;
.field protected final b:Lcom/spotify/mobile/android/util/SpotifyLink;
.field protected final c:Lcom/spotify/mobile/android/util/ViewUri$Verified;
.field protected final d:Lcom/spotify/mobile/android/util/ViewUri$Verified;
.field protected final e:Lcom/spotify/mobile/android/a/b;
.field protected f:Lcom/spotify/mobile/android/util/ViewUri$SubView;
.field protected final g:Lcom/spotify/mobile/android/ui/actions/a;
.field protected final h:Lcom/spotify/mobile/android/ui/actions/d;
.field private i:Lcom/spotify/mobile/android/util/ClientEvent;
.field private j:Z
.field private k:Lcom/spotify/mobile/android/util/ClientEvent;
.field private l:Z
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/SpotifyLink;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/a/b;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-class v0, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;
iput-object v0, p0, Lcom/spotify/mobile/android/a/a;->g:Lcom/spotify/mobile/android/ui/actions/a;
const-class v0, Lcom/spotify/mobile/android/ui/actions/d;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/d;
iput-object v0, p0, Lcom/spotify/mobile/android/a/a;->h:Lcom/spotify/mobile/android/ui/actions/d;
const-string v0, "Don\'t create a PlaySpotifyContextController with a null context"
invoke-static {p1, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "Don\'t create a PlaySpotifyContextController with a null context URI"
invoke-static {p2, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "Don\'t create a PlaySpotifyContextController with a null view URI"
invoke-static {p3, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "Don\'t create a PlaySpotifyContextController with a null ContextUriProvider"
invoke-static {p5, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iput-object p1, p0, Lcom/spotify/mobile/android/a/a;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/spotify/mobile/android/a/a;->b:Lcom/spotify/mobile/android/util/SpotifyLink;
iput-object p5, p0, Lcom/spotify/mobile/android/a/a;->e:Lcom/spotify/mobile/android/a/b;
iput-object p3, p0, Lcom/spotify/mobile/android/a/a;->c:Lcom/spotify/mobile/android/util/ViewUri$Verified;
if-nez p4, :cond_37
sget-object p4, Lcom/spotify/mobile/android/util/ViewUri;->be:Lcom/spotify/mobile/android/util/ViewUri$Verified;
:cond_37
iput-object p4, p0, Lcom/spotify/mobile/android/a/a;->d:Lcom/spotify/mobile/android/util/ViewUri$Verified;
return-void
.end method
.method public final a()V
.registers 9
iget-object v0, p0, Lcom/spotify/mobile/android/a/a;->b:Lcom/spotify/mobile/android/util/SpotifyLink;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/a/a;->e:Lcom/spotify/mobile/android/a/b;
invoke-interface {v1}, Lcom/spotify/mobile/android/a/b;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/spotify/mobile/android/a/a;->h:Lcom/spotify/mobile/android/ui/actions/d;
iget-object v0, p0, Lcom/spotify/mobile/android/a/a;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/actions/d;->b(Landroid/content/Context;)V
:goto_19
:cond_19
iget-boolean v0, p0, Lcom/spotify/mobile/android/a/a;->j:Z
if-eqz v0, :cond_2a
iget-object v0, p0, Lcom/spotify/mobile/android/a/a;->g:Lcom/spotify/mobile/android/ui/actions/a;
iget-object v0, p0, Lcom/spotify/mobile/android/a/a;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/spotify/mobile/android/a/a;->c:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iget-object v2, p0, Lcom/spotify/mobile/android/a/a;->f:Lcom/spotify/mobile/android/util/ViewUri$SubView;
iget-object v3, p0, Lcom/spotify/mobile/android/a/a;->i:Lcom/spotify/mobile/android/util/ClientEvent;
invoke-static {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V
:cond_2a
return-void
:cond_2b
iget-object v0, p0, Lcom/spotify/mobile/android/a/a;->b:Lcom/spotify/mobile/android/util/SpotifyLink;
invoke-static {v0}, Lcom/spotify/mobile/android/util/dd;->a(Lcom/spotify/mobile/android/util/SpotifyLink;)Landroid/net/Uri;
move-result-object v4
if-eqz v4, :cond_19
iget-object v0, p0, Lcom/spotify/mobile/android/a/a;->h:Lcom/spotify/mobile/android/ui/actions/d;
iget-object v0, p0, Lcom/spotify/mobile/android/a/a;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/spotify/mobile/android/a/a;->c:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iget-object v3, p0, Lcom/spotify/mobile/android/a/a;->d:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;
const-wide/16 v5, -0x1
sget-object v7, Lcom/spotify/mobile/android/util/ViewUri$EventVersion;->a:Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
invoke-static/range {v0 .. v7}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;JLcom/spotify/mobile/android/util/ViewUri$EventVersion;)V
goto :goto_19
.end method
.method public final a(Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;Lcom/spotify/mobile/android/util/ClientEvent;)V
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
const-string v0, "Don\'t call setEventLogging with null subView"
invoke-static {p1, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
if-eqz p2, :cond_17
move v0, v1
:goto_a
iput-boolean v0, p0, Lcom/spotify/mobile/android/a/a;->j:Z
if-eqz p3, :cond_19
:goto_e
iput-boolean v1, p0, Lcom/spotify/mobile/android/a/a;->l:Z
iput-object p1, p0, Lcom/spotify/mobile/android/a/a;->f:Lcom/spotify/mobile/android/util/ViewUri$SubView;
iput-object p2, p0, Lcom/spotify/mobile/android/a/a;->i:Lcom/spotify/mobile/android/util/ClientEvent;
iput-object p3, p0, Lcom/spotify/mobile/android/a/a;->k:Lcom/spotify/mobile/android/util/ClientEvent;
return-void
:cond_17
move v0, v2
goto :goto_a
:cond_19
move v1, v2
goto :goto_e
.end method
.method public final b()V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/a/a;->h:Lcom/spotify/mobile/android/ui/actions/d;
iget-object v0, p0, Lcom/spotify/mobile/android/a/a;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/actions/d;->b(Landroid/content/Context;)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/a/a;->l:Z
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/spotify/mobile/android/a/a;->g:Lcom/spotify/mobile/android/ui/actions/a;
iget-object v0, p0, Lcom/spotify/mobile/android/a/a;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/spotify/mobile/android/a/a;->c:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iget-object v2, p0, Lcom/spotify/mobile/android/a/a;->f:Lcom/spotify/mobile/android/util/ViewUri$SubView;
iget-object v3, p0, Lcom/spotify/mobile/android/a/a;->k:Lcom/spotify/mobile/android/util/ClientEvent;
invoke-static {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V
:cond_18
return-void
.end method