.class public final Lcom/spotify/mobile/android/spotlets/artist/adapters/e;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$MerchItem;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/spotify/mobile/android/spotlets/artist/view/b/g;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/spotify/mobile/android/spotlets/artist/view/e;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/spotify/mobile/android/spotlets/artist/view/e;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$MerchItem;",
            ">;",
            "Lcom/spotify/mobile/android/spotlets/artist/view/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {}, Lcom/google/common/collect/ak;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/e;->b:Ljava/util/Map;

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/e;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/e;->c:Lcom/spotify/mobile/android/spotlets/artist/view/e;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    const v4, 0x7f020073

    if-nez p2, :cond_75

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/e;->c:Lcom/spotify/mobile/android/spotlets/artist/view/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/e;->b()Lcom/spotify/android/paste/widget/ListItemView;

    move-result-object v0

    :goto_b
    check-cast v0, Lcom/spotify/android/paste/widget/ListItemView;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/e;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$MerchItem;

    iget-object v2, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$MerchItem;->imageUri:Ljava/lang/String;

    if-eqz v2, :cond_3a

    const-class v2, Lcom/spotify/mobile/android/util/df;

    invoke-static {v2}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v2

    check-cast v2, Lcom/spotify/mobile/android/util/df;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;

    move-result-object v2

    iget-object v3, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$MerchItem;->imageUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Lcom/squareup/picasso/ad;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/squareup/picasso/ad;->a(I)Lcom/squareup/picasso/ad;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/squareup/picasso/ad;->b(I)Lcom/squareup/picasso/ad;

    move-result-object v2

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->a()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V

    :cond_3a
    iget-object v2, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$MerchItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$MerchItem;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/ListItemView;->b(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/e;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/e;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/spotify/mobile/android/spotlets/artist/view/b/g;

    iget-object v5, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$MerchItem;->uuid:Ljava/lang/String;

    iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$MerchItem;->link:Ljava/lang/String;

    invoke-direct {v4, p1, v5, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/b/g;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_62
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/e;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spotify/mobile/android/spotlets/artist/view/b/g;

    invoke-virtual {v1, p1}, Lcom/spotify/mobile/android/spotlets/artist/view/b/g;->a(I)V

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->setTag(Ljava/lang/Object;)V

    return-object v0

    :cond_75
    move-object v0, p2

    goto :goto_b
.end method
