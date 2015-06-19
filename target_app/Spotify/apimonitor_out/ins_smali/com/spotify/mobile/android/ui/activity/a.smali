.class public final Lcom/spotify/mobile/android/ui/activity/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Landroid/content/Intent;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/a;->a:Landroid/content/Intent;
return-void
.end method
.method public final a()Lcom/spotify/mobile/android/ui/activity/a;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/a;->a:Landroid/content/Intent;
const-string v1, "failed"
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
return-object p0
.end method
.method public final a(Landroid/net/Uri;)Lcom/spotify/mobile/android/ui/activity/a;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/a;->a:Landroid/content/Intent;
const-string v1, "image_uri"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
return-object p0
.end method
.method public final a(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/a;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/a;->a:Landroid/content/Intent;
const-string v1, "playlist_uri"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
return-object p0
.end method
.method public final b()Landroid/content/Intent;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/a;->a:Landroid/content/Intent;
return-object v0
.end method
.method public final b(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/a;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/a;->a:Landroid/content/Intent;
const-string v1, "title"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
return-object p0
.end method
.method public final c(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/a;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/a;->a:Landroid/content/Intent;
const-string v1, "description"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
return-object p0
.end method
.method public final d(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/a;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/a;->a:Landroid/content/Intent;
const-string v1, "folder_uri"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
return-object p0
.end method
.method public final e(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/a;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/a;->a:Landroid/content/Intent;
const-string v1, "item_uri"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
return-object p0
.end method