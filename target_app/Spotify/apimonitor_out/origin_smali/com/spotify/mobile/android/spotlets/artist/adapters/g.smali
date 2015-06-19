.class public final Lcom/spotify/mobile/android/spotlets/artist/adapters/g;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Lcom/spotify/mobile/android/spotlets/artist/view/e;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/spotify/mobile/android/spotlets/artist/view/b/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/artist/view/e;)V
    .registers 6

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {}, Lcom/google/common/collect/ak;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/g;->e:Ljava/util/Map;

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/g;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/g;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/g;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/g;->d:Lcom/spotify/mobile/android/spotlets/artist/view/e;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/g;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    if-nez p2, :cond_8b

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/g;->d:Lcom/spotify/mobile/android/spotlets/artist/view/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/e;->b()Lcom/spotify/android/paste/widget/ListItemView;

    move-result-object v0

    :goto_8
    check-cast v0, Lcom/spotify/android/paste/widget/ListItemView;

    new-instance v1, Lcom/spotify/android/paste/graphics/f;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/g;->c:Landroid/content/Context;

    sget-object v3, Lcom/spotify/android/paste/graphics/SpotifyIcon;->ah:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-direct {v1, v2, v3}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/g;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0243

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/g;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0063

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/g;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/ListItemView;->b(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->a()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->a()Landroid/widget/ImageView;

    move-result-object v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/g;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/g;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/spotify/mobile/android/spotlets/artist/view/b/i;

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/g;->a:Ljava/lang/String;

    invoke-direct {v3, p1, v4}, Lcom/spotify/mobile/android/spotlets/artist/view/b/i;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_78
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/g;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spotify/mobile/android/spotlets/artist/view/b/i;

    invoke-virtual {v1, p1}, Lcom/spotify/mobile/android/spotlets/artist/view/b/i;->a(I)V

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->setTag(Ljava/lang/Object;)V

    return-object v0

    :cond_8b
    move-object v0, p2

    goto/16 :goto_8
.end method
