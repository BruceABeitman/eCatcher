.class public final Lcom/spotify/mobile/android/spotlets/artist/view/a/e;
.super Lcom/spotify/mobile/android/spotlets/artist/view/a/c;
.source "SourceFile"
.field private final a:Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/artist/view/a/b;)V
.registers 9
invoke-direct {p0, p1, p2, p3}, Lcom/spotify/mobile/android/spotlets/artist/view/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/artist/view/a/b;)V
new-instance v0, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;
sget-object v1, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate$CanBrowseArtist;->b:Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate$CanBrowseArtist;
sget-object v2, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate$CanRemoveFromCollection;->a:Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate$CanRemoveFromCollection;
sget-object v3, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate$CanDownload;->b:Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate$CanDownload;
new-instance v4, Lcom/spotify/mobile/android/spotlets/artist/view/a/e$1;
invoke-direct {v4, p0}, Lcom/spotify/mobile/android/spotlets/artist/view/a/e$1;-><init>(Lcom/spotify/mobile/android/spotlets/artist/view/a/e;)V
invoke-direct {v0, v1, v2, v3, v4}, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;-><init>(Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate$CanBrowseArtist;Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate$CanRemoveFromCollection;Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate$CanDownload;Lcom/spotify/mobile/android/ui/menus/b;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/e;->a:Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;
return-void
.end method
.method protected final bridge synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
.registers 3
invoke-static {p1}, Lcom/spotify/mobile/android/spotlets/artist/model/j;->a(Landroid/database/Cursor;)Lcom/spotify/mobile/android/spotlets/artist/model/j;
move-result-object v0
return-object v0
.end method
.method protected final bridge synthetic a(Landroid/view/ContextMenu;Ljava/lang/Object;)V
.registers 4
check-cast p2, Lcom/spotify/mobile/android/spotlets/artist/model/j;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/e;->a:Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;
invoke-virtual {v0, p1, p2}, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;->a(Landroid/view/ContextMenu;Lcom/spotify/mobile/android/model/a;)V
return-void
.end method
.method protected final a(Ljava/lang/String;)V
.registers 8
invoke-static {p1}, Lcom/spotify/mobile/android/provider/a;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
sget-object v3, Lcom/spotify/mobile/android/spotlets/artist/model/j;->a:[Ljava/lang/String;
const-string v4, "uri=?"
const/4 v0, 0x1
new-array v5, v0, [Ljava/lang/String;
const/4 v0, 0x0
aput-object p1, v5, v0
move-object v0, p0
move-object v1, p1
invoke-virtual/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/artist/view/a/e;->a(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
return-void
.end method