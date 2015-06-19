.class public Lcom/instagram/realtimeclient/RealtimeOperationManager;
.super Ljava/lang/Object;
.source "RealtimeOperationManager.java"
.field private mOperationListener:Lcom/instagram/realtimeclient/RealtimeOperationManager$Listener;
.field private mPatchRange:Lcom/instagram/realtimeclient/RealtimePatchRange;
.field private final mStore:Lcom/instagram/realtimeclient/RealtimeStore;
.method public constructor <init>(Lcom/instagram/realtimeclient/RealtimeOperationManager$Listener;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/realtimeclient/RealtimeOperationManager;->mOperationListener:Lcom/instagram/realtimeclient/RealtimeOperationManager$Listener;
new-instance v0, Lcom/instagram/realtimeclient/RealtimeStore;
invoke-direct {v0}, Lcom/instagram/realtimeclient/RealtimeStore;-><init>()V
iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeOperationManager;->mStore:Lcom/instagram/realtimeclient/RealtimeStore;
return-void
.end method
.method private sendOperationToListener(Lcom/instagram/realtimeclient/RealtimeOperation;)V
.registers 4
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeOperationManager;->mPatchRange:Lcom/instagram/realtimeclient/RealtimePatchRange;
if-eqz v0, :cond_23
iget-object v0, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->op:Lcom/instagram/realtimeclient/RealtimeOperation$Type;
sget-object v1, Lcom/instagram/realtimeclient/RealtimeOperation$Type;->add:Lcom/instagram/realtimeclient/RealtimeOperation$Type;
if-ne v0, v1, :cond_23
iget-object v0, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->timestamp:Ljava/lang/String;
if-eqz v0, :cond_23
iget-object v0, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;
const-string v1, "/direct_share/inbox"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeOperationManager;->mPatchRange:Lcom/instagram/realtimeclient/RealtimePatchRange;
iget-object v1, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->timestamp:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/instagram/realtimeclient/RealtimePatchRange;->contains(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_23
:goto_22
return-void
:cond_23
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeOperationManager;->mOperationListener:Lcom/instagram/realtimeclient/RealtimeOperationManager$Listener;
invoke-interface {v0, p1}, Lcom/instagram/realtimeclient/RealtimeOperationManager$Listener;->onOperation(Lcom/instagram/realtimeclient/RealtimeOperation;)V
goto :goto_22
.end method
.method public clearOperations()V
.registers 2
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeOperationManager;->mStore:Lcom/instagram/realtimeclient/RealtimeStore;
invoke-virtual {v0}, Lcom/instagram/realtimeclient/RealtimeStore;->clear()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeOperationManager;->mPatchRange:Lcom/instagram/realtimeclient/RealtimePatchRange;
return-void
.end method
.method public getPatchRange()Lcom/instagram/realtimeclient/RealtimePatchRange;
.registers 2
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeOperationManager;->mPatchRange:Lcom/instagram/realtimeclient/RealtimePatchRange;
return-object v0
.end method
.method public handlePatchEvent(Lcom/instagram/realtimeclient/RealtimePatchEvent;)V
.registers 5
iget-object v0, p1, Lcom/instagram/realtimeclient/RealtimePatchEvent;->operations:Ljava/util/Collection;
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1e
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/realtimeclient/RealtimeOperation;
iget-object v2, p0, Lcom/instagram/realtimeclient/RealtimeOperationManager;->mStore:Lcom/instagram/realtimeclient/RealtimeStore;
invoke-virtual {v2, v0}, Lcom/instagram/realtimeclient/RealtimeStore;->patchStoreWithOperation(Lcom/instagram/realtimeclient/RealtimeOperation;)Z
move-result v2
if-eqz v2, :cond_6
invoke-direct {p0, v0}, Lcom/instagram/realtimeclient/RealtimeOperationManager;->sendOperationToListener(Lcom/instagram/realtimeclient/RealtimeOperation;)V
goto :goto_6
:cond_1e
return-void
.end method
.method public handlePatches(Ljava/util/Map;)V
.registers 4
if-eqz p1, :cond_6
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeOperationManager;->mPatchRange:Lcom/instagram/realtimeclient/RealtimePatchRange;
if-nez v0, :cond_7
:cond_6
return-void
:cond_7
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeOperationManager;->mStore:Lcom/instagram/realtimeclient/RealtimeStore;
invoke-virtual {v0, p1}, Lcom/instagram/realtimeclient/RealtimeStore;->patchStoreWithPatches(Ljava/util/Map;)V
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeOperationManager;->mStore:Lcom/instagram/realtimeclient/RealtimeStore;
invoke-virtual {v0}, Lcom/instagram/realtimeclient/RealtimeStore;->getOperations()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_16
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_6
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/realtimeclient/RealtimeOperation;
invoke-direct {p0, v0}, Lcom/instagram/realtimeclient/RealtimeOperationManager;->sendOperationToListener(Lcom/instagram/realtimeclient/RealtimeOperation;)V
goto :goto_16
.end method
.method public setPatchRange(Lcom/instagram/realtimeclient/RealtimePatchRange;)V
.registers 2
iput-object p1, p0, Lcom/instagram/realtimeclient/RealtimeOperationManager;->mPatchRange:Lcom/instagram/realtimeclient/RealtimePatchRange;
return-void
.end method