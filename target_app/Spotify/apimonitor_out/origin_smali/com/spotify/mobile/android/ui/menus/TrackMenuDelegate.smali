.class public final Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/spotify/mobile/android/ui/menus/g;

.field private b:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;

.field private c:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseArtist;

.field private d:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;

.field private e:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveTrack;

.field private f:Lcom/spotify/mobile/android/ui/menus/d;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseArtist;Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveTrack;Lcom/spotify/mobile/android/ui/menus/g;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/spotify/mobile/android/ui/menus/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/menus/d;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->f:Lcom/spotify/mobile/android/ui/menus/d;

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->b:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;

    invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseArtist;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->c:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseArtist;

    invoke-static {p3}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->d:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;

    invoke-static {p4}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveTrack;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->e:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveTrack;

    invoke-static {p5}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/menus/g;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/g;

    return-void
.end method

.method private a()Lcom/spotify/mobile/android/util/ViewUri$SubView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/g;

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/ContextMenu;Lcom/spotify/mobile/android/model/n;)V
    .registers 15

    const v11, 0x7f02019c

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/g;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/menus/g;->a()Landroid/content/Context;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_50

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->A:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->f:Lcom/spotify/mobile/android/ui/menus/d;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/g;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/menus/g;->b()Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->a()Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-interface {p2}, Lcom/spotify/mobile/android/model/n;->getTrackUri()Ljava/lang/String;

    invoke-static {p1}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/view/ContextMenu;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->f:Lcom/spotify/mobile/android/ui/menus/d;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/g;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/menus/g;->b()Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v3

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->a()Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move-result-object v4

    invoke-interface {p2}, Lcom/spotify/mobile/android/model/n;->getTrackUri()Ljava/lang/String;

    move-result-object v5

    const v0, 0x7f0a0133

    const v6, 0x7f0f017e

    invoke-static {p1, v0, v6}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/view/ContextMenu;II)Landroid/view/MenuItem;

    move-result-object v6

    new-instance v0, Lcom/spotify/mobile/android/ui/menus/d$18;

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/menus/d$18;-><init>(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_50
    invoke-interface {p2}, Lcom/spotify/mobile/android/model/n;->isQueued()Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->f:Lcom/spotify/mobile/android/ui/menus/d;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/g;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/menus/g;->b()Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v3

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->a()Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move-result-object v4

    invoke-interface {p2}, Lcom/spotify/mobile/android/model/n;->getTrackId()J

    move-result-wide v5

    const v0, 0x7f0a012f

    const v7, 0x7f0f0177

    invoke-static {p1, v0, v7}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/view/ContextMenu;II)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v7

    new-instance v0, Lcom/spotify/mobile/android/ui/menus/d$4;

    invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/menus/d$4;-><init>(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;J)V

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_7c
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->f:Lcom/spotify/mobile/android/ui/menus/d;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/g;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/menus/g;->b()Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v4

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->a()Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move-result-object v5

    invoke-interface {p2}, Lcom/spotify/mobile/android/model/n;->isInCollection()Z

    move-result v0

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->d:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;

    sget-object v6, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;->c:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;

    if-ne v3, v6, :cond_9a

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/g;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_9a
    iget-object v3, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->d:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;

    sget-object v6, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;->a:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;

    if-ne v3, v6, :cond_19f

    move v7, v9

    :goto_a1
    invoke-interface {p2}, Lcom/spotify/mobile/android/model/n;->getTrackUri()Ljava/lang/String;

    move-result-object v8

    if-eqz v0, :cond_1a2

    sget-object v6, Lcom/spotify/mobile/android/util/Collection$State;->a:Lcom/spotify/mobile/android/util/Collection$State;

    :goto_a9
    move-object v3, p1

    invoke-virtual/range {v1 .. v8}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/Collection$State;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->f:Lcom/spotify/mobile/android/ui/menus/d;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/g;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/menus/g;->b()Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v4

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->a()Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move-result-object v5

    invoke-interface {p2}, Lcom/spotify/mobile/android/model/n;->getTrackUri()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2}, Lcom/spotify/mobile/android/model/n;->getArtistName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/spotify/mobile/android/model/n;->getTrackName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/spotify/mobile/android/util/bu;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/spotify/mobile/android/ui/menus/d;->b(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/spotify/mobile/android/model/n;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_e7

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->f:Lcom/spotify/mobile/android/ui/menus/d;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/g;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/menus/g;->b()Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v4

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->a()Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move-result-object v5

    invoke-interface {p2}, Lcom/spotify/mobile/android/model/n;->getTrackUri()Ljava/lang/String;

    move-result-object v6

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/spotify/mobile/android/ui/menus/d;->b(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;)V

    :cond_e7
    invoke-interface {p2}, Lcom/spotify/mobile/android/model/n;->isQueueable()Z

    move-result v0

    if-eqz v0, :cond_101

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->f:Lcom/spotify/mobile/android/ui/menus/d;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/g;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/menus/g;->b()Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v4

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->a()Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move-result-object v5

    invoke-interface {p2}, Lcom/spotify/mobile/android/model/n;->getTrackUri()Ljava/lang/String;

    move-result-object v6

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;)V

    :cond_101
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->c:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseArtist;

    sget-object v1, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseArtist;->a:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseArtist;

    if-ne v0, v1, :cond_1a6

    move v0, v9

    :goto_108
    if-eqz v0, :cond_1a9

    invoke-interface {p2}, Lcom/spotify/mobile/android/model/n;->isArtistBrowsable()Z

    move-result v0

    if-eqz v0, :cond_1a9

    move v0, v9

    :goto_111
    if-eqz v0, :cond_12b

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->f:Lcom/spotify/mobile/android/ui/menus/d;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/g;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/menus/g;->b()Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v4

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->a()Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move-result-object v5

    invoke-interface {p2}, Lcom/spotify/mobile/android/model/n;->getArtistUri()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2}, Lcom/spotify/mobile/android/model/n;->getArtistName()Ljava/lang/String;

    move-result-object v7

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12b
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->b:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;

    sget-object v1, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;->a:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;

    if-ne v0, v1, :cond_1ac

    move v0, v9

    :goto_132
    if-eqz v0, :cond_1ae

    invoke-interface {p2}, Lcom/spotify/mobile/android/model/n;->isAlbumBrowsable()Z

    move-result v0

    if-eqz v0, :cond_1ae

    move v0, v9

    :goto_13b
    if-eqz v0, :cond_16a

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->f:Lcom/spotify/mobile/android/ui/menus/d;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/g;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/menus/g;->b()Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v3

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->a()Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move-result-object v4

    invoke-interface {p2}, Lcom/spotify/mobile/android/model/n;->getAlbumUri()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Lcom/spotify/mobile/android/model/n;->getAlbumName()Ljava/lang/String;

    move-result-object v6

    const v0, 0x7f0a012b

    const v7, 0x7f0f016c

    invoke-static {p1, v0, v7}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/view/ContextMenu;II)Landroid/view/MenuItem;

    move-result-object v0

    const v7, 0x7f02019a

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v7

    new-instance v0, Lcom/spotify/mobile/android/ui/menus/d$17;

    invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/menus/d$17;-><init>(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_16a
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->f:Lcom/spotify/mobile/android/ui/menus/d;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/g;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/menus/g;->b()Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v4

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->a()Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move-result-object v5

    invoke-interface {p2}, Lcom/spotify/mobile/android/model/n;->getTrackName()Ljava/lang/String;

    move-result-object v6

    const v0, 0x7f0f0371

    new-array v3, v9, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/spotify/mobile/android/model/n;->getArtistName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v10

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2}, Lcom/spotify/mobile/android/model/n;->getTrackUri()Ljava/lang/String;

    move-result-object v8

    move-object v3, p1

    invoke-virtual/range {v1 .. v8}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->e:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveTrack;

    sget-object v1, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveTrack;->c:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveTrack;

    if-ne v0, v1, :cond_1b0

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/g;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_19f
    move v7, v10

    goto/16 :goto_a1

    :cond_1a2
    sget-object v6, Lcom/spotify/mobile/android/util/Collection$State;->c:Lcom/spotify/mobile/android/util/Collection$State;

    goto/16 :goto_a9

    :cond_1a6
    move v0, v10

    goto/16 :goto_108

    :cond_1a9
    move v0, v10

    goto/16 :goto_111

    :cond_1ac
    move v0, v10

    goto :goto_132

    :cond_1ae
    move v0, v10

    goto :goto_13b

    :cond_1b0
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->e:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveTrack;

    sget-object v1, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveTrack;->a:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveTrack;

    if-ne v0, v1, :cond_1e7

    :goto_1b6
    if-eqz v9, :cond_1e6

    invoke-interface {p2}, Lcom/spotify/mobile/android/model/n;->isSuggested()Z

    move-result v0

    if-nez v0, :cond_1e6

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->f:Lcom/spotify/mobile/android/ui/menus/d;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/g;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/menus/g;->b()Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v3

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->a()Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move-result-object v4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/g;

    invoke-interface {p2}, Lcom/spotify/mobile/android/model/n;->getTrackId()J

    move-result-wide v5

    const v0, 0x7f0a0137

    const v7, 0x7f0f0184

    invoke-static {p1, v0, v7}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/view/ContextMenu;II)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v7

    new-instance v0, Lcom/spotify/mobile/android/ui/menus/d$2;

    invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/menus/d$2;-><init>(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;J)V

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_1e6
    return-void

    :cond_1e7
    move v9, v10

    goto :goto_1b6
.end method
