.class public final Lcom/spotify/mobile/android/spotlets/socialchart/a/a;
.super Landroid/support/v4/view/ah;
.source "SourceFile"


# instance fields
.field private a:Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;

.field private b:I

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/view/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 15

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/a;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/dv;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_67

    const/4 v0, 0x2

    :goto_f
    iput v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/a;->b:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ce

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v0, 0x7f0a01fc

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0391

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0a0392

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/a;->c:Landroid/content/Context;

    const v4, 0x7f01019a

    invoke-static {v3, v0, v4}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;Landroid/widget/TextView;I)V

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/a;->a:Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;->getTrackModels()[Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_55
    if-ge v3, v5, :cond_69

    aget-object v8, v4, v3

    invoke-virtual {v8}, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->getInfluencers()[Lcom/spotify/mobile/android/spotlets/socialchart/model/InfluencerModel;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    :cond_67
    const/4 v0, 0x4

    goto :goto_f

    :cond_69
    invoke-virtual {v7}, Ljava/util/LinkedHashSet;->size()I

    move-result v3

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/a;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e001b

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v4, v5, v3, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iget v8, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/a;->b:I

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v5, v0

    :goto_94
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/socialchart/model/InfluencerModel;

    if-ge v5, v8, :cond_10c

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const-class v4, Lcom/spotify/mobile/android/util/df;

    invoke-static {v4}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v4

    check-cast v4, Lcom/spotify/mobile/android/util/df;

    invoke-virtual {v4}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;

    move-result-object v4

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/InfluencerModel;->getImageUrl()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/spotify/mobile/android/provider/i;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;

    move-result-object v4

    iget-object v11, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/a;->c:Landroid/content/Context;

    invoke-static {v11}, Lcom/spotify/mobile/android/ui/stuff/k;->g(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;

    move-result-object v4

    iget-object v11, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/a;->c:Landroid/content/Context;

    invoke-static {v11}, Lcom/spotify/mobile/android/ui/stuff/k;->g(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/squareup/picasso/ad;->b(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;

    move-result-object v4

    invoke-static {v3}, Lcom/spotify/mobile/android/util/df;->a(Landroid/widget/ImageView;)Lcom/squareup/picasso/ai;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ai;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/InfluencerModel;->getImageUrl()Ljava/lang/String;

    add-int/lit8 v3, v5, 0x1

    const-string v4, ""

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/InfluencerModel;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_103

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/InfluencerModel;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_161

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/InfluencerModel;->getUsername()Ljava/lang/String;

    move-result-object v0

    :goto_fe
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v3

    goto :goto_94

    :cond_103
    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/InfluencerModel;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_fe

    :cond_10c
    invoke-virtual {v7}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/a;->b:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_158

    const-string v1, ", "

    const/4 v3, 0x0

    iget v4, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/a;->b:I

    invoke-interface {v9, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/a;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e001a

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/a;->d:Ljava/lang/String;

    :goto_152
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v6

    :cond_158
    const-string v0, ", "

    invoke-static {v0, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/a;->d:Ljava/lang/String;

    goto :goto_152

    :cond_161
    move-object v0, v4

    goto :goto_fe
.end method

.method public final a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/a;->a:Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/a/a;->c()V

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final b()I
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/a;->a:Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method
