.class public final Lcom/b/a/a/k;
.super Ljava/lang/Object;
.source "DbxChooser.java"


# instance fields
.field private final a:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/a/k;->a:Landroid/content/Intent;

    return-void
.end method

.method private f()[Landroid/os/Bundle;
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/b/a/a/k;->a:Landroid/content/Intent;

    if-nez v1, :cond_8

    new-array v0, v0, [Landroid/os/Bundle;

    :goto_7
    return-object v0

    :cond_8
    invoke-static {}, Lcom/b/a/a/i;->a()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_e
    if-ge v1, v3, :cond_30

    aget-object v4, v2, v1

    iget-object v5, p0, Lcom/b/a/a/k;->a:Landroid/content/Intent;

    invoke-virtual {v5, v4}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    if-eqz v4, :cond_2d

    array-length v1, v4

    new-array v2, v1, [Landroid/os/Bundle;

    move v1, v0

    :goto_1e
    array-length v0, v4

    if-ge v1, v0, :cond_2b

    aget-object v0, v4, v1

    check-cast v0, Landroid/os/Bundle;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1e

    :cond_2b
    move-object v0, v2

    goto :goto_7

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_30
    new-array v0, v0, [Landroid/os/Bundle;

    goto :goto_7
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .registers 3

    invoke-direct {p0}, Lcom/b/a/a/k;->f()[Landroid/os/Bundle;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    goto :goto_8
.end method

.method public final b()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcom/b/a/a/k;->f()[Landroid/os/Bundle;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public final c()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/b/a/a/k;->f()[Landroid/os/Bundle;

    move-result-object v0

    array-length v2, v0

    if-nez v2, :cond_a

    move-object v0, v1

    :goto_9
    return-object v0

    :cond_a
    const/4 v2, 0x0

    aget-object v0, v0, v2

    const-string v2, "thumbnails"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_19

    move-object v0, v1

    goto :goto_9

    :cond_19
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    :cond_3c
    move-object v0, v3

    goto :goto_9
.end method

.method public final d()Landroid/net/Uri;
    .registers 3

    invoke-direct {p0}, Lcom/b/a/a/k;->f()[Landroid/os/Bundle;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "icon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    goto :goto_8
.end method

.method public final e()J
    .registers 5

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Lcom/b/a/a/k;->f()[Landroid/os/Bundle;

    move-result-object v2

    array-length v3, v2

    if-nez v3, :cond_a

    :goto_9
    return-wide v0

    :cond_a
    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "bytes"

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_9
.end method
