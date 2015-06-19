.class public final Lcom/spotify/mobile/android/ui/fragments/i;
.super Lcom/spotify/mobile/android/ui/fragments/x;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/ef;
.field private a:Lcom/spotify/mobile/android/util/ec;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/x;-><init>()V
return-void
.end method
.method protected final a()V
.registers 5
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/i;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/service/a/d;->a(Landroid/net/Uri;)Lcom/spotify/mobile/android/service/a/e;
move-result-object v1
iget-object v2, v1, Lcom/spotify/mobile/android/service/a/e;->b:Landroid/net/Uri;
invoke-static {v2}, Lcom/spotify/mobile/android/util/webview/a;->b(Landroid/net/Uri;)Z
move-result v3
if-nez v3, :cond_2e
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "Initial uri is not deemed secure, aborting. "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V
:goto_2d
return-void
:cond_2e
iget-boolean v1, v1, Lcom/spotify/mobile/android/service/a/e;->a:Z
if-eqz v1, :cond_46
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->e()Landroid/support/v4/app/y;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/ec;->a(Landroid/app/Activity;Landroid/support/v4/app/y;)Lcom/spotify/mobile/android/util/ec;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/i;->a:Lcom/spotify/mobile/android/util/ec;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/i;->a:Lcom/spotify/mobile/android/util/ec;
invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p0}, Lcom/spotify/mobile/android/util/ec;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ef;)V
goto :goto_2d
:cond_46
invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/i;->c(Ljava/lang/String;)V
goto :goto_2d
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 2
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/x;->a(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/i;->s()V
return-void
.end method
.method protected final a(Landroid/net/Uri;)Z
.registers 4
invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->b(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1e
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.VIEW"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "android.intent.category.BROWSABLE"
invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/i;->a(Landroid/content/Intent;)V
const/4 v0, 0x1
:goto_1d
return v0
:cond_1e
const/4 v0, 0x0
goto :goto_1d
.end method
.method public final a_(Landroid/net/Uri;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/i;->a:Lcom/spotify/mobile/android/util/ec;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/i;->a:Lcom/spotify/mobile/android/util/ec;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ec;->b()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/i;->a:Lcom/spotify/mobile/android/util/ec;
:cond_c
if-nez p1, :cond_17
const-string v0, "Not ready to load web, web token null"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
:goto_16
return-void
:cond_17
invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/i;->c(Ljava/lang/String;)V
goto :goto_16
.end method
.method public final z()V
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/ui/fragments/x;->z()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/i;->a:Lcom/spotify/mobile/android/util/ec;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/i;->a:Lcom/spotify/mobile/android/util/ec;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ec;->b()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/i;->a:Lcom/spotify/mobile/android/util/ec;
:cond_f
return-void
.end method