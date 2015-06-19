.class public final Lcom/spotify/mobile/android/spotlets/b/b;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/spotify/mobile/android/service/player/model/b;

.field private c:Lcom/spotify/mobile/android/ui/contextmenu/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/ui/contextmenu/f",
            "<",
            "Lcom/spotify/mobile/android/model/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    sget-object v0, Lcom/spotify/mobile/android/service/player/model/b;->a:Lcom/spotify/mobile/android/service/player/model/b;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/b;->b:Lcom/spotify/mobile/android/service/player/model/b;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/b/b$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/b/b$1;-><init>(Lcom/spotify/mobile/android/spotlets/b/b;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/b;->c:Lcom/spotify/mobile/android/ui/contextmenu/f;

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/b/b;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/b/b;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/b;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/service/player/model/b;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/b/b;->b:Lcom/spotify/mobile/android/service/player/model/b;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/b/b;->notifyDataSetChanged()V

    return-void
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/b;->b:Lcom/spotify/mobile/android/service/player/model/b;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/player/model/b;->a()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/b;->b:Lcom/spotify/mobile/android/service/player/model/b;

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/service/player/model/b;->a(I)Lcom/google/common/base/Optional;

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

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/b;->a:Landroid/content/Context;

    const v1, 0x7f01018f

    invoke-static {v0, v1}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f09007e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/b;->b:Lcom/spotify/mobile/android/service/player/model/b;

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/service/player/model/b;->a(I)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;

    if-nez p2, :cond_94

    new-instance p2, Lcom/spotify/android/paste/widget/ListItemView;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/b/b;->a:Landroid/content/Context;

    invoke-direct {p2, v3}, Lcom/spotify/android/paste/widget/ListItemView;-><init>(Landroid/content/Context;)V

    :goto_2b
    invoke-virtual {p2}, Lcom/spotify/android/paste/widget/ListItemView;->d()V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->getTrackName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->getAlbumName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u2022 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->getArtistName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/spotify/android/paste/widget/ListItemView;->b(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->isQueued()Z

    move-result v3

    if-eqz v3, :cond_97

    invoke-virtual {p2}, Lcom/spotify/android/paste/widget/ListItemView;->b()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_64
    const-class v1, Lcom/spotify/mobile/android/util/df;

    invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v1

    check-cast v1, Lcom/spotify/mobile/android/util/df;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->b()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;

    move-result-object v1

    const v2, 0x7f0200f3

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/ad;->a(I)Lcom/squareup/picasso/ad;

    move-result-object v1

    invoke-virtual {p2}, Lcom/spotify/android/paste/widget/ListItemView;->a()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V

    const v1, 0x7f0a013c

    new-instance v2, Lcom/spotify/mobile/android/ui/contextmenu/a/a;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/b/b;->c:Lcom/spotify/mobile/android/ui/contextmenu/f;

    invoke-direct {v2, v3, v0}, Lcom/spotify/mobile/android/ui/contextmenu/a/a;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)V

    invoke-virtual {p2, v1, v2}, Lcom/spotify/android/paste/widget/ListItemView;->setTag(ILjava/lang/Object;)V

    return-object p2

    :cond_94
    check-cast p2, Lcom/spotify/android/paste/widget/ListItemView;

    goto :goto_2b

    :cond_97
    invoke-virtual {p2}, Lcom/spotify/android/paste/widget/ListItemView;->b()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_64
.end method
