.class public final Lcom/ford/syncV4/proxy/rpc/v;
.super Lcom/ford/syncV4/proxy/g;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/ford/syncV4/proxy/g;-><init>()V
return-void
.end method
.method public constructor <init>(Ljava/util/Hashtable;)V
.registers 2
invoke-direct {p0, p1}, Lcom/ford/syncV4/proxy/g;-><init>(Ljava/util/Hashtable;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/enums/ImageType;)V
.registers 4
if-eqz p1, :cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/v;->d:Ljava/util/Hashtable;
const-string v1, "imageType"
invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/v;->d:Ljava/util/Hashtable;
const-string v1, "imageType"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_9
.end method
.method public final a(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/v;->d:Ljava/util/Hashtable;
const-string v1, "value"
invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method