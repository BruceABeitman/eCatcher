.class public final Lcom/spotify/mobile/android/spotlets/artist/adapters/h;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field a:Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private final d:Landroid/graphics/drawable/Drawable;

.field private e:Lcom/spotify/mobile/android/ui/cell/a;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate;Lcom/spotify/mobile/android/ui/cell/a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate;",
            "Lcom/spotify/mobile/android/ui/cell/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/h;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/h;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/h;->a:Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate;

    iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/h;->e:Lcom/spotify/mobile/android/ui/cell/a;

    invoke-static {p2}, Lcom/spotify/mobile/android/ui/stuff/k;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/b/b;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/h;->d:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/h;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;

    return-object v0
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/h;->a(I)Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/h;->a(I)Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;

    move-result-object v1

    check-cast p2, Lcom/spotify/android/paste/widget/CardView;

    if-nez p2, :cond_1a

    new-instance p2, Lcom/spotify/android/paste/widget/CardView;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/h;->c:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/spotify/android/paste/widget/CardView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/CardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1a
    invoke-virtual {p2, v4}, Lcom/spotify/android/paste/widget/CardView;->setFocusable(Z)V

    invoke-virtual {p2, v4}, Lcom/spotify/android/paste/widget/CardView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p2, v4}, Lcom/spotify/android/paste/widget/CardView;->setClickable(Z)V

    iget-object v0, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/CardView;->a(Ljava/lang/CharSequence;)V

    const-class v0, Lcom/spotify/mobile/android/util/df;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/df;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;->getDefaultPortraitUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/h;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;

    move-result-object v0

    invoke-virtual {p2}, Lcom/spotify/android/paste/widget/CardView;->c()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/util/df;->a(Landroid/widget/ImageView;)Lcom/squareup/picasso/ai;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ai;)V

    return-object p2
.end method
