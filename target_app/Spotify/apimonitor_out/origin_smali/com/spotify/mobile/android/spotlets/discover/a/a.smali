.class public final Lcom/spotify/mobile/android/spotlets/discover/a/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private final a:I

.field private b:Landroid/content/Context;

.field private c:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/spotify/mobile/android/spotlets/discover/model/Story;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/spotify/mobile/android/a/b;

.field private f:I

.field private g:Lcom/spotify/mobile/android/spotlets/discover/c/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Lcom/spotify/mobile/android/a/b;Lcom/spotify/mobile/android/spotlets/discover/c/a;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/spotify/mobile/android/spotlets/discover/model/Story;",
            ">;",
            "Lcom/spotify/mobile/android/a/b;",
            "Lcom/spotify/mobile/android/spotlets/discover/c/a;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->f:I

    if-lez p2, :cond_9

    const/4 v0, 0x1

    :cond_9
    const-string v1, "Each row should have at least one item"

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->e:Lcom/spotify/mobile/android/a/b;

    iput-object p5, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->g:Lcom/spotify/mobile/android/spotlets/discover/c/a;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->c:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->d:Ljava/util/List;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->d:Ljava/util/List;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_55
    iput p2, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->a:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public final a(I)V
    .registers 7

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->f:I

    if-eq v1, p1, :cond_33

    iput p1, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->f:I

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->f:I

    if-lez v1, :cond_34

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;

    iget v4, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->f:I

    invoke-virtual {v0, v4}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->c(I)Z

    move-result v0

    if-eqz v0, :cond_5c

    move v0, v2

    :goto_2c
    move v1, v0

    goto :goto_17

    :cond_2e
    if-eqz v1, :cond_33

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/discover/a/a;->notifyDataSetChanged()V

    :cond_33
    :goto_33
    return-void

    :cond_34
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->p()Z

    move-result v0

    if-eqz v0, :cond_5a

    move v0, v2

    :goto_52
    move v1, v0

    goto :goto_3f

    :cond_54
    if-eqz v1, :cond_33

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/discover/a/a;->notifyDataSetChanged()V

    goto :goto_33

    :cond_5a
    move v0, v1

    goto :goto_52

    :cond_5c
    move v0, v1

    goto :goto_2c
.end method

.method public final a(Landroid/database/Cursor;)V
    .registers 11

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v0, v1

    :cond_7
    :goto_7
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6f

    :try_start_d
    invoke-static {p1}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->a(Landroid/database/Cursor;)Lcom/spotify/mobile/android/spotlets/discover/model/Story;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_10} :catch_43

    move-result-object v3

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->a()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_7

    iget v4, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->f:I

    if-lez v4, :cond_24

    iget v4, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->f:I

    invoke-virtual {v3, v4}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->c(I)Z

    :cond_24
    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->c()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_7

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->d:Ljava/util/List;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_7

    :catch_43
    move-exception v3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Could not parse Discover story (id: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", StoryId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_6f
    if-eqz v0, :cond_74

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/discover/a/a;->notifyDataSetChanged()V

    :cond_74
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    const-string v0, "Don\'t call setCurrentPlayingContext with null current context URI"

    invoke-static {p1, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Don\'t call setCurrentPlayingContext with null current track URI"

    invoke-static {p2, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;

    if-nez p3, :cond_27

    const/4 v1, 0x0

    :goto_23
    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->a(Z)Z

    goto :goto_14

    :cond_27
    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->al:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->f()Lcom/spotify/mobile/android/util/SpotifyLink;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->f()Lcom/spotify/mobile/android/util/SpotifyLink;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_23

    :cond_44
    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->f()Lcom/spotify/mobile/android/util/SpotifyLink;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_23

    :cond_51
    return-void
.end method

.method public final getCount()I
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->a:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->c:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    instance-of v0, p2, Lcom/spotify/mobile/android/ui/cell/b;

    if-eqz v0, :cond_31

    check-cast p2, Lcom/spotify/mobile/android/ui/cell/b;

    :goto_6
    iget v0, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->a:I

    mul-int v1, p1, v0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_30

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->a:I

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v0, v2, :cond_23

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_23
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->c:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->d:Ljava/util/List;

    invoke-interface {v3, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->e:Lcom/spotify/mobile/android/a/b;

    invoke-virtual {p2, v2, v0, v1}, Lcom/spotify/mobile/android/ui/cell/b;->a(Ljava/util/Map;Ljava/util/List;Lcom/spotify/mobile/android/a/b;)V

    :cond_30
    return-object p2

    :cond_31
    new-instance p2, Lcom/spotify/mobile/android/ui/cell/b;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->b:Landroid/content/Context;

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->a:I

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/discover/a/a;->g:Lcom/spotify/mobile/android/spotlets/discover/c/a;

    invoke-direct {p2, v0, v1, v2}, Lcom/spotify/mobile/android/ui/cell/b;-><init>(Landroid/content/Context;ILcom/spotify/mobile/android/spotlets/discover/c/a;)V

    goto :goto_6
.end method
