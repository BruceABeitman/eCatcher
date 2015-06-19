.class public final Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate$CanBrowseArtist;
.field private b:Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate$CanRemoveFromCollection;
.field private c:Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate$CanDownload;
.field private d:Lcom/spotify/mobile/android/ui/menus/b;
.field private e:Lcom/spotify/mobile/android/ui/menus/d;
.method public constructor <init>(Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate$CanBrowseArtist;Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate$CanRemoveFromCollection;Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate$CanDownload;Lcom/spotify/mobile/android/ui/menus/b;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-class v0, Lcom/spotify/mobile/android/ui/menus/d;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/menus/d;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;->e:Lcom/spotify/mobile/android/ui/menus/d;
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate$CanBrowseArtist;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate$CanBrowseArtist;
invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate$CanRemoveFromCollection;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;->b:Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate$CanRemoveFromCollection;
invoke-static {p3}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate$CanDownload;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;->c:Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate$CanDownload;
invoke-static {p4}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/menus/b;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;->d:Lcom/spotify/mobile/android/ui/menus/b;
return-void
.end method
.method private a()Lcom/spotify/mobile/android/util/ViewUri$SubView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;->d:Lcom/spotify/mobile/android/ui/menus/b;
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;
return-object v0
.end method
.method public final a(Landroid/view/ContextMenu;Lcom/spotify/mobile/android/model/a;)V
.registers 14
const/4 v9, 0x1
const/4 v10, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;->d:Lcom/spotify/mobile/android/ui/menus/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/menus/b;->b()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;)V
invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;->e:Lcom/spotify/mobile/android/ui/menus/d;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;->d:Lcom/spotify/mobile/android/ui/menus/b;
invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/menus/b;->a()Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v3
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;->a()Lcom/spotify/mobile/android/util/ViewUri$SubView;
move-result-object v4
invoke-interface {p2}, Lcom/spotify/mobile/android/model/a;->getCollectionState()Lcom/spotify/mobile/android/util/Collection$State;
move-result-object v5
iget-object v2, p0, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;->b:Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate$CanRemoveFromCollection;
sget-object v6, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate$CanRemoveFromCollection;->a:Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate$CanRemoveFromCollection;
if-ne v2, v6, :cond_120
move v6, v9
:goto_25
invoke-interface {p2}, Lcom/spotify/mobile/android/model/a;->getUri()Ljava/lang/String;
move-result-object v7
move-object v2, p1
invoke-virtual/range {v0 .. v7}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/Collection$State;ZLjava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;->c:Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate$CanDownload;
sget-object v2, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate$CanDownload;->a:Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate$CanDownload;
if-ne v0, v2, :cond_123
move v0, v9
:goto_34
if-eqz v0, :cond_73
invoke-interface {p2}, Lcom/spotify/mobile/android/model/a;->getOfflineState()I
move-result v0
invoke-static {v0}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->a(I)Z
move-result v0
if-nez v0, :cond_46
invoke-interface {p2}, Lcom/spotify/mobile/android/model/a;->getCanUndownload()Z
move-result v0
if-eqz v0, :cond_73
:cond_46
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;->e:Lcom/spotify/mobile/android/ui/menus/d;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;->d:Lcom/spotify/mobile/android/ui/menus/b;
invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/menus/b;->a()Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v3
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;->a()Lcom/spotify/mobile/android/util/ViewUri$SubView;
move-result-object v4
invoke-interface {p2}, Lcom/spotify/mobile/android/model/a;->getCollectionUri()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/spotify/mobile/android/provider/c;->c(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v5
new-instance v2, Lcom/spotify/mobile/android/util/SpotifyLink;
invoke-interface {p2}, Lcom/spotify/mobile/android/model/a;->getCollectionUri()Ljava/lang/String;
move-result-object v6
invoke-direct {v2, v6}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v6
invoke-interface {p2}, Lcom/spotify/mobile/android/model/a;->getOfflineState()I
move-result v7
invoke-interface {p2}, Lcom/spotify/mobile/android/model/a;->getSyncProgress()I
move-result v8
move-object v2, p1
invoke-virtual/range {v0 .. v8}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Landroid/net/Uri;Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;II)V
:cond_73
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate$CanBrowseArtist;
sget-object v2, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate$CanBrowseArtist;->a:Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate$CanBrowseArtist;
if-ne v0, v2, :cond_126
move v0, v9
:goto_7a
if-eqz v0, :cond_a4
invoke-interface {p2}, Lcom/spotify/mobile/android/model/a;->getArtistName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/h;->a(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_a4
invoke-interface {p2}, Lcom/spotify/mobile/android/model/a;->isArtistBrowsable()Z
move-result v0
if-eqz v0, :cond_a4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;->e:Lcom/spotify/mobile/android/ui/menus/d;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;->d:Lcom/spotify/mobile/android/ui/menus/b;
invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/menus/b;->a()Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v3
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;->a()Lcom/spotify/mobile/android/util/ViewUri$SubView;
move-result-object v4
invoke-interface {p2}, Lcom/spotify/mobile/android/model/a;->getArtistUri()Ljava/lang/String;
move-result-object v5
invoke-interface {p2}, Lcom/spotify/mobile/android/model/a;->getArtistName()Ljava/lang/String;
move-result-object v6
move-object v2, p1
invoke-virtual/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;Ljava/lang/String;)V
:cond_a4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;->e:Lcom/spotify/mobile/android/ui/menus/d;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;->d:Lcom/spotify/mobile/android/ui/menus/b;
invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/menus/b;->a()Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v3
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;->a()Lcom/spotify/mobile/android/util/ViewUri$SubView;
move-result-object v4
invoke-interface {p2}, Lcom/spotify/mobile/android/model/a;->getUri()Ljava/lang/String;
move-result-object v5
invoke-interface {p2}, Lcom/spotify/mobile/android/model/a;->getArtistName()Ljava/lang/String;
move-result-object v2
invoke-interface {p2}, Lcom/spotify/mobile/android/model/a;->getName()Ljava/lang/String;
move-result-object v6
invoke-static {v2, v6}, Lcom/spotify/mobile/android/util/bu;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
move-object v2, p1
invoke-virtual/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/menus/d;->b(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {p2}, Lcom/spotify/mobile/android/model/a;->isRadioAvailable()Z
move-result v0
if-eqz v0, :cond_de
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;->e:Lcom/spotify/mobile/android/ui/menus/d;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;->d:Lcom/spotify/mobile/android/ui/menus/b;
invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/menus/b;->a()Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v3
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;->a()Lcom/spotify/mobile/android/util/ViewUri$SubView;
move-result-object v4
invoke-interface {p2}, Lcom/spotify/mobile/android/model/a;->getUri()Ljava/lang/String;
move-result-object v5
move-object v2, p1
invoke-virtual/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/menus/d;->b(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;)V
:cond_de
invoke-interface {p2}, Lcom/spotify/mobile/android/model/a;->isQueueable()Z
move-result v0
if-eqz v0, :cond_f8
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;->e:Lcom/spotify/mobile/android/ui/menus/d;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;->d:Lcom/spotify/mobile/android/ui/menus/b;
invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/menus/b;->a()Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v3
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;->a()Lcom/spotify/mobile/android/util/ViewUri$SubView;
move-result-object v4
invoke-interface {p2}, Lcom/spotify/mobile/android/model/a;->getUri()Ljava/lang/String;
move-result-object v5
move-object v2, p1
invoke-virtual/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;)V
:cond_f8
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;->e:Lcom/spotify/mobile/android/ui/menus/d;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;->d:Lcom/spotify/mobile/android/ui/menus/b;
invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/menus/b;->a()Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v3
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/menus/AlbumMenuDelegate;->a()Lcom/spotify/mobile/android/util/ViewUri$SubView;
move-result-object v4
invoke-interface {p2}, Lcom/spotify/mobile/android/model/a;->getName()Ljava/lang/String;
move-result-object v5
const v2, 0x7f0f0373
new-array v6, v9, [Ljava/lang/Object;
invoke-interface {p2}, Lcom/spotify/mobile/android/model/a;->getArtistName()Ljava/lang/String;
move-result-object v7
aput-object v7, v6, v10
invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-interface {p2}, Lcom/spotify/mobile/android/model/a;->getUri()Ljava/lang/String;
move-result-object v7
move-object v2, p1
invoke-virtual/range {v0 .. v7}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
:cond_120
move v6, v10
goto/16 :goto_25
:cond_123
move v0, v10
goto/16 :goto_34
:cond_126
move v0, v10
goto/16 :goto_7a
.end method