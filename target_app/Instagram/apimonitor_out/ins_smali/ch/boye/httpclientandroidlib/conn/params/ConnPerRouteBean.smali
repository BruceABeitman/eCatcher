.class public final Lch/boye/httpclientandroidlib/conn/params/ConnPerRouteBean;
.super Ljava/lang/Object;
.source "ConnPerRouteBean.java"
.implements Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;
.field public static final DEFAULT_MAX_CONNECTIONS_PER_ROUTE:I = 0x2
.field private volatile defaultMax:I
.field private final maxPerHostMap:Ljava/util/concurrent/ConcurrentHashMap;
.method public constructor <init>()V
.registers 2
const/4 v0, 0x2
invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/conn/params/ConnPerRouteBean;-><init>(I)V
return-void
.end method
.method public constructor <init>(I)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
iput-object v0, p0, Lch/boye/httpclientandroidlib/conn/params/ConnPerRouteBean;->maxPerHostMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/conn/params/ConnPerRouteBean;->setDefaultMaxPerRoute(I)V
return-void
.end method
.method public final getDefaultMax()I
.registers 2
iget v0, p0, Lch/boye/httpclientandroidlib/conn/params/ConnPerRouteBean;->defaultMax:I
return v0
.end method
.method public final getDefaultMaxPerRoute()I
.registers 2
iget v0, p0, Lch/boye/httpclientandroidlib/conn/params/ConnPerRouteBean;->defaultMax:I
return v0
.end method
.method public final getMaxForRoute(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)I
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP route may not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/params/ConnPerRouteBean;->maxPerHostMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
if-eqz v0, :cond_19
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
:goto_18
return v0
:cond_19
iget v0, p0, Lch/boye/httpclientandroidlib/conn/params/ConnPerRouteBean;->defaultMax:I
goto :goto_18
.end method
.method public final setDefaultMaxPerRoute(I)V
.registers 4
if-gtz p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "The maximum must be greater than 0."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iput p1, p0, Lch/boye/httpclientandroidlib/conn/params/ConnPerRouteBean;->defaultMax:I
return-void
.end method
.method public final setMaxForRoute(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;I)V
.registers 5
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP route may not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-gtz p2, :cond_14
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "The maximum must be greater than 0."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/params/ConnPerRouteBean;->maxPerHostMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public final setMaxForRoutes(Ljava/util/Map;)V
.registers 3
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/params/ConnPerRouteBean;->maxPerHostMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/params/ConnPerRouteBean;->maxPerHostMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V
goto :goto_2
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/params/ConnPerRouteBean;->maxPerHostMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method