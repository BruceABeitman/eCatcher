.class final Lcom/spotify/mobile/android/ui/activity/b;
.super Lcom/spotify/mobile/android/ui/activity/c;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;
.method public constructor <init>(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;Ljava/lang/String;)V
.registers 6
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/b;->a:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;
invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/ui/activity/c;-><init>(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/b;->b:Landroid/content/ContentValues;
const-string v1, "is_folder"
const/4 v2, 0x1
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
return-void
.end method