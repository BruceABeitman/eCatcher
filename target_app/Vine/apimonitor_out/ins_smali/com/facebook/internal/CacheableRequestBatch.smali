.class public Lcom/facebook/internal/CacheableRequestBatch;
.super Lcom/facebook/RequestBatch;
.source "CacheableRequestBatch.java"
.field private cacheKey:Ljava/lang/String;
.field private forceRoundTrip:Z
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/facebook/RequestBatch;-><init>()V
return-void
.end method
.method public varargs constructor <init>([Lcom/facebook/Request;)V
.registers 2
invoke-direct {p0, p1}, Lcom/facebook/RequestBatch;-><init>([Lcom/facebook/Request;)V
return-void
.end method
.method public final getCacheKeyOverride()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/internal/CacheableRequestBatch;->cacheKey:Ljava/lang/String;
return-object v0
.end method
.method public final getForceRoundTrip()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/internal/CacheableRequestBatch;->forceRoundTrip:Z
return v0
.end method
.method public final setCacheKeyOverride(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/facebook/internal/CacheableRequestBatch;->cacheKey:Ljava/lang/String;
return-void
.end method
.method public final setForceRoundTrip(Z)V
.registers 2
iput-boolean p1, p0, Lcom/facebook/internal/CacheableRequestBatch;->forceRoundTrip:Z
return-void
.end method