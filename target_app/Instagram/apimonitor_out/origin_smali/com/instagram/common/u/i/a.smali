.class public final Lcom/instagram/common/u/i/a;
.super Ljava/lang/Object;
.source "UriUtil.java"


# direct methods
.method public static a(Landroid/net/Uri;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v5, -0x1

    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This isn\'t a hierarchical URI."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1b

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_1a
    return-object v0

    :cond_1b
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v0, 0x0

    :cond_21
    const/16 v1, 0x26

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v5, :cond_2d

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    :cond_2d
    const/16 v2, 0x3d

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gt v2, v1, :cond_37

    if-ne v2, v5, :cond_38

    :cond_37
    move v2, v1

    :cond_38
    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_21

    move-object v0, v3

    goto :goto_1a
.end method
