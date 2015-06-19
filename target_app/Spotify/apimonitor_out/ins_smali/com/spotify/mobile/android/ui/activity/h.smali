.class final Lcom/spotify/mobile/android/ui/activity/h;
.super Lcom/spotify/mobile/android/ui/activity/c;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;
.field private e:Landroid/net/Uri;
.method public constructor <init>(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;Ljava/lang/String;)V
.registers 6
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/h;->a:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/activity/c;-><init>(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;)V
new-instance v0, Lcom/spotify/mobile/android/util/SpotifyLink;
invoke-direct {v0, p2}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V
sget-object v1, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$6;->a:[I
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v2
invoke-virtual {v2}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_46
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Trying to rename playlist or folder, but link is of different type: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
:goto_2f
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/h;->e:Landroid/net/Uri;
const-string v1, "uri is neither a playlist nor a folder uri."
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V
return-void
:pswitch_37
invoke-static {p2}, Lcom/spotify/mobile/android/provider/f;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/h;->e:Landroid/net/Uri;
goto :goto_2f
:pswitch_3e
invoke-static {p2}, Lcom/spotify/mobile/android/provider/o;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/h;->e:Landroid/net/Uri;
goto :goto_2f
nop
:pswitch_data_46
.packed-switch 0x1
:pswitch_37
:pswitch_3e
:pswitch_3e
.end packed-switch
.end method
.method public final a()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/h;->b:Landroid/content/ContentValues;
const-string v1, "name"
invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "Must set the new name of the playlist or folder"
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/h;->e:Landroid/net/Uri;
const-string v1, "mContentUri must be set."
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/h;->a:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/h;->e:Landroid/net/Uri;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/h;->b:Landroid/content/ContentValues;
invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/h;->a:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/util/dp;->p(Landroid/content/Context;)V
return-void
.end method