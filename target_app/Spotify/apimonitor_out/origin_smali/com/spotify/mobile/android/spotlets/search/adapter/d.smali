.class public final Lcom/spotify/mobile/android/spotlets/search/adapter/d;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/common/adapter/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/BaseAdapter;",
        "Lcom/spotify/mobile/android/spotlets/common/adapter/d",
        "<",
        "Lcom/spotify/mobile/android/spotlets/search/model/entity/b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private final h:Landroid/graphics/drawable/Drawable;

.field private final i:Landroid/graphics/drawable/Drawable;

.field private final j:Lcom/spotify/mobile/android/spotlets/common/adapter/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/spotlets/common/adapter/a",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/b;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/spotify/mobile/android/spotlets/search/a;

.field private l:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/common/adapter/a;Lcom/spotify/mobile/android/spotlets/search/a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/mobile/android/spotlets/common/adapter/a",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/b;",
            ">;",
            "Lcom/spotify/mobile/android/spotlets/search/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/common/adapter/a;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->j:Lcom/spotify/mobile/android/spotlets/common/adapter/a;

    invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/a;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->k:Lcom/spotify/mobile/android/spotlets/search/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->j:Lcom/spotify/mobile/android/spotlets/common/adapter/a;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/spotlets/common/adapter/a;->a(Lcom/spotify/mobile/android/spotlets/common/adapter/d;)V

    invoke-interface {p2}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/stuff/k;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->h:Landroid/graphics/drawable/Drawable;

    invoke-interface {p2}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->b:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/stuff/k;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->i:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->a()V

    return-void
.end method

.method private a(I)Lcom/spotify/mobile/android/spotlets/search/model/entity/b;
    .registers 5

    const/4 v2, 0x0

    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/adapter/d$1;->a:[I

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->b()Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_68

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized top hit type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_18
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->l:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->artists:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->results:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/model/entity/b;

    :goto_24
    iget v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->b:I

    if-ne p1, v1, :cond_2e

    new-instance v1, Lcom/spotify/mobile/android/spotlets/search/model/entity/a;

    invoke-direct {v1, v0}, Lcom/spotify/mobile/android/spotlets/search/model/entity/a;-><init>(Lcom/spotify/mobile/android/spotlets/search/model/entity/b;)V

    move-object v0, v1

    :cond_2e
    return-object v0

    :pswitch_2f
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->l:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->albums:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->results:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/model/entity/b;

    goto :goto_24

    :pswitch_3c
    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->b(I)Lcom/spotify/mobile/android/spotlets/search/model/entity/b;

    move-result-object v0

    goto :goto_24

    :pswitch_41
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->l:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->playlists:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->results:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/model/entity/b;

    goto :goto_24

    :pswitch_4e
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->l:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->profiles:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->results:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/model/entity/b;

    goto :goto_24

    :pswitch_5b
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->l:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->genres:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->results:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/model/entity/b;

    goto :goto_24

    :pswitch_data_68
    .packed-switch 0x2
        :pswitch_3c
        :pswitch_18
        :pswitch_2f
        :pswitch_41
        :pswitch_4e
        :pswitch_5b
    .end packed-switch
.end method

.method private a()V
    .registers 6

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->ab:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->k:Lcom/spotify/mobile/android/spotlets/search/a;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/a;->l_()Z

    move-result v0

    if-nez v0, :cond_28

    iput v3, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->a:I

    iput v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->b:I

    iput v2, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->c:I

    iput v4, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->d:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->e:I

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->f:I

    iput v2, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->g:I

    :goto_27
    return-void

    :cond_28
    iput v3, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->a:I

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->b:I

    iput v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->c:I

    iput v2, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->d:I

    iput v4, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->e:I

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->f:I

    iput v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->g:I

    goto :goto_27
.end method

.method private b()Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->l:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->l:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->hasResults()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->l:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->topHit:Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;

    :goto_10
    return-object v0

    :cond_11
    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;->a:Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;

    goto :goto_10
.end method

.method private b(I)Lcom/spotify/mobile/android/spotlets/search/model/entity/b;
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->l:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->tracks:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->results:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->a:I

    if-eq p1, v1, :cond_15

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->b:I

    if-ne p1, v1, :cond_16

    :cond_15
    :goto_15
    return-object v0

    :cond_16
    iget v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->c:I

    if-ne p1, v1, :cond_23

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;->artists:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/model/entity/b;

    goto :goto_15

    :cond_23
    iget v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->d:I

    if-ne p1, v1, :cond_2a

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;->album:Lcom/spotify/mobile/android/spotlets/search/model/entity/Album;

    goto :goto_15

    :cond_2a
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->l:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->a()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->notifyDataSetChanged()V

    return-void
.end method

.method public final areAllItemsEnabled()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final getCount()I
    .registers 4

    const/4 v0, 0x0

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/adapter/d$1;->a:[I

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->b()Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_34

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->g:I

    :goto_12
    :pswitch_12
    return v0

    :pswitch_13
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->k:Lcom/spotify/mobile/android/spotlets/search/a;

    invoke-interface {v1}, Lcom/spotify/mobile/android/spotlets/search/a;->k_()Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->l:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->tracks:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->results:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;->album:Lcom/spotify/mobile/android/spotlets/search/model/entity/Album;

    if-eqz v0, :cond_2e

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->e:I

    goto :goto_12

    :cond_2e
    iget v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->f:I

    goto :goto_12

    :cond_31
    iget v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->g:I

    goto :goto_12

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->a(I)Lcom/spotify/mobile/android/spotlets/search/model/entity/b;

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

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->a:I

    if-ne p1, v0, :cond_e

    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b

    :cond_e
    iget v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->b:I

    if-ne p1, v0, :cond_14

    const/4 v0, 0x2

    goto :goto_b

    :cond_14
    const/4 v0, 0x3

    goto :goto_b
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_a

    if-ne v0, v3, :cond_51

    :cond_a
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->j:Lcom/spotify/mobile/android/spotlets/common/adapter/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/spotify/mobile/android/spotlets/common/adapter/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    instance-of v0, v1, Lcom/spotify/android/paste/widget/ListItemView;

    if-eqz v0, :cond_4b

    move-object v0, v1

    check-cast v0, Lcom/spotify/android/paste/widget/ListItemView;

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->a(I)Lcom/spotify/mobile/android/spotlets/search/model/entity/b;

    move-result-object v3

    instance-of v4, v3, Lcom/spotify/mobile/android/spotlets/search/model/entity/Artist;

    if-eqz v4, :cond_33

    const v2, 0x7f0f0324

    :cond_22
    :goto_22
    if-eqz v2, :cond_31

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->k:Lcom/spotify/mobile/android/spotlets/search/a;

    invoke-interface {v3}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/ListItemView;->b(Ljava/lang/CharSequence;)V

    :cond_31
    :goto_31
    move-object p2, v1

    :goto_32
    return-object p2

    :cond_33
    instance-of v4, v3, Lcom/spotify/mobile/android/spotlets/search/model/entity/Profile;

    if-eqz v4, :cond_3b

    const v2, 0x7f0f0329

    goto :goto_22

    :cond_3b
    instance-of v4, v3, Lcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;

    if-eqz v4, :cond_43

    const v2, 0x7f0f0327

    goto :goto_22

    :cond_43
    instance-of v3, v3, Lcom/spotify/mobile/android/spotlets/search/model/entity/Genre;

    if-eqz v3, :cond_22

    const v2, 0x7f0f0326

    goto :goto_22

    :cond_4b
    const-string v0, "View is not of type ListItemView"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V

    goto :goto_31

    :cond_51
    const/4 v1, 0x2

    if-ne v0, v1, :cond_b2

    if-eqz p2, :cond_79

    check-cast p2, Lcom/spotify/android/paste/widget/ListItemView;

    :goto_58
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->k:Lcom/spotify/mobile/android/spotlets/search/a;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->a(I)Lcom/spotify/mobile/android/spotlets/search/model/entity/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/spotify/mobile/android/spotlets/search/model/entity/b;->getName()Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f0f0313

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-virtual {v0, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->b(Ljava/lang/CharSequence;)V

    goto :goto_32

    :cond_79
    new-instance p2, Lcom/spotify/android/paste/widget/ListItemView;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->k:Lcom/spotify/mobile/android/spotlets/search/a;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/spotify/android/paste/widget/ListItemView;->a()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/spotify/android/paste/graphics/f;

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->k:Lcom/spotify/mobile/android/spotlets/search/a;

    invoke-interface {v4}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/spotify/android/paste/graphics/SpotifyIcon;->ah:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-direct {v1, v4, v5}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->k:Lcom/spotify/mobile/android/spotlets/search/a;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0243

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V

    goto :goto_58

    :cond_b2
    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->b(I)Lcom/spotify/mobile/android/spotlets/search/model/entity/b;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/model/entity/e;

    if-eqz p2, :cond_106

    check-cast p2, Lcom/spotify/android/paste/widget/ListItemView;

    invoke-virtual {p2}, Lcom/spotify/android/paste/widget/ListItemView;->d()V

    :goto_bf
    instance-of v1, v0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Album;

    if-eqz v1, :cond_11b

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->i:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0f01ba

    move-object v4, v3

    move v3, v1

    move v1, v2

    :goto_cb
    if-eqz v1, :cond_125

    invoke-static {}, Lcom/spotify/mobile/android/ui/b/a;->a()Lcom/spotify/mobile/android/util/dg;

    move-result-object v1

    move-object v2, v1

    :goto_d2
    instance-of v1, v0, Lcom/spotify/mobile/android/spotlets/search/model/entity/d;

    if-eqz v1, :cond_e9

    move-object v1, v0

    check-cast v1, Lcom/spotify/mobile/android/spotlets/search/model/entity/d;

    invoke-interface {v1}, Lcom/spotify/mobile/android/spotlets/search/model/entity/d;->isVerified()Z

    move-result v1

    if-eqz v1, :cond_e9

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->k:Lcom/spotify/mobile/android/spotlets/search/a;

    invoke-interface {v1}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/spotlets/search/adapter/util/b;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/dg;)Lcom/spotify/mobile/android/util/dg;

    move-result-object v2

    :cond_e9
    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/model/entity/e;->getImageUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, v4, v2}, Lcom/spotify/mobile/android/spotlets/search/adapter/util/b;->a(Lcom/spotify/android/paste/widget/ListItemView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/spotify/mobile/android/util/dg;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->k:Lcom/spotify/mobile/android/spotlets/search/a;

    invoke-interface {v1}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/model/entity/e;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->b(Ljava/lang/CharSequence;)V

    goto/16 :goto_32

    :cond_106
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->k:Lcom/spotify/mobile/android/spotlets/search/a;

    invoke-interface {v1}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f030059

    invoke-virtual {v1, v4, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/spotify/android/paste/widget/ListItemView;

    move-object p2, v1

    goto :goto_bf

    :cond_11b
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->h:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0f01bb

    move-object v4, v2

    move v6, v1

    move v1, v3

    move v3, v6

    goto :goto_cb

    :cond_125
    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_d2
.end method

.method public final getViewTypeCount()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public final isEmpty()Z
    .registers 3

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->b()Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;->a:Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isEnabled(I)Z
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->b:I

    if-ne p1, v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->k:Lcom/spotify/mobile/android/spotlets/search/a;

    invoke-interface {v1}, Lcom/spotify/mobile/android/spotlets/search/a;->k_()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->a(I)Lcom/spotify/mobile/android/spotlets/search/model/entity/b;

    move-result-object v1

    instance-of v1, v1, Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    goto :goto_5
.end method
