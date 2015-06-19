.class  Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool$1;
.super Ljava/lang/Object;
.source "RouteSpecificPool.java"
.implements Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;
.field final synthetic this$0:Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;
.method constructor <init>(Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;)V
.registers 2
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool$1;->this$0:Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getMaxForRoute(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)I
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool$1;->this$0:Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;
iget v0, v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->maxEntries:I
return v0
.end method