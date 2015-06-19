.class public final Lcom/instagram/android/h/b;
.super Ljava/lang/Object;
.source "GeoMedia.java"

# interfaces
.implements Lcom/instagram/android/maps/b/a;
.implements Lcom/instagram/feed/d/z;


# instance fields
.field private a:D

.field private b:D

.field private c:D

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/android/maps/b/a;)I
    .registers 6

    check-cast p1, Lcom/instagram/android/h/b;

    iget-wide v0, p0, Lcom/instagram/android/h/b;->c:D

    iget-wide v2, p1, Lcom/instagram/android/h/b;->c:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/h/b;
    .registers 6

    const/4 v0, 0x0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_b6

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    if-nez v0, :cond_16

    new-instance v0, Lcom/instagram/android/h/b;

    invoke-direct {v0}, Lcom/instagram/android/h/b;-><init>()V

    :cond_16
    const-string v2, "media_id"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v1, v0, Lcom/instagram/android/h/b;->g:Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iput-wide v3, v0, Lcom/instagram/android/h/b;->c:D

    const/4 v1, 0x1

    aget-object v1, v2, v1

    iput-object v1, v0, Lcom/instagram/android/h/b;->h:Ljava/lang/String;

    goto :goto_1

    :cond_40
    const-string v2, "lat"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsDouble()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/instagram/android/h/b;->a:D

    goto :goto_1

    :cond_52
    const-string v2, "lng"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsDouble()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/instagram/android/h/b;->b:D

    goto :goto_1

    :cond_64
    const-string v2, "thumbnail"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/h/b;->d:Ljava/lang/String;

    goto :goto_1

    :cond_76
    const-string v2, "display_url"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/h/b;->e:Ljava/lang/String;

    goto/16 :goto_1

    :cond_89
    const-string v2, "low_res_url"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/h/b;->f:Ljava/lang/String;

    goto/16 :goto_1

    :cond_9c
    const-string v2, "location"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/h/b;->i:Ljava/lang/String;

    goto/16 :goto_1

    :cond_af
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto/16 :goto_1

    :cond_b6
    return-object v0
.end method

.method public static a(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/maps/b/h;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/b/h;

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->g()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-virtual {v0}, Lcom/instagram/android/h/b;->d()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_55

    invoke-virtual {v5, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_48

    new-instance v1, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, v1

    :goto_32
    invoke-virtual {v5, v7, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_3d

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v2, :cond_55

    :cond_3d
    invoke-virtual {v0}, Lcom/instagram/android/h/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_45
    move v2, v0

    move-object v3, v1

    goto :goto_b

    :cond_48
    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_32

    :cond_54
    return-object v3

    :cond_55
    move v0, v2

    move-object v1, v3

    goto :goto_45
.end method

.method private j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/h/b;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/h/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x96

    if-gt p1, v0, :cond_7

    iget-object v0, p0, Lcom/instagram/android/h/b;->d:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const/16 v0, 0x132

    if-gt p1, v0, :cond_e

    iget-object v0, p0, Lcom/instagram/android/h/b;->f:Ljava/lang/String;

    goto :goto_6

    :cond_e
    invoke-direct {p0}, Lcom/instagram/android/h/b;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public final b()D
    .registers 3

    iget-wide v0, p0, Lcom/instagram/android/h/b;->a:D

    return-wide v0
.end method

.method public final c()D
    .registers 3

    iget-wide v0, p0, Lcom/instagram/android/h/b;->b:D

    return-wide v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/instagram/android/maps/b/a;

    invoke-direct {p0, p1}, Lcom/instagram/android/h/b;->a(Lcom/instagram/android/maps/b/a;)I

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/h/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/h/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/instagram/android/h/b;

    iget-object v2, p0, Lcom/instagram/android/h/b;->g:Ljava/lang/String;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/instagram/android/h/b;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/instagram/android/h/b;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_23
    move v0, v1

    goto :goto_4

    :cond_25
    iget-object v2, p1, Lcom/instagram/android/h/b;->g:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto :goto_23
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/h/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/h/b;->g:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/instagram/android/h/b;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
