.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/c$5;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v4, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->g(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/provider/c;->b(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
sget-object v3, Lcom/spotify/mobile/android/model/h;->a:[Ljava/lang/String;
const-string v6, "album_name"
move-object v5, v4
invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public final a(Landroid/support/v4/content/k;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->w(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->a(Landroid/database/Cursor;)V
return-void
.end method
.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
.registers 5
check-cast p2, Landroid/database/Cursor;
invoke-static {p2}, Lcom/spotify/mobile/android/provider/ac;->a(Landroid/database/Cursor;)Z
move-result v0
if-eqz v0, :cond_5b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->w(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->a(Landroid/database/Cursor;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->n(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->x(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/ui/adapter/o;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->d(I)Z
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/activity/n;->c()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->y(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Landroid/os/Parcelable;
move-result-object v0
if-eqz v0, :cond_4d
invoke-interface {p2}, Landroid/database/Cursor;->getCount()I
move-result v0
if-lez v0, :cond_4d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->a()Landroid/widget/ListView;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->y(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Landroid/os/Parcelable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->z(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Landroid/os/Parcelable;
:cond_4d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->l(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/util/ar;
move-result-object v0
const/4 v1, 0x1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, v1, p2}, Lcom/spotify/mobile/android/util/ar;->a(Ljava/lang/Object;Landroid/database/Cursor;)V
:cond_5b
return-void
.end method