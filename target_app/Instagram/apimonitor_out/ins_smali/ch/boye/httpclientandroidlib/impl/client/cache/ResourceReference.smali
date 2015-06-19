.class  Lch/boye/httpclientandroidlib/impl/client/cache/ResourceReference;
.super Ljava/lang/ref/PhantomReference;
.source "ResourceReference.java"
.field private final resource:Lch/boye/httpclientandroidlib/client/cache/Resource;
.method public constructor <init>(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/lang/ref/ReferenceQueue;)V
.registers 5
invoke-direct {p0, p1, p2}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getResource()Lch/boye/httpclientandroidlib/client/cache/Resource;
move-result-object v0
if-nez v0, :cond_11
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Resource may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_11
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getResource()Lch/boye/httpclientandroidlib/client/cache/Resource;
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResourceReference;->resource:Lch/boye/httpclientandroidlib/client/cache/Resource;
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResourceReference;->resource:Lch/boye/httpclientandroidlib/client/cache/Resource;
invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public getResource()Lch/boye/httpclientandroidlib/client/cache/Resource;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResourceReference;->resource:Lch/boye/httpclientandroidlib/client/cache/Resource;
return-object v0
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResourceReference;->resource:Lch/boye/httpclientandroidlib/client/cache/Resource;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
return v0
.end method