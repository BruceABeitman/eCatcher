.class final Lcom/spotify/mobile/android/ui/activity/e;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;
.field private final b:Ljava/lang/String;
.field private final c:Lcom/spotify/mobile/android/ui/activity/f;
.method public constructor <init>(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;Ljava/lang/String;Lcom/spotify/mobile/android/ui/activity/f;)V
.registers 4
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/e;->a:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/spotify/mobile/android/ui/activity/e;->b:Ljava/lang/String;
iput-object p3, p0, Lcom/spotify/mobile/android/ui/activity/e;->c:Lcom/spotify/mobile/android/ui/activity/f;
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v4, 0x0
new-instance v0, Lcom/spotify/mobile/android/util/SpotifyLink;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/e;->b:Ljava/lang/String;
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->G:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
if-ne v0, v1, :cond_26
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/e;->a:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/e;->b:Ljava/lang/String;
invoke-static {v2}, Lcom/spotify/mobile/android/provider/f;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/e;->a:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;
invoke-static {v3}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->d(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;)[Ljava/lang/String;
move-result-object v3
move-object v5, v4
move-object v6, v4
invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
:goto_25
return-object v0
:cond_26
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/e;->a:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/e;->b:Ljava/lang/String;
invoke-static {v2}, Lcom/spotify/mobile/android/provider/o;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/e;->a:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;
invoke-static {v3}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->d(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;)[Ljava/lang/String;
move-result-object v3
move-object v5, v4
move-object v6, v4
invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
goto :goto_25
.end method
.method public final a(Landroid/support/v4/content/k;)V
.registers 2
return-void
.end method
.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
.registers 5
check-cast p2, Landroid/database/Cursor;
invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-eqz v0, :cond_e
invoke-static {p2}, Lcom/spotify/mobile/android/provider/ac;->a(Landroid/database/Cursor;)Z
move-result v0
if-nez v0, :cond_f
:cond_e
:goto_e
return-void
:cond_f
const/4 v0, 0x0
invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/e;->c:Lcom/spotify/mobile/android/ui/activity/f;
invoke-interface {v1, v0}, Lcom/spotify/mobile/android/ui/activity/f;->a(Ljava/lang/String;)V
goto :goto_e
.end method