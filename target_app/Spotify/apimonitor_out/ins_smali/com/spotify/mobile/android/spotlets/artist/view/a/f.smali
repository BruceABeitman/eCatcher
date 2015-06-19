.class public final Lcom/spotify/mobile/android/spotlets/artist/view/a/f;
.super Lcom/spotify/mobile/android/spotlets/artist/view/a/c;
.source "SourceFile"
.field private final a:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/artist/view/a/b;)V
.registers 10
invoke-direct {p0, p1, p2, p3}, Lcom/spotify/mobile/android/spotlets/artist/view/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/artist/view/a/b;)V
new-instance v0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;
sget-object v1, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;->a:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;
sget-object v2, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseArtist;->b:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseArtist;
sget-object v3, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;->a:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;
sget-object v4, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveTrack;->b:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveTrack;
new-instance v5, Lcom/spotify/mobile/android/spotlets/artist/view/a/f$1;
invoke-direct {v5, p0}, Lcom/spotify/mobile/android/spotlets/artist/view/a/f$1;-><init>(Lcom/spotify/mobile/android/spotlets/artist/view/a/f;)V
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;-><init>(Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseArtist;Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveTrack;Lcom/spotify/mobile/android/ui/menus/g;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/f;->a:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;
return-void
.end method
.method protected final bridge synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
.registers 3
invoke-static {p1}, Lcom/spotify/mobile/android/spotlets/artist/model/k;->a(Landroid/database/Cursor;)Lcom/spotify/mobile/android/spotlets/artist/model/k;
move-result-object v0
return-object v0
.end method
.method protected final bridge synthetic a(Landroid/view/ContextMenu;Ljava/lang/Object;)V
.registers 4
check-cast p2, Lcom/spotify/mobile/android/model/n;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/f;->a:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;
invoke-virtual {v0, p1, p2}, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->a(Landroid/view/ContextMenu;Lcom/spotify/mobile/android/model/n;)V
return-void
.end method
.method protected final a(Ljava/lang/String;)V
.registers 8
invoke-static {p1}, Lcom/spotify/mobile/android/provider/Metadata$Track;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
sget-object v3, Lcom/spotify/mobile/android/spotlets/artist/model/k;->a:[Ljava/lang/String;
const-string v4, "uri=?"
const/4 v0, 0x1
new-array v5, v0, [Ljava/lang/String;
const/4 v0, 0x0
aput-object p1, v5, v0
move-object v0, p0
move-object v1, p1
invoke-virtual/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/artist/view/a/f;->a(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
return-void
.end method