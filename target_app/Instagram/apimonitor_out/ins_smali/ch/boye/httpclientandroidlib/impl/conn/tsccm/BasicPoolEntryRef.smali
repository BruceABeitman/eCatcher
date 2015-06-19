.class public Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntryRef;
.super Ljava/lang/ref/WeakReference;
.source "BasicPoolEntryRef.java"
.field private final route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
.method public constructor <init>(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;Ljava/lang/ref/ReferenceQueue;)V
.registers 5
invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Pool entry must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->getPlannedRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntryRef;->route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
return-void
.end method
.method public final getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntryRef;->route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
return-object v0
.end method