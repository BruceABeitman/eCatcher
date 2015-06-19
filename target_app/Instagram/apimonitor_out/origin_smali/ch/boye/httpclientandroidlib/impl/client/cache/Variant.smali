.class Lch/boye/httpclientandroidlib/impl/client/cache/Variant;
.super Ljava/lang/Object;
.source "Variant.java"


# instance fields
.field private final cacheKey:Ljava/lang/String;

.field private final entry:Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

.field private final variantKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/Variant;->variantKey:Ljava/lang/String;

    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/Variant;->cacheKey:Ljava/lang/String;

    iput-object p3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/Variant;->entry:Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    return-void
.end method


# virtual methods
.method public getCacheKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/Variant;->cacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getEntry()Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/Variant;->entry:Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    return-object v0
.end method

.method public getVariantKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/Variant;->variantKey:Ljava/lang/String;

    return-object v0
.end method
