.class final Lcom/spotify/mobile/android/ui/fragments/d$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/d;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/d;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/d$4;->a:Lcom/spotify/mobile/android/ui/fragments/d;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v4, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d$4;->a:Lcom/spotify/mobile/android/ui/fragments/d;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/d;->a(Lcom/spotify/mobile/android/ui/fragments/d;)Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lcom/spotify/music/internal/provider/SpotifyProvider;->a:Landroid/net/Uri;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/folder-union/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/d$4;->a:Lcom/spotify/mobile/android/ui/fragments/d;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/d;->E()[Ljava/lang/String;
move-result-object v3
move-object v5, v4
move-object v6, v4
invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public final a(Landroid/support/v4/content/k;)V
.registers 2
return-void
.end method
.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
.registers 10
const/4 v6, 0x0
check-cast p2, Landroid/database/Cursor;
invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-eqz v0, :cond_5c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d$4;->a:Lcom/spotify/mobile/android/ui/fragments/d;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/d;->c(Lcom/spotify/mobile/android/ui/fragments/d;)Lcom/spotify/mobile/android/util/tracking/n;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->b()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d$4;->a:Lcom/spotify/mobile/android/ui/fragments/d;
invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/d;->b(Lcom/spotify/mobile/android/ui/fragments/d;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d$4;->a:Lcom/spotify/mobile/android/ui/fragments/d;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/d;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "title"
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/d$4;->a:Lcom/spotify/mobile/android/ui/fragments/d;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/d;->d(Lcom/spotify/mobile/android/ui/fragments/d;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d$4;->a:Lcom/spotify/mobile/android/ui/fragments/d;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/d$4;->a:Lcom/spotify/mobile/android/ui/fragments/d;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/d$4;->a:Lcom/spotify/mobile/android/ui/fragments/d;
invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
const v3, 0x7f0f021b
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
iget-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/d$4;->a:Lcom/spotify/mobile/android/ui/fragments/d;
invoke-static {v5}, Lcom/spotify/mobile/android/ui/fragments/d;->d(Lcom/spotify/mobile/android/ui/fragments/d;)Ljava/lang/String;
move-result-object v5
aput-object v5, v4, v6
invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/spotify/mobile/android/ui/activity/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/d$4;->a:Lcom/spotify/mobile/android/ui/fragments/d;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/activity/n;->c()V
:cond_5c
return-void
.end method