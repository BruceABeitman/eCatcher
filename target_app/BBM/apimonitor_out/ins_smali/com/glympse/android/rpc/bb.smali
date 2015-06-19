.class  Lcom/glympse/android/rpc/bb;
.super Ljava/lang/Object;
.source "RpcProtocol.java"
.implements Lcom/glympse/android/rpc/GRpcProtocol;
.field private vs:Ljava/util/Hashtable;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/Hashtable;
invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V
iput-object v0, p0, Lcom/glympse/android/rpc/bb;->vs:Ljava/util/Hashtable;
return-void
.end method
.method public static dn()Lcom/glympse/android/rpc/GRpcProtocol;
.registers 2
new-instance v0, Lcom/glympse/android/rpc/bb;
invoke-direct {v0}, Lcom/glympse/android/rpc/bb;-><init>()V
new-instance v1, Lcom/glympse/android/rpc/an;
invoke-direct {v1}, Lcom/glympse/android/rpc/an;-><init>()V
invoke-interface {v0, v1}, Lcom/glympse/android/rpc/GRpcProtocol;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/ao;
invoke-direct {v1}, Lcom/glympse/android/rpc/ao;-><init>()V
invoke-interface {v0, v1}, Lcom/glympse/android/rpc/GRpcProtocol;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
return-object v0
.end method
.method public addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/rpc/bb;->vs:Ljava/util/Hashtable;
invoke-interface {p1}, Lcom/glympse/android/rpc/GRpcMethod;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)Z
.registers 6
iget-object v0, p0, Lcom/glympse/android/rpc/bb;->vs:Ljava/util/Hashtable;
invoke-virtual {v0, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/rpc/GRpcMethod;
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_b
return v0
:cond_c
invoke-interface {v0, p1, p2, p4}, Lcom/glympse/android/rpc/GRpcMethod;->call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GArray;)V
const/4 v0, 0x1
goto :goto_b
.end method
.method public handle(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)Z
.registers 9
const/4 v1, 0x0
invoke-static {p3}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_9
move v0, v1
:goto_8
return v0
:cond_9
invoke-static {p3}, Lcom/glympse/android/lib/json/JsonSerializer;->toPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
if-nez v2, :cond_11
move v0, v1
goto :goto_8
:cond_11
const-string v0, "method"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v2, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_23
move v0, v1
goto :goto_8
:cond_23
iget-object v3, p0, Lcom/glympse/android/rpc/bb;->vs:Ljava/util/Hashtable;
invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/rpc/GRpcMethod;
if-nez v0, :cond_2f
move v0, v1
goto :goto_8
:cond_2f
invoke-interface {v0, p1, p2, v2, p4}, Lcom/glympse/android/rpc/GRpcMethod;->handle(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GArray;)V
const/4 v0, 0x1
goto :goto_8
.end method
.method public upgrade(D)Z
.registers 9
const-wide v4, 0x3ff199999999999aL
const-wide/high16 v2, 0x3ff0
const/4 v0, 0x1
cmpl-double v1, v2, p1
if-nez v1, :cond_12d
new-instance v1, Lcom/glympse/android/rpc/am;
invoke-direct {v1}, Lcom/glympse/android/rpc/am;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/p;
invoke-direct {v1}, Lcom/glympse/android/rpc/p;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/l;
invoke-direct {v1}, Lcom/glympse/android/rpc/l;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/w;
invoke-direct {v1}, Lcom/glympse/android/rpc/w;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/ar;
invoke-direct {v1}, Lcom/glympse/android/rpc/ar;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/m;
invoke-direct {v1}, Lcom/glympse/android/rpc/m;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/f;
invoke-direct {v1}, Lcom/glympse/android/rpc/f;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/n;
invoke-direct {v1}, Lcom/glympse/android/rpc/n;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/g;
invoke-direct {v1}, Lcom/glympse/android/rpc/g;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/q;
invoke-direct {v1}, Lcom/glympse/android/rpc/q;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/ad;
invoke-direct {v1}, Lcom/glympse/android/rpc/ad;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/r;
invoke-direct {v1}, Lcom/glympse/android/rpc/r;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/i;
invoke-direct {v1}, Lcom/glympse/android/rpc/i;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/x;
invoke-direct {v1}, Lcom/glympse/android/rpc/x;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/at;
invoke-direct {v1}, Lcom/glympse/android/rpc/at;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/ap;
invoke-direct {v1}, Lcom/glympse/android/rpc/ap;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/u;
invoke-direct {v1}, Lcom/glympse/android/rpc/u;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/ah;
invoke-direct {v1}, Lcom/glympse/android/rpc/ah;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/t;
invoke-direct {v1}, Lcom/glympse/android/rpc/t;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/ag;
invoke-direct {v1}, Lcom/glympse/android/rpc/ag;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/v;
invoke-direct {v1}, Lcom/glympse/android/rpc/v;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/aq;
invoke-direct {v1}, Lcom/glympse/android/rpc/aq;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/al;
invoke-direct {v1}, Lcom/glympse/android/rpc/al;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/ae;
invoke-direct {v1}, Lcom/glympse/android/rpc/ae;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/k;
invoke-direct {v1}, Lcom/glympse/android/rpc/k;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/ak;
invoke-direct {v1}, Lcom/glympse/android/rpc/ak;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/ai;
invoke-direct {v1}, Lcom/glympse/android/rpc/ai;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/aj;
invoke-direct {v1}, Lcom/glympse/android/rpc/aj;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/ac;
invoke-direct {v1}, Lcom/glympse/android/rpc/ac;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/ay;
invoke-direct {v1}, Lcom/glympse/android/rpc/ay;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/y;
invoke-direct {v1}, Lcom/glympse/android/rpc/y;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/aw;
invoke-direct {v1}, Lcom/glympse/android/rpc/aw;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/aa;
invoke-direct {v1}, Lcom/glympse/android/rpc/aa;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/ax;
invoke-direct {v1}, Lcom/glympse/android/rpc/ax;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/au;
invoke-direct {v1}, Lcom/glympse/android/rpc/au;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/av;
invoke-direct {v1}, Lcom/glympse/android/rpc/av;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
:goto_12c
return v0
:cond_12d
cmpl-double v1, v4, p1
if-nez v1, :cond_14d
invoke-virtual {p0, v2, v3}, Lcom/glympse/android/rpc/bb;->upgrade(D)Z
new-instance v1, Lcom/glympse/android/rpc/j;
invoke-direct {v1}, Lcom/glympse/android/rpc/j;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/o;
invoke-direct {v1}, Lcom/glympse/android/rpc/o;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/h;
invoke-direct {v1}, Lcom/glympse/android/rpc/h;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
goto :goto_12c
:cond_14d
const-wide v1, 0x3ff3333333333333L
cmpl-double v1, v1, p1
if-nez v1, :cond_172
invoke-virtual {p0, v4, v5}, Lcom/glympse/android/rpc/bb;->upgrade(D)Z
new-instance v1, Lcom/glympse/android/rpc/s;
invoke-direct {v1}, Lcom/glympse/android/rpc/s;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/af;
invoke-direct {v1}, Lcom/glympse/android/rpc/af;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
new-instance v1, Lcom/glympse/android/rpc/as;
invoke-direct {v1}, Lcom/glympse/android/rpc/as;-><init>()V
invoke-virtual {p0, v1}, Lcom/glympse/android/rpc/bb;->addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
goto :goto_12c
:cond_172
const/4 v0, 0x0
goto :goto_12c
.end method