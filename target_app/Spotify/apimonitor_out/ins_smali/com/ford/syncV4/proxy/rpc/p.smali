.class public final Lcom/ford/syncV4/proxy/rpc/p;
.super Lcom/ford/syncV4/proxy/d;
.source "SourceFile"
.method public constructor <init>()V
.registers 2
const-string v0, "EncodedSyncPData"
invoke-direct {p0, v0}, Lcom/ford/syncV4/proxy/d;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public final a(Ljava/util/Vector;)V
.registers 4
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/p;->b:Ljava/util/Hashtable;
const-string v1, "data"
invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method