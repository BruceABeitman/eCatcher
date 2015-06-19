.class public Lcom/ibm/icu/impl/ICURWLock;
.super Ljava/lang/Object;
.source "ICURWLock.java"
.field private static final NOTIFY_NONE:I = 0x0
.field private static final NOTIFY_READERS:I = 0x2
.field private static final NOTIFY_WRITERS:I = 0x1
.field private rc:I
.field private readLock:Ljava/lang/Object;
.field private stats:Lcom/ibm/icu/impl/ICURWLock$Stats;
.field private wrc:I
.field private writeLock:Ljava/lang/Object;
.field private wwc:I
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->writeLock:Ljava/lang/Object;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->readLock:Ljava/lang/Object;
new-instance v0, Lcom/ibm/icu/impl/ICURWLock$Stats;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/ibm/icu/impl/ICURWLock$Stats;-><init>(Lcom/ibm/icu/impl/ICURWLock$1;)V
iput-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->stats:Lcom/ibm/icu/impl/ICURWLock$Stats;
return-void
.end method
.method private declared-synchronized finishRead()Z
.registers 3
const/4 v1, 0x1
monitor-enter p0
:try_start_2
iget v0, p0, Lcom/ibm/icu/impl/ICURWLock;->rc:I
if-lez v0, :cond_16
iget v0, p0, Lcom/ibm/icu/impl/ICURWLock;->rc:I
sub-int/2addr v0, v1
iput v0, p0, Lcom/ibm/icu/impl/ICURWLock;->rc:I
if-nez v0, :cond_14
iget v0, p0, Lcom/ibm/icu/impl/ICURWLock;->wwc:I
:try_end_f
.catchall {:try_start_2 .. :try_end_f} :catchall_1e
if-lez v0, :cond_14
move v0, v1
:goto_12
monitor-exit p0
return v0
:cond_14
const/4 v0, 0x0
goto :goto_12
:cond_16
:try_start_16
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "no current reader to release"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_1e
:try_end_1e
.catchall {:try_start_16 .. :try_end_1e} :catchall_1e
move-exception v0
monitor-exit p0
throw v0
.end method
.method private declared-synchronized finishWrite()I
.registers 3
const/4 v1, 0x0
monitor-enter p0
:try_start_2
iget v0, p0, Lcom/ibm/icu/impl/ICURWLock;->rc:I
if-gez v0, :cond_18
const/4 v0, 0x0
iput v0, p0, Lcom/ibm/icu/impl/ICURWLock;->rc:I
iget v0, p0, Lcom/ibm/icu/impl/ICURWLock;->wwc:I
:try_end_b
.catchall {:try_start_2 .. :try_end_b} :catchall_20
if-lez v0, :cond_10
const/4 v0, 0x1
:goto_e
monitor-exit p0
return v0
:cond_10
:try_start_10
iget v0, p0, Lcom/ibm/icu/impl/ICURWLock;->wrc:I
if-lez v0, :cond_16
const/4 v0, 0x2
goto :goto_e
:cond_16
move v0, v1
goto :goto_e
:cond_18
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "no current writer to release"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_20
:try_end_20
.catchall {:try_start_10 .. :try_end_20} :catchall_20
move-exception v0
monitor-exit p0
throw v0
.end method
.method private declared-synchronized getRead()Z
.registers 2
monitor-enter p0
:try_start_1
iget v0, p0, Lcom/ibm/icu/impl/ICURWLock;->rc:I
if-ltz v0, :cond_f
iget v0, p0, Lcom/ibm/icu/impl/ICURWLock;->wwc:I
if-nez v0, :cond_f
invoke-direct {p0}, Lcom/ibm/icu/impl/ICURWLock;->gotRead()Z
:try_end_c
.catchall {:try_start_1 .. :try_end_c} :catchall_17
move-result v0
:goto_d
monitor-exit p0
return v0
:cond_f
:try_start_f
iget v0, p0, Lcom/ibm/icu/impl/ICURWLock;->wrc:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/ibm/icu/impl/ICURWLock;->wrc:I
:try_end_15
.catchall {:try_start_f .. :try_end_15} :catchall_17
const/4 v0, 0x0
goto :goto_d
:catchall_17
move-exception v0
monitor-exit p0
throw v0
.end method
.method private declared-synchronized getWrite()Z
.registers 2
monitor-enter p0
:try_start_1
iget v0, p0, Lcom/ibm/icu/impl/ICURWLock;->rc:I
if-nez v0, :cond_b
invoke-direct {p0}, Lcom/ibm/icu/impl/ICURWLock;->gotWrite()Z
:try_end_8
.catchall {:try_start_1 .. :try_end_8} :catchall_13
move-result v0
:goto_9
monitor-exit p0
return v0
:cond_b
:try_start_b
iget v0, p0, Lcom/ibm/icu/impl/ICURWLock;->wwc:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/ibm/icu/impl/ICURWLock;->wwc:I
:try_end_11
.catchall {:try_start_b .. :try_end_11} :catchall_13
const/4 v0, 0x0
goto :goto_9
:catchall_13
move-exception v0
monitor-exit p0
throw v0
.end method
.method private declared-synchronized gotRead()Z
.registers 4
const/4 v2, 0x1
monitor-enter p0
:try_start_2
iget v0, p0, Lcom/ibm/icu/impl/ICURWLock;->rc:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/ibm/icu/impl/ICURWLock;->rc:I
iget-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->stats:Lcom/ibm/icu/impl/ICURWLock$Stats;
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->stats:Lcom/ibm/icu/impl/ICURWLock$Stats;
iget v1, v0, Lcom/ibm/icu/impl/ICURWLock$Stats;->_rc:I
add-int/lit8 v1, v1, 0x1
iput v1, v0, Lcom/ibm/icu/impl/ICURWLock$Stats;->_rc:I
iget v0, p0, Lcom/ibm/icu/impl/ICURWLock;->rc:I
if-le v0, v2, :cond_20
iget-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->stats:Lcom/ibm/icu/impl/ICURWLock$Stats;
iget v1, v0, Lcom/ibm/icu/impl/ICURWLock$Stats;->_mrc:I
add-int/lit8 v1, v1, 0x1
iput v1, v0, Lcom/ibm/icu/impl/ICURWLock$Stats;->_mrc:I
:cond_20
:try_end_20
.catchall {:try_start_2 .. :try_end_20} :catchall_22
monitor-exit p0
return v2
:catchall_22
move-exception v0
monitor-exit p0
throw v0
.end method
.method private declared-synchronized gotWrite()Z
.registers 3
monitor-enter p0
const/4 v0, -0x1
:try_start_2
iput v0, p0, Lcom/ibm/icu/impl/ICURWLock;->rc:I
iget-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->stats:Lcom/ibm/icu/impl/ICURWLock$Stats;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->stats:Lcom/ibm/icu/impl/ICURWLock$Stats;
iget v1, v0, Lcom/ibm/icu/impl/ICURWLock$Stats;->_wc:I
add-int/lit8 v1, v1, 0x1
iput v1, v0, Lcom/ibm/icu/impl/ICURWLock$Stats;->_wc:I
:try_end_10
.catchall {:try_start_2 .. :try_end_10} :catchall_13
:cond_10
const/4 v0, 0x1
monitor-exit p0
return v0
:catchall_13
move-exception v0
monitor-exit p0
throw v0
.end method
.method private declared-synchronized retryRead()Z
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->stats:Lcom/ibm/icu/impl/ICURWLock$Stats;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->stats:Lcom/ibm/icu/impl/ICURWLock$Stats;
iget v1, v0, Lcom/ibm/icu/impl/ICURWLock$Stats;->_wrc:I
add-int/lit8 v1, v1, 0x1
iput v1, v0, Lcom/ibm/icu/impl/ICURWLock$Stats;->_wrc:I
:cond_d
iget v0, p0, Lcom/ibm/icu/impl/ICURWLock;->rc:I
if-ltz v0, :cond_21
iget v0, p0, Lcom/ibm/icu/impl/ICURWLock;->wwc:I
if-nez v0, :cond_21
iget v0, p0, Lcom/ibm/icu/impl/ICURWLock;->wrc:I
const/4 v1, 0x1
sub-int/2addr v0, v1
iput v0, p0, Lcom/ibm/icu/impl/ICURWLock;->wrc:I
invoke-direct {p0}, Lcom/ibm/icu/impl/ICURWLock;->gotRead()Z
:try_end_1e
.catchall {:try_start_1 .. :try_end_1e} :catchall_23
move-result v0
:goto_1f
monitor-exit p0
return v0
:cond_21
const/4 v0, 0x0
goto :goto_1f
:catchall_23
move-exception v0
monitor-exit p0
throw v0
.end method
.method private declared-synchronized retryWrite()Z
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->stats:Lcom/ibm/icu/impl/ICURWLock$Stats;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->stats:Lcom/ibm/icu/impl/ICURWLock$Stats;
iget v1, v0, Lcom/ibm/icu/impl/ICURWLock$Stats;->_wwc:I
add-int/lit8 v1, v1, 0x1
iput v1, v0, Lcom/ibm/icu/impl/ICURWLock$Stats;->_wwc:I
:cond_d
iget v0, p0, Lcom/ibm/icu/impl/ICURWLock;->rc:I
if-nez v0, :cond_1d
iget v0, p0, Lcom/ibm/icu/impl/ICURWLock;->wwc:I
const/4 v1, 0x1
sub-int/2addr v0, v1
iput v0, p0, Lcom/ibm/icu/impl/ICURWLock;->wwc:I
invoke-direct {p0}, Lcom/ibm/icu/impl/ICURWLock;->gotWrite()Z
:try_end_1a
.catchall {:try_start_1 .. :try_end_1a} :catchall_1f
move-result v0
:goto_1b
monitor-exit p0
return v0
:cond_1d
const/4 v0, 0x0
goto :goto_1b
:catchall_1f
move-exception v0
monitor-exit p0
throw v0
.end method
.method public acquireRead()V
.registers 3
invoke-direct {p0}, Lcom/ibm/icu/impl/ICURWLock;->getRead()Z
move-result v0
if-nez v0, :cond_15
:try_start_6
:goto_6
:cond_6
iget-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->readLock:Ljava/lang/Object;
monitor-enter v0
:try_end_9
.catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_9} :catch_19
:try_start_9
iget-object v1, p0, Lcom/ibm/icu/impl/ICURWLock;->readLock:Ljava/lang/Object;
invoke-virtual {v1}, Ljava/lang/Object;->wait()V
monitor-exit v0
:try_start_f
:try_end_f
.catchall {:try_start_9 .. :try_end_f} :catchall_16
invoke-direct {p0}, Lcom/ibm/icu/impl/ICURWLock;->retryRead()Z
:try_end_12
.catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_12} :catch_19
move-result v0
if-eqz v0, :cond_6
:cond_15
return-void
:catchall_16
move-exception v1
:try_start_17
monitor-exit v0
:try_end_18
.catchall {:try_start_17 .. :try_end_18} :catchall_16
:try_start_18
throw v1
:catch_19
:try_end_19
.catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_19} :catch_19
move-exception v0
goto :goto_6
.end method
.method public acquireWrite()V
.registers 3
invoke-direct {p0}, Lcom/ibm/icu/impl/ICURWLock;->getWrite()Z
move-result v0
if-nez v0, :cond_15
:try_start_6
:goto_6
:cond_6
iget-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->writeLock:Ljava/lang/Object;
monitor-enter v0
:try_end_9
.catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_9} :catch_19
:try_start_9
iget-object v1, p0, Lcom/ibm/icu/impl/ICURWLock;->writeLock:Ljava/lang/Object;
invoke-virtual {v1}, Ljava/lang/Object;->wait()V
monitor-exit v0
:try_start_f
:try_end_f
.catchall {:try_start_9 .. :try_end_f} :catchall_16
invoke-direct {p0}, Lcom/ibm/icu/impl/ICURWLock;->retryWrite()Z
:try_end_12
.catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_12} :catch_19
move-result v0
if-eqz v0, :cond_6
:cond_15
return-void
:catchall_16
move-exception v1
:try_start_17
monitor-exit v0
:try_end_18
.catchall {:try_start_17 .. :try_end_18} :catchall_16
:try_start_18
throw v1
:catch_19
:try_end_19
.catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_19} :catch_19
move-exception v0
goto :goto_6
.end method
.method public declared-synchronized clearStats()Lcom/ibm/icu/impl/ICURWLock$Stats;
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->stats:Lcom/ibm/icu/impl/ICURWLock$Stats;
const/4 v1, 0x0
iput-object v1, p0, Lcom/ibm/icu/impl/ICURWLock;->stats:Lcom/ibm/icu/impl/ICURWLock$Stats;
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return-object v0
:catchall_8
move-exception v1
monitor-exit p0
throw v1
.end method
.method public declared-synchronized getStats()Lcom/ibm/icu/impl/ICURWLock$Stats;
.registers 4
const/4 v1, 0x0
monitor-enter p0
:try_start_2
iget-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->stats:Lcom/ibm/icu/impl/ICURWLock$Stats;
:try_end_4
.catchall {:try_start_2 .. :try_end_4} :catchall_12
if-nez v0, :cond_9
move-object v0, v1
:goto_7
monitor-exit p0
return-object v0
:try_start_9
:cond_9
new-instance v0, Lcom/ibm/icu/impl/ICURWLock$Stats;
iget-object v1, p0, Lcom/ibm/icu/impl/ICURWLock;->stats:Lcom/ibm/icu/impl/ICURWLock$Stats;
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/ICURWLock$Stats;-><init>(Lcom/ibm/icu/impl/ICURWLock$Stats;Lcom/ibm/icu/impl/ICURWLock$1;)V
:try_end_11
.catchall {:try_start_9 .. :try_end_11} :catchall_12
goto :goto_7
:catchall_12
move-exception v0
monitor-exit p0
throw v0
.end method
.method public releaseRead()V
.registers 3
invoke-direct {p0}, Lcom/ibm/icu/impl/ICURWLock;->finishRead()Z
move-result v0
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->writeLock:Ljava/lang/Object;
monitor-enter v0
:try_start_9
iget-object v1, p0, Lcom/ibm/icu/impl/ICURWLock;->writeLock:Ljava/lang/Object;
invoke-virtual {v1}, Ljava/lang/Object;->notify()V
monitor-exit v0
:cond_f
return-void
:catchall_10
move-exception v1
monitor-exit v0
:try_end_12
.catchall {:try_start_9 .. :try_end_12} :catchall_10
throw v1
.end method
.method public releaseWrite()V
.registers 3
invoke-direct {p0}, Lcom/ibm/icu/impl/ICURWLock;->finishWrite()I
move-result v0
packed-switch v0, :pswitch_data_22
:goto_7
return-void
:pswitch_8
iget-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->writeLock:Ljava/lang/Object;
monitor-enter v0
:try_start_b
iget-object v1, p0, Lcom/ibm/icu/impl/ICURWLock;->writeLock:Ljava/lang/Object;
invoke-virtual {v1}, Ljava/lang/Object;->notify()V
monitor-exit v0
goto :goto_7
:catchall_12
move-exception v1
monitor-exit v0
:try_end_14
.catchall {:try_start_b .. :try_end_14} :catchall_12
throw v1
:pswitch_15
iget-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->readLock:Ljava/lang/Object;
monitor-enter v0
:try_start_18
iget-object v1, p0, Lcom/ibm/icu/impl/ICURWLock;->readLock:Ljava/lang/Object;
invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
monitor-exit v0
goto :goto_7
:catchall_1f
move-exception v1
monitor-exit v0
:try_end_21
.catchall {:try_start_18 .. :try_end_21} :catchall_1f
throw v1
:pswitch_data_22
.packed-switch 0x1
:pswitch_8
:pswitch_15
.end packed-switch
.end method
.method public declared-synchronized resetStats()Lcom/ibm/icu/impl/ICURWLock$Stats;
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->stats:Lcom/ibm/icu/impl/ICURWLock$Stats;
new-instance v1, Lcom/ibm/icu/impl/ICURWLock$Stats;
const/4 v2, 0x0
invoke-direct {v1, v2}, Lcom/ibm/icu/impl/ICURWLock$Stats;-><init>(Lcom/ibm/icu/impl/ICURWLock$1;)V
iput-object v1, p0, Lcom/ibm/icu/impl/ICURWLock;->stats:Lcom/ibm/icu/impl/ICURWLock$Stats;
:try_end_b
.catchall {:try_start_1 .. :try_end_b} :catchall_d
monitor-exit p0
return-object v0
:catchall_d
move-exception v1
monitor-exit p0
throw v1
.end method