.class final Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;
.super Ljava/util/LinkedHashMap;
.source "CacheMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6b8d9edd67bb1cbfL


# instance fields
.field private final maxEntries:I


# direct methods
.method constructor <init>(I)V
    .registers 5

    const/16 v0, 0x14

    const/high16 v1, 0x3f40

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;->maxEntries:I

    return-void
.end method


# virtual methods
.method protected final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;->size()I

    move-result v0

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;->maxEntries:I

    if-le v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
