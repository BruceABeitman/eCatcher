.class  Lcom/fsck/k9/MessagingController$MemorizingListener;
.super Lcom/fsck/k9/MessagingListener;
.source "MessagingController.java"
.field  memories:Ljava/util/HashMap;
.field final synthetic this$0:Lcom/fsck/k9/MessagingController;
.method constructor <init>(Lcom/fsck/k9/MessagingController;)V
.registers 4
iput-object p1, p0, Lcom/fsck/k9/MessagingController$MemorizingListener;->this$0:Lcom/fsck/k9/MessagingController;
invoke-direct {p0}, Lcom/fsck/k9/MessagingListener;-><init>()V
new-instance v0, Ljava/util/HashMap;
const/16 v1, 0x1f
invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V
iput-object v0, p0, Lcom/fsck/k9/MessagingController$MemorizingListener;->memories:Ljava/util/HashMap;
return-void
.end method
.method  getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/MessagingController$Memory;
.registers 6
iget-object v1, p0, Lcom/fsck/k9/MessagingController$MemorizingListener;->memories:Ljava/util/HashMap;
invoke-static {p1, p2}, Lcom/fsck/k9/MessagingController;->getMemoryKey(Lcom/fsck/k9/Account;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fsck/k9/MessagingController$Memory;
if-nez v0, :cond_1e
new-instance v0, Lcom/fsck/k9/MessagingController$Memory;
iget-object v1, p0, Lcom/fsck/k9/MessagingController$MemorizingListener;->this$0:Lcom/fsck/k9/MessagingController;
invoke-direct {v0, v1, p1, p2}, Lcom/fsck/k9/MessagingController$Memory;-><init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;)V
iget-object v1, p0, Lcom/fsck/k9/MessagingController$MemorizingListener;->memories:Ljava/util/HashMap;
invoke-virtual {v0}, Lcom/fsck/k9/MessagingController$Memory;->getKey()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_1e
return-object v0
.end method
.method public declared-synchronized pendingCommandCompleted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
.registers 5
monitor-enter p0
const/4 v1, 0x0
:try_start_2
invoke-virtual {p0, p1, v1}, Lcom/fsck/k9/MessagingController$MemorizingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/MessagingController$Memory;
move-result-object v0
const/4 v1, 0x0
iput-object v1, v0, Lcom/fsck/k9/MessagingController$Memory;->processingCommandTitle:Ljava/lang/String;
:try_end_9
.catchall {:try_start_2 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v1
monitor-exit p0
throw v1
.end method
.method public declared-synchronized pendingCommandStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
.registers 5
monitor-enter p0
const/4 v1, 0x0
:try_start_2
invoke-virtual {p0, p1, v1}, Lcom/fsck/k9/MessagingController$MemorizingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/MessagingController$Memory;
move-result-object v0
iput-object p2, v0, Lcom/fsck/k9/MessagingController$Memory;->processingCommandTitle:Ljava/lang/String;
:try_end_8
.catchall {:try_start_2 .. :try_end_8} :catchall_a
monitor-exit p0
return-void
:catchall_a
move-exception v1
monitor-exit p0
throw v1
.end method
.method public declared-synchronized pendingCommandsFinished(Lcom/fsck/k9/Account;)V
.registers 4
monitor-enter p0
const/4 v1, 0x0
:try_start_2
invoke-virtual {p0, p1, v1}, Lcom/fsck/k9/MessagingController$MemorizingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/MessagingController$Memory;
move-result-object v0
sget-object v1, Lcom/fsck/k9/MessagingController$MemorizingState;->FINISHED:Lcom/fsck/k9/MessagingController$MemorizingState;
iput-object v1, v0, Lcom/fsck/k9/MessagingController$Memory;->processingState:Lcom/fsck/k9/MessagingController$MemorizingState;
:try_end_a
.catchall {:try_start_2 .. :try_end_a} :catchall_c
monitor-exit p0
return-void
:catchall_c
move-exception v1
monitor-exit p0
throw v1
.end method
.method public declared-synchronized pendingCommandsProcessing(Lcom/fsck/k9/Account;)V
.registers 4
monitor-enter p0
const/4 v1, 0x0
:try_start_2
invoke-virtual {p0, p1, v1}, Lcom/fsck/k9/MessagingController$MemorizingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/MessagingController$Memory;
move-result-object v0
sget-object v1, Lcom/fsck/k9/MessagingController$MemorizingState;->STARTED:Lcom/fsck/k9/MessagingController$MemorizingState;
iput-object v1, v0, Lcom/fsck/k9/MessagingController$Memory;->processingState:Lcom/fsck/k9/MessagingController$MemorizingState;
const/4 v1, 0x0
iput v1, v0, Lcom/fsck/k9/MessagingController$Memory;->folderCompleted:I
const/4 v1, 0x0
iput v1, v0, Lcom/fsck/k9/MessagingController$Memory;->folderTotal:I
:try_end_10
.catchall {:try_start_2 .. :try_end_10} :catchall_12
monitor-exit p0
return-void
:catchall_12
move-exception v1
monitor-exit p0
throw v1
.end method
.method declared-synchronized refreshOther(Lcom/fsck/k9/MessagingListener;)V
.registers 12
monitor-enter p0
if-eqz p1, :cond_dc
const/4 v5, 0x0
const/4 v3, 0x0
const/4 v2, 0x0
:try_start_6
iget-object v6, p0, Lcom/fsck/k9/MessagingController$MemorizingListener;->memories:Ljava/util/HashMap;
invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;
move-result-object v6
invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_10
:goto_10
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_a5
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/fsck/k9/MessagingController$Memory;
iget-object v6, v1, Lcom/fsck/k9/MessagingController$Memory;->syncingState:Lcom/fsck/k9/MessagingController$MemorizingState;
if-eqz v6, :cond_2d
sget-object v6, Lcom/fsck/k9/MessagingController$29;->$SwitchMap$com$fsck$k9$MessagingController$MemorizingState:[I
iget-object v7, v1, Lcom/fsck/k9/MessagingController$Memory;->syncingState:Lcom/fsck/k9/MessagingController$MemorizingState;
invoke-virtual {v7}, Lcom/fsck/k9/MessagingController$MemorizingState;->ordinal()I
move-result v7
aget v6, v6, v7
packed-switch v6, :pswitch_data_e6
:goto_2d
:cond_2d
iget-object v6, v1, Lcom/fsck/k9/MessagingController$Memory;->sendingState:Lcom/fsck/k9/MessagingController$MemorizingState;
if-eqz v6, :cond_3e
sget-object v6, Lcom/fsck/k9/MessagingController$29;->$SwitchMap$com$fsck$k9$MessagingController$MemorizingState:[I
iget-object v7, v1, Lcom/fsck/k9/MessagingController$Memory;->sendingState:Lcom/fsck/k9/MessagingController$MemorizingState;
invoke-virtual {v7}, Lcom/fsck/k9/MessagingController$MemorizingState;->ordinal()I
move-result v7
aget v6, v6, v7
packed-switch v6, :pswitch_data_f0
:goto_3e
:cond_3e
iget-object v6, v1, Lcom/fsck/k9/MessagingController$Memory;->pushingState:Lcom/fsck/k9/MessagingController$MemorizingState;
if-eqz v6, :cond_4f
sget-object v6, Lcom/fsck/k9/MessagingController$29;->$SwitchMap$com$fsck$k9$MessagingController$MemorizingState:[I
iget-object v7, v1, Lcom/fsck/k9/MessagingController$Memory;->pushingState:Lcom/fsck/k9/MessagingController$MemorizingState;
invoke-virtual {v7}, Lcom/fsck/k9/MessagingController$MemorizingState;->ordinal()I
move-result v7
aget v6, v6, v7
packed-switch v6, :pswitch_data_fa
:goto_4f
:cond_4f
iget-object v6, v1, Lcom/fsck/k9/MessagingController$Memory;->processingState:Lcom/fsck/k9/MessagingController$MemorizingState;
if-eqz v6, :cond_10
sget-object v6, Lcom/fsck/k9/MessagingController$29;->$SwitchMap$com$fsck$k9$MessagingController$MemorizingState:[I
iget-object v7, v1, Lcom/fsck/k9/MessagingController$Memory;->processingState:Lcom/fsck/k9/MessagingController$MemorizingState;
invoke-virtual {v7}, Lcom/fsck/k9/MessagingController$MemorizingState;->ordinal()I
move-result v7
aget v6, v6, v7
packed-switch v6, :pswitch_data_102
goto :goto_10
:pswitch_61
move-object v2, v1
goto :goto_10
:pswitch_63
move-object v5, v1
goto :goto_2d
:pswitch_65
iget-object v6, v1, Lcom/fsck/k9/MessagingController$Memory;->account:Lcom/fsck/k9/Account;
iget-object v7, v1, Lcom/fsck/k9/MessagingController$Memory;->folderName:Ljava/lang/String;
iget v8, v1, Lcom/fsck/k9/MessagingController$Memory;->syncingTotalMessagesInMailbox:I
iget v9, v1, Lcom/fsck/k9/MessagingController$Memory;->syncingNumNewMessages:I
invoke-virtual {p1, v6, v7, v8, v9}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
:try_end_70
.catchall {:try_start_6 .. :try_end_70} :catchall_71
goto :goto_2d
:catchall_71
move-exception v6
monitor-exit p0
throw v6
:try_start_74
:pswitch_74
iget-object v6, v1, Lcom/fsck/k9/MessagingController$Memory;->account:Lcom/fsck/k9/Account;
iget-object v7, v1, Lcom/fsck/k9/MessagingController$Memory;->folderName:Ljava/lang/String;
iget-object v8, v1, Lcom/fsck/k9/MessagingController$Memory;->failureMessage:Ljava/lang/String;
invoke-virtual {p1, v6, v7, v8}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2d
:pswitch_7e
move-object v3, v1
goto :goto_3e
:pswitch_80
iget-object v6, v1, Lcom/fsck/k9/MessagingController$Memory;->account:Lcom/fsck/k9/Account;
invoke-virtual {p1, v6}, Lcom/fsck/k9/MessagingListener;->sendPendingMessagesCompleted(Lcom/fsck/k9/Account;)V
goto :goto_3e
:pswitch_86
iget-object v6, v1, Lcom/fsck/k9/MessagingController$Memory;->account:Lcom/fsck/k9/Account;
invoke-virtual {p1, v6}, Lcom/fsck/k9/MessagingListener;->sendPendingMessagesFailed(Lcom/fsck/k9/Account;)V
goto :goto_3e
:pswitch_8c
iget-object v6, v1, Lcom/fsck/k9/MessagingController$Memory;->account:Lcom/fsck/k9/Account;
iget-object v7, v1, Lcom/fsck/k9/MessagingController$Memory;->folderName:Ljava/lang/String;
const/4 v8, 0x1
invoke-virtual {p1, v6, v7, v8}, Lcom/fsck/k9/MessagingListener;->setPushActive(Lcom/fsck/k9/Account;Ljava/lang/String;Z)V
goto :goto_4f
:pswitch_95
iget-object v6, v1, Lcom/fsck/k9/MessagingController$Memory;->account:Lcom/fsck/k9/Account;
iget-object v7, v1, Lcom/fsck/k9/MessagingController$Memory;->folderName:Ljava/lang/String;
const/4 v8, 0x0
invoke-virtual {p1, v6, v7, v8}, Lcom/fsck/k9/MessagingListener;->setPushActive(Lcom/fsck/k9/Account;Ljava/lang/String;Z)V
goto :goto_4f
:pswitch_9e
iget-object v6, v1, Lcom/fsck/k9/MessagingController$Memory;->account:Lcom/fsck/k9/Account;
invoke-virtual {p1, v6}, Lcom/fsck/k9/MessagingListener;->pendingCommandsFinished(Lcom/fsck/k9/Account;)V
goto/16 :goto_10
:cond_a5
const/4 v4, 0x0
if-eqz v5, :cond_b0
iget-object v6, v5, Lcom/fsck/k9/MessagingController$Memory;->account:Lcom/fsck/k9/Account;
iget-object v7, v5, Lcom/fsck/k9/MessagingController$Memory;->folderName:Ljava/lang/String;
invoke-virtual {p1, v6, v7}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
move-object v4, v5
:cond_b0
if-eqz v3, :cond_b8
iget-object v6, v3, Lcom/fsck/k9/MessagingController$Memory;->account:Lcom/fsck/k9/Account;
invoke-virtual {p1, v6}, Lcom/fsck/k9/MessagingListener;->sendPendingMessagesStarted(Lcom/fsck/k9/Account;)V
move-object v4, v3
:cond_b8
if-eqz v2, :cond_cb
iget-object v6, v2, Lcom/fsck/k9/MessagingController$Memory;->account:Lcom/fsck/k9/Account;
invoke-virtual {p1, v6}, Lcom/fsck/k9/MessagingListener;->pendingCommandsProcessing(Lcom/fsck/k9/Account;)V
iget-object v6, v2, Lcom/fsck/k9/MessagingController$Memory;->processingCommandTitle:Ljava/lang/String;
if-eqz v6, :cond_de
iget-object v6, v2, Lcom/fsck/k9/MessagingController$Memory;->account:Lcom/fsck/k9/Account;
iget-object v7, v2, Lcom/fsck/k9/MessagingController$Memory;->processingCommandTitle:Ljava/lang/String;
invoke-virtual {p1, v6, v7}, Lcom/fsck/k9/MessagingListener;->pendingCommandStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
:goto_ca
move-object v4, v2
:cond_cb
if-eqz v4, :cond_dc
iget v6, v4, Lcom/fsck/k9/MessagingController$Memory;->folderTotal:I
if-lez v6, :cond_dc
iget-object v6, v4, Lcom/fsck/k9/MessagingController$Memory;->account:Lcom/fsck/k9/Account;
iget-object v7, v4, Lcom/fsck/k9/MessagingController$Memory;->folderName:Ljava/lang/String;
iget v8, v4, Lcom/fsck/k9/MessagingController$Memory;->folderCompleted:I
iget v9, v4, Lcom/fsck/k9/MessagingController$Memory;->folderTotal:I
invoke-virtual {p1, v6, v7, v8, v9}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
:try_end_dc
.catchall {:try_start_74 .. :try_end_dc} :catchall_71
:cond_dc
monitor-exit p0
return-void
:cond_de
:try_start_de
iget-object v6, v2, Lcom/fsck/k9/MessagingController$Memory;->account:Lcom/fsck/k9/Account;
iget-object v7, v2, Lcom/fsck/k9/MessagingController$Memory;->processingCommandTitle:Ljava/lang/String;
invoke-virtual {p1, v6, v7}, Lcom/fsck/k9/MessagingListener;->pendingCommandCompleted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
:try_end_e5
.catchall {:try_start_de .. :try_end_e5} :catchall_71
goto :goto_ca
:pswitch_data_f0
.packed-switch 0x1
:pswitch_7e
:pswitch_80
:pswitch_86
.end packed-switch
:pswitch_data_fa
.packed-switch 0x1
:pswitch_8c
:pswitch_95
.end packed-switch
:pswitch_data_e6
.packed-switch 0x1
:pswitch_63
:pswitch_65
:pswitch_74
.end packed-switch
:pswitch_data_102
.packed-switch 0x1
:pswitch_61
:pswitch_9e
:pswitch_9e
.end packed-switch
.end method
.method public declared-synchronized sendPendingMessagesCompleted(Lcom/fsck/k9/Account;)V
.registers 4
monitor-enter p0
const/4 v1, 0x0
:try_start_2
invoke-virtual {p0, p1, v1}, Lcom/fsck/k9/MessagingController$MemorizingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/MessagingController$Memory;
move-result-object v0
sget-object v1, Lcom/fsck/k9/MessagingController$MemorizingState;->FINISHED:Lcom/fsck/k9/MessagingController$MemorizingState;
iput-object v1, v0, Lcom/fsck/k9/MessagingController$Memory;->sendingState:Lcom/fsck/k9/MessagingController$MemorizingState;
:try_end_a
.catchall {:try_start_2 .. :try_end_a} :catchall_c
monitor-exit p0
return-void
:catchall_c
move-exception v1
monitor-exit p0
throw v1
.end method
.method public declared-synchronized sendPendingMessagesFailed(Lcom/fsck/k9/Account;)V
.registers 4
monitor-enter p0
const/4 v1, 0x0
:try_start_2
invoke-virtual {p0, p1, v1}, Lcom/fsck/k9/MessagingController$MemorizingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/MessagingController$Memory;
move-result-object v0
sget-object v1, Lcom/fsck/k9/MessagingController$MemorizingState;->FAILED:Lcom/fsck/k9/MessagingController$MemorizingState;
iput-object v1, v0, Lcom/fsck/k9/MessagingController$Memory;->sendingState:Lcom/fsck/k9/MessagingController$MemorizingState;
:try_end_a
.catchall {:try_start_2 .. :try_end_a} :catchall_c
monitor-exit p0
return-void
:catchall_c
move-exception v1
monitor-exit p0
throw v1
.end method
.method public declared-synchronized sendPendingMessagesStarted(Lcom/fsck/k9/Account;)V
.registers 4
monitor-enter p0
const/4 v1, 0x0
:try_start_2
invoke-virtual {p0, p1, v1}, Lcom/fsck/k9/MessagingController$MemorizingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/MessagingController$Memory;
move-result-object v0
sget-object v1, Lcom/fsck/k9/MessagingController$MemorizingState;->STARTED:Lcom/fsck/k9/MessagingController$MemorizingState;
iput-object v1, v0, Lcom/fsck/k9/MessagingController$Memory;->sendingState:Lcom/fsck/k9/MessagingController$MemorizingState;
const/4 v1, 0x0
iput v1, v0, Lcom/fsck/k9/MessagingController$Memory;->folderCompleted:I
const/4 v1, 0x0
iput v1, v0, Lcom/fsck/k9/MessagingController$Memory;->folderTotal:I
:try_end_10
.catchall {:try_start_2 .. :try_end_10} :catchall_12
monitor-exit p0
return-void
:catchall_12
move-exception v1
monitor-exit p0
throw v1
.end method
.method public declared-synchronized setPushActive(Lcom/fsck/k9/Account;Ljava/lang/String;Z)V
.registers 6
monitor-enter p0
:try_start_1
invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/MessagingController$MemorizingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/MessagingController$Memory;
move-result-object v0
if-eqz p3, :cond_d
sget-object v1, Lcom/fsck/k9/MessagingController$MemorizingState;->STARTED:Lcom/fsck/k9/MessagingController$MemorizingState;
:goto_9
iput-object v1, v0, Lcom/fsck/k9/MessagingController$Memory;->pushingState:Lcom/fsck/k9/MessagingController$MemorizingState;
:try_end_b
.catchall {:try_start_1 .. :try_end_b} :catchall_10
monitor-exit p0
return-void
:cond_d
:try_start_d
sget-object v1, Lcom/fsck/k9/MessagingController$MemorizingState;->FINISHED:Lcom/fsck/k9/MessagingController$MemorizingState;
:try_end_f
.catchall {:try_start_d .. :try_end_f} :catchall_10
goto :goto_9
:catchall_10
move-exception v1
monitor-exit p0
throw v1
.end method
.method public declared-synchronized synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
monitor-enter p0
:try_start_1
invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/MessagingController$MemorizingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/MessagingController$Memory;
move-result-object v0
sget-object v1, Lcom/fsck/k9/MessagingController$MemorizingState;->FAILED:Lcom/fsck/k9/MessagingController$MemorizingState;
iput-object v1, v0, Lcom/fsck/k9/MessagingController$Memory;->syncingState:Lcom/fsck/k9/MessagingController$MemorizingState;
iput-object p3, v0, Lcom/fsck/k9/MessagingController$Memory;->failureMessage:Ljava/lang/String;
:try_end_b
.catchall {:try_start_1 .. :try_end_b} :catchall_d
monitor-exit p0
return-void
:catchall_d
move-exception v1
monitor-exit p0
throw v1
.end method
.method public declared-synchronized synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
.registers 7
monitor-enter p0
:try_start_1
invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/MessagingController$MemorizingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/MessagingController$Memory;
move-result-object v0
sget-object v1, Lcom/fsck/k9/MessagingController$MemorizingState;->FINISHED:Lcom/fsck/k9/MessagingController$MemorizingState;
iput-object v1, v0, Lcom/fsck/k9/MessagingController$Memory;->syncingState:Lcom/fsck/k9/MessagingController$MemorizingState;
iput p3, v0, Lcom/fsck/k9/MessagingController$Memory;->syncingTotalMessagesInMailbox:I
iput p4, v0, Lcom/fsck/k9/MessagingController$Memory;->syncingNumNewMessages:I
:try_end_d
.catchall {:try_start_1 .. :try_end_d} :catchall_f
monitor-exit p0
return-void
:catchall_f
move-exception v1
monitor-exit p0
throw v1
.end method
.method public declared-synchronized synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
.registers 7
monitor-enter p0
:try_start_1
invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/MessagingController$MemorizingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/MessagingController$Memory;
move-result-object v0
iput p3, v0, Lcom/fsck/k9/MessagingController$Memory;->folderCompleted:I
iput p4, v0, Lcom/fsck/k9/MessagingController$Memory;->folderTotal:I
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v1
monitor-exit p0
throw v1
.end method
.method public declared-synchronized synchronizeMailboxStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
.registers 5
monitor-enter p0
:try_start_1
invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/MessagingController$MemorizingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/MessagingController$Memory;
move-result-object v0
sget-object v1, Lcom/fsck/k9/MessagingController$MemorizingState;->STARTED:Lcom/fsck/k9/MessagingController$MemorizingState;
iput-object v1, v0, Lcom/fsck/k9/MessagingController$Memory;->syncingState:Lcom/fsck/k9/MessagingController$MemorizingState;
const/4 v1, 0x0
iput v1, v0, Lcom/fsck/k9/MessagingController$Memory;->folderCompleted:I
const/4 v1, 0x0
iput v1, v0, Lcom/fsck/k9/MessagingController$Memory;->folderTotal:I
:try_end_f
.catchall {:try_start_1 .. :try_end_f} :catchall_11
monitor-exit p0
return-void
:catchall_11
move-exception v1
monitor-exit p0
throw v1
.end method