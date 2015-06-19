.class public final Lcom/spotify/mobile/android/spotlets/collection/fragments/k;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Landroid/os/Bundle;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->a:Landroid/os/Bundle;
return-void
.end method
.method public final a(Landroid/content/Context;)Landroid/content/Intent;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->a:Landroid/os/Bundle;
const-string v1, "playlist_uri"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "playlistUri must be set"
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/bt;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
invoke-static {p1, v0}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->a:Landroid/os/Bundle;
invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
return-object v0
.end method
.method public final a()Lcom/spotify/mobile/android/spotlets/collection/fragments/k;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->a:Landroid/os/Bundle;
const-string v1, "is_sub_fragment"
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
return-object p0
.end method
.method public final a(I)Lcom/spotify/mobile/android/spotlets/collection/fragments/k;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->a:Landroid/os/Bundle;
const-string v1, "reveal_row"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-object p0
.end method
.method public final a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/spotlets/collection/fragments/k;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->a:Landroid/os/Bundle;
const-string v1, "referer"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
return-object p0
.end method
.method public final a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/fragments/k;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->a:Landroid/os/Bundle;
const-string v1, "playlist_uri"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-object p0
.end method
.method public final a(Z)Lcom/spotify/mobile/android/spotlets/collection/fragments/k;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->a:Landroid/os/Bundle;
const-string v1, "autoplay"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
return-object p0
.end method
.method public final b(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/fragments/k;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->a:Landroid/os/Bundle;
const-string v1, "sort_order"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-object p0
.end method
.method public final b(Z)Lcom/spotify/mobile/android/ui/fragments/e;
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->a:Landroid/os/Bundle;
const-string v1, "playlist_uri"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "playlistUri must be set"
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/bt;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
if-eqz p1, :cond_1e
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/h;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/h;-><init>()V
:goto_14
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/fragments/e;->D()Landroid/support/v4/app/Fragment;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->a:Landroid/os/Bundle;
invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->c_(Landroid/os/Bundle;)V
return-object v0
:cond_1e
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-direct {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;-><init>()V
goto :goto_14
.end method
.method public final c(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/fragments/k;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->a:Landroid/os/Bundle;
const-string v1, "title"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-object p0
.end method
.method public final d(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/fragments/k;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->a:Landroid/os/Bundle;
const-string v1, "lookup_track_uri"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-object p0
.end method