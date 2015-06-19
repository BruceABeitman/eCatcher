.class final Lcom/spotify/mobile/android/e/n$11;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/e/o;
.field final synthetic a:Lcom/spotify/mobile/android/e/p;
.field final synthetic b:Lcom/spotify/mobile/android/e/n;
.field private final c:Lcom/spotify/mobile/android/util/ClientEvent;
.field private final d:Lcom/spotify/mobile/android/util/ClientEvent;
.method constructor <init>(Lcom/spotify/mobile/android/e/n;Lcom/spotify/mobile/android/e/p;)V
.registers 6
iput-object p1, p0, Lcom/spotify/mobile/android/e/n$11;->b:Lcom/spotify/mobile/android/e/n;
iput-object p2, p0, Lcom/spotify/mobile/android/e/n$11;->a:Lcom/spotify/mobile/android/e/p;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;
sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->aK:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
iput-object v0, p0, Lcom/spotify/mobile/android/e/n$11;->c:Lcom/spotify/mobile/android/util/ClientEvent;
new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;
sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->aJ:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
iput-object v0, p0, Lcom/spotify/mobile/android/e/n$11;->d:Lcom/spotify/mobile/android/util/ClientEvent;
return-void
.end method
.method public final a()V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/e/n$11;->b:Lcom/spotify/mobile/android/e/n;
invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->d(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/w;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/w;->d()V
iget-object v0, p0, Lcom/spotify/mobile/android/e/n$11;->b:Lcom/spotify/mobile/android/e/n;
invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->h(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/ui/actions/a;
iget-object v0, p0, Lcom/spotify/mobile/android/e/n$11;->b:Lcom/spotify/mobile/android/e/n;
invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->f(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/SpotifyService;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->getApplicationContext()Landroid/content/Context;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iget-object v2, p0, Lcom/spotify/mobile/android/e/n$11;->d:Lcom/spotify/mobile/android/util/ClientEvent;
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
iget-object v1, p0, Lcom/spotify/mobile/android/e/n$11;->b:Lcom/spotify/mobile/android/e/n;
iget-object v0, p0, Lcom/spotify/mobile/android/e/n$11;->b:Lcom/spotify/mobile/android/e/n;
invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->i(Lcom/spotify/mobile/android/e/n;)Landroid/media/AudioManager;
move-result-object v0
invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z
move-result v0
if-nez v0, :cond_39
iget-object v0, p0, Lcom/spotify/mobile/android/e/n$11;->b:Lcom/spotify/mobile/android/e/n;
invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->i(Lcom/spotify/mobile/android/e/n;)Landroid/media/AudioManager;
move-result-object v0
invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z
move-result v0
if-eqz v0, :cond_a1
:cond_39
const/4 v0, 0x1
:goto_3a
invoke-static {v1, v0}, Lcom/spotify/mobile/android/e/n;->a(Lcom/spotify/mobile/android/e/n;Z)Z
iget-object v0, p0, Lcom/spotify/mobile/android/e/n$11;->b:Lcom/spotify/mobile/android/e/n;
invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->j(Lcom/spotify/mobile/android/e/n;)Z
move-result v0
if-eqz v0, :cond_66
iget-object v0, p0, Lcom/spotify/mobile/android/e/n$11;->a:Lcom/spotify/mobile/android/e/p;
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/p;->i()Lcom/spotify/mobile/android/e/l;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->d()Z
move-result v0
if-eqz v0, :cond_66
iget-object v0, p0, Lcom/spotify/mobile/android/e/n$11;->a:Lcom/spotify/mobile/android/e/p;
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/p;->b()Lcom/spotify/mobile/android/e/l;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->e()Z
move-result v0
if-eqz v0, :cond_66
iget-object v0, p0, Lcom/spotify/mobile/android/e/n$11;->b:Lcom/spotify/mobile/android/e/n;
invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->c(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/managers/ConnectManager;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/managers/ConnectManager;->f()V
:cond_66
iget-object v0, p0, Lcom/spotify/mobile/android/e/n$11;->a:Lcom/spotify/mobile/android/e/p;
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/p;->m()Lcom/spotify/mobile/android/e/l;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->d()Z
move-result v0
if-eqz v0, :cond_83
iget-object v0, p0, Lcom/spotify/mobile/android/e/n$11;->b:Lcom/spotify/mobile/android/e/n;
invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->k(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/managers/f;
move-result-object v0
if-eqz v0, :cond_83
iget-object v0, p0, Lcom/spotify/mobile/android/e/n$11;->b:Lcom/spotify/mobile/android/e/n;
invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->k(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/managers/f;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/managers/f;->a()V
:cond_83
iget-object v0, p0, Lcom/spotify/mobile/android/e/n$11;->a:Lcom/spotify/mobile/android/e/p;
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/p;->n()Lcom/spotify/mobile/android/e/l;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->d()Z
move-result v0
if-eqz v0, :cond_a0
iget-object v0, p0, Lcom/spotify/mobile/android/e/n$11;->a:Lcom/spotify/mobile/android/e/p;
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/p;->m()Lcom/spotify/mobile/android/e/l;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->e()Z
move-result v0
if-eqz v0, :cond_a0
iget-object v0, p0, Lcom/spotify/mobile/android/e/n$11;->b:Lcom/spotify/mobile/android/e/n;
invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->g(Lcom/spotify/mobile/android/e/n;)V
:cond_a0
return-void
:cond_a1
const/4 v0, 0x0
goto :goto_3a
.end method
.method public final b()V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/e/n$11;->b:Lcom/spotify/mobile/android/e/n;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/spotify/mobile/android/e/n;->a(Lcom/spotify/mobile/android/e/n;Z)Z
iget-object v0, p0, Lcom/spotify/mobile/android/e/n$11;->b:Lcom/spotify/mobile/android/e/n;
invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->h(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/ui/actions/a;
iget-object v0, p0, Lcom/spotify/mobile/android/e/n$11;->b:Lcom/spotify/mobile/android/e/n;
invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->f(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/SpotifyService;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->getApplicationContext()Landroid/content/Context;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iget-object v2, p0, Lcom/spotify/mobile/android/e/n$11;->c:Lcom/spotify/mobile/android/util/ClientEvent;
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
return-void
.end method