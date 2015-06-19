.class public final Lcom/ford/syncV4/proxy/rpc/y;
.super Lcom/ford/syncV4/proxy/c;
.source "SourceFile"
.method public constructor <init>()V
.registers 2
const-string v0, "OnAppInterfaceUnregistered"
invoke-direct {p0, v0}, Lcom/ford/syncV4/proxy/c;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/util/Hashtable;)V
.registers 2
invoke-direct {p0, p1}, Lcom/ford/syncV4/proxy/c;-><init>(Ljava/util/Hashtable;)V
return-void
.end method
.method public final c()Lcom/ford/syncV4/proxy/rpc/enums/AppInterfaceUnregisteredReason;
.registers 5
const/4 v1, 0x0
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/y;->b:Ljava/util/Hashtable;
const-string v2, "reason"
invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
instance-of v2, v0, Lcom/ford/syncV4/proxy/rpc/enums/AppInterfaceUnregisteredReason;
if-eqz v2, :cond_10
check-cast v0, Lcom/ford/syncV4/proxy/rpc/enums/AppInterfaceUnregisteredReason;
:goto_f
return-object v0
:cond_10
instance-of v2, v0, Ljava/lang/String;
if-eqz v2, :cond_3e
:try_start_14
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Lcom/ford/syncV4/proxy/rpc/enums/AppInterfaceUnregisteredReason;->a(Ljava/lang/String;)Lcom/ford/syncV4/proxy/rpc/enums/AppInterfaceUnregisteredReason;
:try_end_19
.catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_1b
move-result-object v0
goto :goto_f
:catch_1b
move-exception v0
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Failed to parse "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ".reason"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2, v0}, Lcom/ford/syncV4/util/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
move-object v0, v1
goto :goto_f
:cond_3e
move-object v0, v1
goto :goto_f
.end method