.class public final Lcom/spotify/mobile/android/spotlets/search/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lcom/google/common/collect/ImmutableList",
            "<TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_7

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_6
.end method
