.class public final Lcom/spotify/mobile/android/spotlets/artist/adapters/f;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field protected a:Lcom/spotify/mobile/android/util/cw;

.field protected b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Z

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/spotify/mobile/android/spotlets/artist/view/b/h;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/spotify/mobile/android/spotlets/artist/view/e;

.field private final j:Lcom/spotify/mobile/android/ui/contextmenu/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/ui/contextmenu/f",
            "<",
            "Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;ZLcom/spotify/mobile/android/spotlets/artist/view/e;)V
    .registers 8

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {}, Lcom/google/common/collect/ak;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->h:Ljava/util/Map;

    sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/util/Playlists;->b:Lcom/spotify/mobile/android/util/cw;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->a:Lcom/spotify/mobile/android/util/cw;

    const-string v0, ""

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->b:Ljava/lang/String;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/f$1;-><init>(Lcom/spotify/mobile/android/spotlets/artist/adapters/f;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->j:Lcom/spotify/mobile/android/ui/contextmenu/f;

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->d:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->d:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->playlists:Ljava/util/List;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->e:Ljava/util/List;

    if-eqz p3, :cond_3c

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_3c

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->e:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->f:Ljava/util/List;

    :goto_37
    iput-boolean p3, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->g:Z

    iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->i:Lcom/spotify/mobile/android/spotlets/artist/view/e;

    return-void

    :cond_3c
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->f:Ljava/util/List;

    goto :goto_37
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/adapters/f;)Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->d:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

    return-object v0
.end method

.method private a()V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->a:Lcom/spotify/mobile/android/util/cw;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/artist/util/Playlists;->a(Ljava/util/List;Lcom/spotify/mobile/android/util/cw;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->f:Ljava/util/List;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/artist/adapters/f;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/util/cw;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->a:Lcom/spotify/mobile/android/util/cw;

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->a()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->a()V

    return-void
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .registers 3

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->g:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    if-ne p1, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12

    const v4, 0x7f020077

    const/4 v5, 0x1

    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->getItemViewType(I)I

    move-result v0

    if-ne v0, v5, :cond_51

    if-nez p2, :cond_4f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->i:Lcom/spotify/mobile/android/spotlets/artist/view/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/e;->a()Lcom/spotify/android/paste/widget/ListItemView;

    move-result-object v0

    :goto_12
    check-cast v0, Lcom/spotify/android/paste/widget/ListItemView;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->c:Landroid/content/Context;

    const v2, 0x7f0f006b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/spotify/mobile/android/spotlets/artist/view/b/h;

    const-string v4, "viewall"

    invoke-direct {v3, p1, v4}, Lcom/spotify/mobile/android/spotlets/artist/view/b/h;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spotify/mobile/android/spotlets/artist/view/b/h;

    invoke-virtual {v1, p1}, Lcom/spotify/mobile/android/spotlets/artist/view/b/h;->a(I)V

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->setTag(Ljava/lang/Object;)V

    :goto_4e
    return-object v0

    :cond_4f
    move-object v0, p2

    goto :goto_12

    :cond_51
    if-nez p2, :cond_f0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->i:Lcom/spotify/mobile/android/spotlets/artist/view/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/e;->b()Lcom/spotify/android/paste/widget/ListItemView;

    move-result-object v0

    :goto_59
    check-cast v0, Lcom/spotify/android/paste/widget/ListItemView;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;

    iget-object v2, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;->cover:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;

    if-eqz v2, :cond_8c

    const-class v2, Lcom/spotify/mobile/android/util/df;

    invoke-static {v2}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v2

    check-cast v2, Lcom/spotify/mobile/android/util/df;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;

    move-result-object v2

    iget-object v3, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;->cover:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/squareup/picasso/ad;->a(I)Lcom/squareup/picasso/ad;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/squareup/picasso/ad;->b(I)Lcom/squareup/picasso/ad;

    move-result-object v2

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->a()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V

    :cond_8c
    iget-object v2, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0002

    iget v4, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;->followerCount:I

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;->followerCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/ListItemView;->c(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ca

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/spotify/mobile/android/spotlets/artist/view/b/h;

    iget-object v5, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;->uri:Ljava/lang/String;

    invoke-direct {v4, p1, v5}, Lcom/spotify/mobile/android/spotlets/artist/view/b/h;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ca
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spotify/mobile/android/spotlets/artist/view/b/h;

    invoke-virtual {v2, p1}, Lcom/spotify/mobile/android/spotlets/artist/view/b/h;->a(I)V

    invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/ListItemView;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->j:Lcom/spotify/mobile/android/ui/contextmenu/f;

    invoke-static {v2, v3, v1}, Lcom/spotify/mobile/android/ui/stuff/h;->a(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/ListItemView;->b(Landroid/view/View;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;->j:Lcom/spotify/mobile/android/ui/contextmenu/f;

    invoke-static {v2, v0, v3, v1}, Lcom/spotify/mobile/android/ui/stuff/h;->a(Landroid/content/Context;Landroid/view/View;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)V

    goto/16 :goto_4e

    :cond_f0
    move-object v0, p2

    goto/16 :goto_59
.end method

.method public final getViewTypeCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
