.class public final Lcom/ford/syncV4/proxy/rpc/au;
.super Lcom/ford/syncV4/proxy/d;
.source "SourceFile"
.method public constructor <init>()V
.registers 2
const-string v0, "ScrollableMessage"
invoke-direct {p0, v0}, Lcom/ford/syncV4/proxy/d;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 4
if-eqz p1, :cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/au;->b:Ljava/util/Hashtable;
const-string v1, "scrollableMessageBody"
invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/au;->b:Ljava/util/Hashtable;
const-string v1, "scrollableMessageBody"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_9
.end method
.method public final a(Ljava/util/Vector;)V
.registers 4
if-eqz p1, :cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/au;->b:Ljava/util/Hashtable;
const-string v1, "softButtons"
invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/au;->b:Ljava/util/Hashtable;
const-string v1, "softButtons"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_9
.end method
.method public final b(Ljava/lang/Integer;)V
.registers 4
if-eqz p1, :cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/au;->b:Ljava/util/Hashtable;
const-string v1, "timeout"
invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/au;->b:Ljava/util/Hashtable;
const-string v1, "timeout"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_9
.end method