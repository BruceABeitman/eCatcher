.class  Lcom/pinguo/lib/util/state/StateMachine$LogRecords;
.super Ljava/lang/Object;
.source "StateMachine.java"
.field private static final DEFAULT_SIZE:I = 0x14
.field private mCount:I
.field private mLogRecords:Ljava/util/Vector;
.field private mMaxSize:I
.field private mOldestIndex:I
.method private constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
iput-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->mLogRecords:Ljava/util/Vector;
const/16 v0, 0x14
iput v0, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->mMaxSize:I
iput v1, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->mOldestIndex:I
iput v1, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->mCount:I
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/lib/util/state/StateMachine$LogRecords;)V
.registers 2
invoke-direct {p0}, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;-><init>()V
return-void
.end method
.method declared-synchronized add(Landroid/os/Message;Ljava/lang/String;Lcom/pinguo/lib/util/state/State;Lcom/pinguo/lib/util/state/State;)V
.registers 8
monitor-enter p0
:try_start_1
iget v1, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->mCount:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->mCount:I
iget-object v1, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->mLogRecords:Ljava/util/Vector;
invoke-virtual {v1}, Ljava/util/Vector;->size()I
move-result v1
iget v2, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->mMaxSize:I
if-ge v1, v2, :cond_1d
iget-object v1, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->mLogRecords:Ljava/util/Vector;
new-instance v2, Lcom/pinguo/lib/util/state/StateMachine$LogRec;
invoke-direct {v2, p1, p2, p3, p4}, Lcom/pinguo/lib/util/state/StateMachine$LogRec;-><init>(Landroid/os/Message;Ljava/lang/String;Lcom/pinguo/lib/util/state/State;Lcom/pinguo/lib/util/state/State;)V
invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
:try_end_1b
.catchall {:try_start_1 .. :try_end_1b} :catchall_3a
:goto_1b
monitor-exit p0
return-void
:try_start_1d
:cond_1d
iget-object v1, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->mLogRecords:Ljava/util/Vector;
iget v2, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->mOldestIndex:I
invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/lib/util/state/StateMachine$LogRec;
iget v1, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->mOldestIndex:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->mOldestIndex:I
iget v1, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->mOldestIndex:I
iget v2, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->mMaxSize:I
if-lt v1, v2, :cond_36
const/4 v1, 0x0
iput v1, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->mOldestIndex:I
:cond_36
invoke-virtual {v0, p1, p2, p3, p4}, Lcom/pinguo/lib/util/state/StateMachine$LogRec;->update(Landroid/os/Message;Ljava/lang/String;Lcom/pinguo/lib/util/state/State;Lcom/pinguo/lib/util/state/State;)V
:try_end_39
.catchall {:try_start_1d .. :try_end_39} :catchall_3a
goto :goto_1b
:catchall_3a
move-exception v1
monitor-exit p0
throw v1
.end method
.method declared-synchronized cleanup()V
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->mLogRecords:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->clear()V
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return-void
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized count()I
.registers 2
monitor-enter p0
:try_start_1
iget v0, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->mCount:I
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized get(I)Lcom/pinguo/lib/util/state/StateMachine$LogRec;
.registers 4
monitor-enter p0
:try_start_1
iget v1, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->mOldestIndex:I
add-int v0, v1, p1
iget v1, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->mMaxSize:I
if-lt v0, v1, :cond_c
iget v1, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->mMaxSize:I
sub-int/2addr v0, v1
:cond_c
invoke-virtual {p0}, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->size()I
:try_end_f
.catchall {:try_start_1 .. :try_end_f} :catchall_1e
move-result v1
if-lt v0, v1, :cond_15
const/4 v1, 0x0
:goto_13
monitor-exit p0
return-object v1
:cond_15
:try_start_15
iget-object v1, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->mLogRecords:Ljava/util/Vector;
invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/lib/util/state/StateMachine$LogRec;
:try_end_1d
.catchall {:try_start_15 .. :try_end_1d} :catchall_1e
goto :goto_13
:catchall_1e
move-exception v1
monitor-exit p0
throw v1
.end method
.method declared-synchronized setSize(I)V
.registers 3
monitor-enter p0
:try_start_1
iput p1, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->mMaxSize:I
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->mCount:I
iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->mLogRecords:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->clear()V
:try_end_b
.catchall {:try_start_1 .. :try_end_b} :catchall_d
monitor-exit p0
return-void
:catchall_d
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized size()I
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->mLogRecords:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->size()I
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_9
move-result v0
monitor-exit p0
return v0
:catchall_9
move-exception v0
monitor-exit p0
throw v0
.end method