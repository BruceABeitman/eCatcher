.class public final Lcom/ford/syncV4/proxy/rpc/bn;
.super Lcom/ford/syncV4/proxy/d;
.source "SourceFile"
.method public constructor <init>()V
.registers 2
const-string v0, "SyncPData"
invoke-direct {p0, v0}, Lcom/ford/syncV4/proxy/d;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public final a([B)V
.registers 4
if-eqz p1, :cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/bn;->b:Ljava/util/Hashtable;
const-string v1, "bulkData"
invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/bn;->b:Ljava/util/Hashtable;
const-string v1, "bulkData"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_9
.end method