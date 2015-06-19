.class public final Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Lcom/spotify/mobile/android/ui/menus/c;
.field private b:Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate$CanDownload;
.field private c:Lcom/spotify/mobile/android/ui/menus/d;
.method public constructor <init>(Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate$CanDownload;Lcom/spotify/mobile/android/ui/menus/c;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-class v0, Lcom/spotify/mobile/android/ui/menus/d;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/menus/d;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate;->c:Lcom/spotify/mobile/android/ui/menus/d;
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate$CanDownload;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate;->b:Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate$CanDownload;
invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/menus/c;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/c;
return-void
.end method
.method private a()Lcom/spotify/mobile/android/util/ViewUri$SubView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/c;
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;
return-object v0
.end method
.method public final a(Landroid/view/ContextMenu;Lcom/spotify/mobile/android/model/b;)V
.registers 12
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/menus/c;->a()Landroid/content/Context;
move-result-object v1
invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate;->b:Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate$CanDownload;
sget-object v2, Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate$CanDownload;->a:Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate$CanDownload;
if-ne v0, v2, :cond_74
const/4 v0, 0x1
:goto_10
if-eqz v0, :cond_3f
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate;->c:Lcom/spotify/mobile/android/ui/menus/d;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/c;
invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/menus/c;->b()Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v3
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate;->a()Lcom/spotify/mobile/android/util/ViewUri$SubView;
move-result-object v4
invoke-interface {p2}, Lcom/spotify/mobile/android/model/b;->getCollectionUri()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/spotify/mobile/android/provider/c;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v5
new-instance v2, Lcom/spotify/mobile/android/util/SpotifyLink;
invoke-interface {p2}, Lcom/spotify/mobile/android/model/b;->getCollectionUri()Ljava/lang/String;
move-result-object v6
invoke-direct {v2, v6}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v6
invoke-interface {p2}, Lcom/spotify/mobile/android/model/b;->getOfflineState()I
move-result v7
invoke-interface {p2}, Lcom/spotify/mobile/android/model/b;->getSyncProgress()I
move-result v8
move-object v2, p1
invoke-virtual/range {v0 .. v8}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Landroid/net/Uri;Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;II)V
:cond_3f
invoke-interface {p2}, Lcom/spotify/mobile/android/model/b;->isRadioAvailable()Z
move-result v0
if-eqz v0, :cond_59
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate;->c:Lcom/spotify/mobile/android/ui/menus/d;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/c;
invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/menus/c;->b()Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v3
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate;->a()Lcom/spotify/mobile/android/util/ViewUri$SubView;
move-result-object v4
invoke-interface {p2}, Lcom/spotify/mobile/android/model/b;->getUri()Ljava/lang/String;
move-result-object v5
move-object v2, p1
invoke-virtual/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/menus/d;->b(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;)V
:cond_59
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate;->c:Lcom/spotify/mobile/android/ui/menus/d;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/c;
invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/menus/c;->b()Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v3
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate;->a()Lcom/spotify/mobile/android/util/ViewUri$SubView;
move-result-object v4
invoke-interface {p2}, Lcom/spotify/mobile/android/model/b;->getName()Ljava/lang/String;
move-result-object v5
const-string v6, ""
invoke-interface {p2}, Lcom/spotify/mobile/android/model/b;->getUri()Ljava/lang/String;
move-result-object v7
move-object v2, p1
invoke-virtual/range {v0 .. v7}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
:cond_74
const/4 v0, 0x0
goto :goto_10
.end method