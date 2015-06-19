.class final Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;
.super Ljava/util/LinkedHashMap;
.source "CacheMap.java"
.field private static final serialVersionUID:J = -0x6b8d9edd67bb1cbfL
.field private final maxEntries:I
.method constructor <init>(I)V
.registers 5
const/16 v0, 0x14
const/high16 v1, 0x3f40
const/4 v2, 0x1
invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V
iput p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;->maxEntries:I
return-void
.end method
.method protected final removeEldestEntry(Ljava/util/Map$Entry;)Z
.registers 4
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