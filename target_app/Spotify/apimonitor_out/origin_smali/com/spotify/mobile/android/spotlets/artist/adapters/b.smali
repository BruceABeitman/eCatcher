.class public final Lcom/spotify/mobile/android/spotlets/artist/adapters/b;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Concert;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/spotify/mobile/android/spotlets/artist/view/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/text/SimpleDateFormat;

.field private e:Lcom/spotify/mobile/android/spotlets/artist/view/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/spotify/mobile/android/spotlets/artist/view/e;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Concert;",
            ">;",
            "Lcom/spotify/mobile/android/spotlets/artist/view/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {}, Lcom/google/common/collect/ak;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/b;->c:Ljava/util/Map;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/b;->d:Ljava/text/SimpleDateFormat;

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/b;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/b;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/b;->e:Lcom/spotify/mobile/android/spotlets/artist/view/e;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/b;->a:Ljava/util/List;

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
    .registers 16

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-nez p2, :cond_f5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/b;->e:Lcom/spotify/mobile/android/spotlets/artist/view/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/e;->b()Lcom/spotify/android/paste/widget/ListItemView;

    move-result-object v0

    :goto_a
    check-cast v0, Lcom/spotify/android/paste/widget/ListItemView;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/b;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Concert;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->a()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_22

    instance-of v2, v2, Lcom/spotify/mobile/android/spotlets/artist/view/i;

    if-nez v2, :cond_3d

    :cond_22
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/b;->b:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030096

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/artist/view/i;->a(Landroid/view/View;)Lcom/spotify/mobile/android/spotlets/artist/view/i;

    move-result-object v2

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->a()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3d
    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->a()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Lcom/spotify/mobile/android/spotlets/artist/view/i;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/artist/view/i;->a()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const-string v5, ""

    const-string v3, ""

    :try_start_51
    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/b;->d:Ljava/text/SimpleDateFormat;

    iget-object v6, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Concert;->localtime:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v4, 0x2

    const/4 v7, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v6, v4, v7, v8}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_71
    .catch Ljava/text/ParseException; {:try_start_51 .. :try_end_71} :catch_f8

    move-result-object v4

    const/4 v5, 0x5

    :try_start_73
    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_7a
    .catch Ljava/text/ParseException; {:try_start_73 .. :try_end_7a} :catch_110

    move-result-object v3

    move-object v5, v4

    move-object v4, v3

    :goto_7d
    const v3, 0x7f0a030e

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0a030f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Concert;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V

    const-string v2, " \u2022 "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Concert;->venue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Concert;->city:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->b(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/b;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d2

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/b;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/spotify/mobile/android/spotlets/artist/view/b/c;

    invoke-direct {v3, p1, p1}, Lcom/spotify/mobile/android/spotlets/artist/view/b/c;-><init>(II)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d2
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/b;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spotify/mobile/android/spotlets/artist/view/b/c;

    invoke-virtual {v1, p1}, Lcom/spotify/mobile/android/spotlets/artist/view/b/c;->a(I)V

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->setTag(Ljava/lang/Object;)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/b;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0201ad

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->b(Landroid/view/View;)V

    return-object v0

    :cond_f5
    move-object v0, p2

    goto/16 :goto_a

    :catch_f8
    move-exception v4

    move-object v11, v4

    move-object v4, v5

    move-object v5, v11

    :goto_fc
    const-string v6, "Failed to parse date [%s] with formatter [%s]"

    new-array v7, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Concert;->localtime:Ljava/lang/String;

    aput-object v9, v7, v8

    iget-object v8, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/b;->d:Ljava/text/SimpleDateFormat;

    aput-object v8, v7, v10

    invoke-static {v5, v6, v7}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v4

    move-object v4, v3

    goto/16 :goto_7d

    :catch_110
    move-exception v5

    goto :goto_fc
.end method
