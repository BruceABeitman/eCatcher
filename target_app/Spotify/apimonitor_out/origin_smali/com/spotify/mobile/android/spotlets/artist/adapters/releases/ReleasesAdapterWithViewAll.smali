.class final Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;",
            "Lcom/spotify/mobile/android/spotlets/artist/view/b/m;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;

.field private c:Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;

.field private d:Landroid/content/Context;

.field private final e:Lcom/spotify/mobile/android/spotlets/artist/view/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;Lcom/spotify/mobile/android/spotlets/artist/view/e;)V
    .registers 6

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {}, Lcom/google/common/collect/ak;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;->c:Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;->b:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;->d:Landroid/content/Context;

    iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;->e:Lcom/spotify/mobile/android/spotlets/artist/view/e;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;->c:Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;->b()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/ListAdapter;
    .registers 1

    return-object p0
.end method

.method public final a(I)Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;->c:Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;->c:Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;->a(I)Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public final a(Lcom/spotify/mobile/android/util/cw;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;->c:Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;->a(Lcom/spotify/mobile/android/util/cw;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;->c:Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .registers 1

    return-void
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;->c:Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;->a(I)Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;

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

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;->c:Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;->getCount()I

    move-result v0

    if-ne p1, v0, :cond_f

    sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;->b:Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;->ordinal()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;->a:Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;->ordinal()I

    move-result v0

    goto :goto_e
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    const v2, 0x7f0f0277

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;->c:Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_16

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;->c:Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :goto_15
    return-object p2

    :cond_16
    if-nez p2, :cond_5b

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;->e:Lcom/spotify/mobile/android/spotlets/artist/view/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/e;->a()Lcom/spotify/android/paste/widget/ListItemView;

    move-result-object p2

    :goto_1e
    invoke-virtual {p2}, Lcom/spotify/android/paste/widget/ListItemView;->d()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;->b:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$1;->a:[I

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_84

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;->d:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_34
    invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;->b:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;->b:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;

    new-instance v2, Lcom/spotify/mobile/android/spotlets/artist/view/b/m;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;->b:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;

    invoke-direct {v2, v3}, Lcom/spotify/mobile/android/spotlets/artist/view/b/m;-><init>(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;->b:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->setTag(Ljava/lang/Object;)V

    goto :goto_15

    :cond_5b
    check-cast p2, Lcom/spotify/android/paste/widget/ListItemView;

    goto :goto_1e

    :pswitch_5e
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;->d:Landroid/content/Context;

    const v1, 0x7f0f0278

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    :pswitch_68
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;->d:Landroid/content/Context;

    const v1, 0x7f0f027a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    :pswitch_72
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;->d:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    :pswitch_79
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;->d:Landroid/content/Context;

    const v1, 0x7f0f0279

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_68
        :pswitch_72
        :pswitch_79
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .registers 2

    invoke-static {}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;->a()I

    move-result v0

    return v0
.end method

.method public final isEnabled(I)Z
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;->c:Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ge p1, v0, :cond_15

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;->c:Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    :goto_14
    return v0

    :cond_15
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_14
.end method
