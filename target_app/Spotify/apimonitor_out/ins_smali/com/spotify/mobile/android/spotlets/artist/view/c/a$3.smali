.class final Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/spotlets/artist/view/b/e;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->f(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->f(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->a(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Lcom/spotify/mobile/android/spotlets/artist/b/a;
move-result-object v2
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/artist/b/a;->d()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-static {v4}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->e(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Landroid/os/Bundle;
move-result-object v4
invoke-static {v1, v2, v3, v4}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/artist/view/b/c;)V
.registers 7
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->e(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "concert_id"
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/artist/view/b/c;->b()I
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->f(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->f(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Landroid/content/Context;
move-result-object v2
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-static {v3}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->a(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Lcom/spotify/mobile/android/spotlets/artist/b/a;
move-result-object v3
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/artist/b/a;->f()Ljava/lang/String;
move-result-object v3
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ":concert"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const/4 v4, 0x0
invoke-static {v2, v3, v4, v0}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/artist/view/b/g;)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->f(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Landroid/content/Context;
move-result-object v0
new-instance v1, Landroid/content/Intent;
const-string v2, "android.intent.action.VIEW"
invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/artist/view/b/g;->b()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/artist/view/b/h;)V
.registers 6
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/artist/view/b/h;->b()Ljava/lang/String;
move-result-object v0
const-string v1, "viewall"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->a(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Lcom/spotify/mobile/android/spotlets/artist/b/a;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->f(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->g(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Landroid/os/Bundle;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/artist/b/a;->a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;
move-result-object v0
:goto_22
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->f(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Landroid/content/Context;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
:cond_2c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->d()Landroid/content/Context;
move-result-object v0
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/artist/view/b/h;->b()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->e(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Landroid/os/Bundle;
move-result-object v2
const/4 v3, 0x0
invoke-static {v0, v1, v3, v2}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
move-result-object v0
goto :goto_22
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/artist/view/b/i;)V
.registers 9
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->J:Lcom/spotify/mobile/android/util/ea;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->a(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Lcom/spotify/mobile/android/spotlets/artist/b/a;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/artist/b/a;->f()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v0
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/artist/view/b/i;->b()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/provider/r;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->d(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Lcom/spotify/mobile/android/ui/actions/a;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->d()Landroid/content/Context;
move-result-object v2
sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->O:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-virtual {v3}, Lcom/spotify/mobile/android/util/ViewUri$SubView;->toString()Ljava/lang/String;
move-result-object v3
sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->aV:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/artist/view/b/i;->b()Ljava/lang/String;
move-result-object v5
const/4 v6, 0x0
invoke-static {v3, v4, v5, v6}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v3
invoke-static {v2, v0, v3}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->b(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Lcom/spotify/mobile/android/ui/actions/d;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->d()Landroid/content/Context;
move-result-object v2
sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-static {v2, v0, v3, v1}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Landroid/net/Uri;)V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/artist/view/b/k;)V
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->d()Landroid/content/Context;
move-result-object v0
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/artist/view/b/k;->b()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->e(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Landroid/os/Bundle;
move-result-object v2
const/4 v3, 0x0
invoke-static {v0, v1, v3, v2}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->f(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Landroid/content/Context;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/artist/view/b/l;)V
.registers 9
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->a(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Lcom/spotify/mobile/android/spotlets/artist/b/a;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/b/a;->f()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/provider/b;->c(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v4
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->J:Lcom/spotify/mobile/android/util/ea;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->a(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Lcom/spotify/mobile/android/spotlets/artist/b/a;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/artist/b/a;->f()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v1
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v0
if-eqz v0, :cond_68
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->e()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_45
instance-of v2, v0, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;
if-eqz v2, :cond_5f
check-cast v0, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->b()V
:goto_37
new-instance v0, Lcom/spotify/mobile/android/util/f;
invoke-direct {v0}, Lcom/spotify/mobile/android/util/f;-><init>()V
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->c(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Landroid/view/View;
move-result-object v2
invoke-static {v0, v2}, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->a(Lcom/spotify/mobile/android/util/f;Landroid/view/View;)V
:cond_45
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->d(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Lcom/spotify/mobile/android/ui/actions/a;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->d()Landroid/content/Context;
move-result-object v0
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/artist/view/b/l;->a()I
move-result v3
int-to-long v5, v3
invoke-static {v4, v5, v6}, Lcom/spotify/mobile/android/util/ClientEventFactory;->b(Landroid/net/Uri;J)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v3
invoke-static {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V
:goto_5e
return-void
:cond_5f
new-instance v2, Lcom/spotify/mobile/android/util/f;
invoke-direct {v2}, Lcom/spotify/mobile/android/util/f;-><init>()V
invoke-static {v2, v0}, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->a(Lcom/spotify/mobile/android/util/f;Landroid/view/View;)V
goto :goto_37
:cond_68
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->b(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Lcom/spotify/mobile/android/ui/actions/d;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->d()Landroid/content/Context;
move-result-object v0
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;
sget-object v3, Lcom/spotify/mobile/android/util/ViewUri;->be:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/artist/view/b/l;->a()I
move-result v5
int-to-long v5, v5
invoke-static/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;J)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->d(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Lcom/spotify/mobile/android/ui/actions/a;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->d()Landroid/content/Context;
move-result-object v0
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/artist/view/b/l;->a()I
move-result v3
int-to-long v5, v3
invoke-static {v4, v5, v6}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Landroid/net/Uri;J)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v3
invoke-static {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V
goto :goto_5e
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/artist/view/b/m;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/artist/view/b/m;->b()Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->a(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;)V
return-void
.end method
.method public final b()V
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->f(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->f(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->a(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Lcom/spotify/mobile/android/spotlets/artist/b/a;
move-result-object v2
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/artist/b/a;->b()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-static {v4}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->e(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Landroid/os/Bundle;
move-result-object v4
invoke-static {v1, v2, v3, v4}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method