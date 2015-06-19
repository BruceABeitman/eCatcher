.class public Lco/vine/android/util/LoopManager;
.super Ljava/lang/Object;
.source "LoopManager.java"
.field private static final DEBUGABLE:Z = false
.field private static final LOCK:[I = null
.field private static final TAG:Ljava/lang/String; = "VineLoopManager"
.field private static final sCounts:Lco/vine/android/util/LongSparseArray;
.field private static sInstance:Lco/vine/android/util/LoopManager;
.field private final mContext:Landroid/content/Context;
.field private final mPrefs:Landroid/content/SharedPreferences;
.field private mRecords:Ljava/util/LinkedList;
.field private mViewingId:J
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
new-array v0, v0, [I
sput-object v0, Lco/vine/android/util/LoopManager;->LOCK:[I
invoke-static {}, Lco/vine/android/util/BuildUtil;->isLogsOn()Z
move-result v0
sput-boolean v0, Lco/vine/android/util/LoopManager;->DEBUGABLE:Z
new-instance v0, Lco/vine/android/util/LongSparseArray;
invoke-direct {v0}, Lco/vine/android/util/LongSparseArray;-><init>()V
sput-object v0, Lco/vine/android/util/LoopManager;->sCounts:Lco/vine/android/util/LongSparseArray;
return-void
.end method
.method private constructor <init>(Landroid/content/Context;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v3
iput-object v3, p0, Lco/vine/android/util/LoopManager;->mPrefs:Landroid/content/SharedPreferences;
new-instance v3, Ljava/util/LinkedList;
invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V
iput-object v3, p0, Lco/vine/android/util/LoopManager;->mRecords:Ljava/util/LinkedList;
iput-object p1, p0, Lco/vine/android/util/LoopManager;->mContext:Landroid/content/Context;
const-wide/16 v3, 0x0
iput-wide v3, p0, Lco/vine/android/util/LoopManager;->mViewingId:J
iget-object v3, p0, Lco/vine/android/util/LoopManager;->mPrefs:Landroid/content/SharedPreferences;
const-string v4, "pref_loop_count_records"
invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
move-result-object v5
invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
move-result-object v2
invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_26
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_3a
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-static {v1}, Lco/vine/android/util/LoopManager$Record;->fromSerializedString(Ljava/lang/String;)Lco/vine/android/util/LoopManager$Record;
move-result-object v3
invoke-virtual {p0, v3}, Lco/vine/android/util/LoopManager;->addRecord(Lco/vine/android/util/LoopManager$Record;)V
goto :goto_26
:cond_3a
return-void
.end method
.method static synthetic access$000()Lco/vine/android/util/LongSparseArray;
.registers 1
sget-object v0, Lco/vine/android/util/LoopManager;->sCounts:Lco/vine/android/util/LongSparseArray;
return-object v0
.end method
.method public static get(Landroid/content/Context;)Lco/vine/android/util/LoopManager;
.registers 3
sget-object v1, Lco/vine/android/util/LoopManager;->LOCK:[I
monitor-enter v1
:try_start_3
sget-object v0, Lco/vine/android/util/LoopManager;->sInstance:Lco/vine/android/util/LoopManager;
if-nez v0, :cond_e
new-instance v0, Lco/vine/android/util/LoopManager;
invoke-direct {v0, p0}, Lco/vine/android/util/LoopManager;-><init>(Landroid/content/Context;)V
sput-object v0, Lco/vine/android/util/LoopManager;->sInstance:Lco/vine/android/util/LoopManager;
:cond_e
monitor-exit v1
:try_end_f
.catchall {:try_start_3 .. :try_end_f} :catchall_12
sget-object v0, Lco/vine/android/util/LoopManager;->sInstance:Lco/vine/android/util/LoopManager;
return-object v0
:catchall_12
move-exception v0
:try_start_13
monitor-exit v1
:try_end_14
.catchall {:try_start_13 .. :try_end_14} :catchall_12
throw v0
.end method
.method public static getLocalLoopCount(J)I
.registers 4
sget-object v0, Lco/vine/android/util/LoopManager;->sCounts:Lco/vine/android/util/LongSparseArray;
const/4 v1, 0x0
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, p0, p1, v1}, Lco/vine/android/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
return v0
.end method
.method public addRecord(Lco/vine/android/util/LoopManager$Record;)V
.registers 9
const/4 v6, -0x1
sget-object v2, Lco/vine/android/util/LoopManager;->LOCK:[I
monitor-enter v2
:try_start_4
iget-object v1, p0, Lco/vine/android/util/LoopManager;->mRecords:Ljava/util/LinkedList;
invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
iget v1, p1, Lco/vine/android/util/LoopManager$Record;->loopCount:I
if-lez v1, :cond_2f
sget-object v1, Lco/vine/android/util/LoopManager;->sCounts:Lco/vine/android/util/LongSparseArray;
iget-wide v3, p1, Lco/vine/android/util/LoopManager$Record;->postId:J
const/4 v5, -0x1
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-virtual {v1, v3, v4, v5}, Lco/vine/android/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v0
if-ne v0, v6, :cond_31
sget-object v1, Lco/vine/android/util/LoopManager;->sCounts:Lco/vine/android/util/LongSparseArray;
iget-wide v3, p1, Lco/vine/android/util/LoopManager$Record;->postId:J
iget v5, p1, Lco/vine/android/util/LoopManager$Record;->loopCount:I
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-virtual {v1, v3, v4, v5}, Lco/vine/android/util/LongSparseArray;->put(JLjava/lang/Object;)V
:goto_2f
:cond_2f
monitor-exit v2
return-void
:cond_31
sget-object v1, Lco/vine/android/util/LoopManager;->sCounts:Lco/vine/android/util/LongSparseArray;
iget-wide v3, p1, Lco/vine/android/util/LoopManager$Record;->postId:J
iget v5, p1, Lco/vine/android/util/LoopManager$Record;->loopCount:I
add-int/2addr v5, v0
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-virtual {v1, v3, v4, v5}, Lco/vine/android/util/LongSparseArray;->put(JLjava/lang/Object;)V
goto :goto_2f
:catchall_40
move-exception v1
monitor-exit v2
:try_end_42
.catchall {:try_start_4 .. :try_end_42} :catchall_40
throw v1
.end method
.method public increment(J)V
.registers 8
sget-object v2, Lco/vine/android/util/LoopManager;->LOCK:[I
monitor-enter v2
:try_start_3
iget-wide v3, p0, Lco/vine/android/util/LoopManager;->mViewingId:J
cmp-long v1, v3, p1
if-eqz v1, :cond_22
new-instance v0, Lco/vine/android/util/LoopManager$Record;
iget-object v1, p0, Lco/vine/android/util/LoopManager;->mContext:Landroid/content/Context;
invoke-static {v1}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;
move-result-object v1
invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveId()J
move-result-wide v3
invoke-direct {v0, v3, v4, p1, p2}, Lco/vine/android/util/LoopManager$Record;-><init>(JJ)V
invoke-virtual {p0, v0}, Lco/vine/android/util/LoopManager;->addRecord(Lco/vine/android/util/LoopManager$Record;)V
:goto_1b
iput-wide p1, p0, Lco/vine/android/util/LoopManager;->mViewingId:J
invoke-virtual {v0}, Lco/vine/android/util/LoopManager$Record;->increment()V
monitor-exit v2
return-void
:cond_22
iget-object v1, p0, Lco/vine/android/util/LoopManager;->mRecords:Ljava/util/LinkedList;
invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/util/LoopManager$Record;
goto :goto_1b
:catchall_2b
move-exception v1
monitor-exit v2
:try_end_2d
.catchall {:try_start_3 .. :try_end_2d} :catchall_2b
throw v1
.end method
.method public popPendingLoops()Ljava/util/List;
.registers 13
new-instance v3, Ljava/util/LinkedList;
invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V
sget-object v7, Lco/vine/android/util/LoopManager;->LOCK:[I
monitor-enter v7
:try_start_8
iget-object v1, p0, Lco/vine/android/util/LoopManager;->mRecords:Ljava/util/LinkedList;
iput-object v3, p0, Lco/vine/android/util/LoopManager;->mRecords:Ljava/util/LinkedList;
invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z
move-result v6
if-nez v6, :cond_29
iget-wide v8, p0, Lco/vine/android/util/LoopManager;->mViewingId:J
invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;
move-result-object v6
check-cast v6, Lco/vine/android/util/LoopManager$Record;
iget-wide v10, v6, Lco/vine/android/util/LoopManager$Record;->postId:J
cmp-long v6, v8, v10
if-nez v6, :cond_29
iget-object v6, p0, Lco/vine/android/util/LoopManager;->mRecords:Ljava/util/LinkedList;
invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
move-result-object v8
invoke-virtual {v6, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
:cond_29
monitor-exit v7
:try_end_2a
.catchall {:try_start_8 .. :try_end_2a} :catchall_57
iget-object v6, p0, Lco/vine/android/util/LoopManager;->mContext:Landroid/content/Context;
invoke-static {v6}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/client/AppController;->getActiveId()J
move-result-wide v4
invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;
move-result-object v0
:cond_38
:goto_38
invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_5d
invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lco/vine/android/util/LoopManager$Record;
iget-wide v6, v2, Lco/vine/android/util/LoopManager$Record;->userId:J
cmp-long v6, v6, v4
if-eqz v6, :cond_38
sget-object v7, Lco/vine/android/util/LoopManager;->LOCK:[I
monitor-enter v7
:try_start_4d
iget-object v6, p0, Lco/vine/android/util/LoopManager;->mRecords:Ljava/util/LinkedList;
invoke-virtual {v6, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
monitor-exit v7
:try_end_53
.catchall {:try_start_4d .. :try_end_53} :catchall_5a
invoke-interface {v0}, Ljava/util/ListIterator;->remove()V
goto :goto_38
:catchall_57
move-exception v6
:try_start_58
monitor-exit v7
:try_end_59
.catchall {:try_start_58 .. :try_end_59} :catchall_57
throw v6
:catchall_5a
move-exception v6
:try_start_5b
monitor-exit v7
:try_end_5c
.catchall {:try_start_5b .. :try_end_5c} :catchall_5a
throw v6
:cond_5d
return-object v1
.end method
.method public save()V
.registers 8
new-instance v2, Ljava/util/HashSet;
invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
sget-object v4, Lco/vine/android/util/LoopManager;->LOCK:[I
monitor-enter v4
:try_start_8
iget-object v3, p0, Lco/vine/android/util/LoopManager;->mRecords:Ljava/util/LinkedList;
invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_e
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_25
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/util/LoopManager$Record;
invoke-virtual {v1}, Lco/vine/android/util/LoopManager$Record;->toSerializedString()Ljava/lang/String;
move-result-object v3
invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_e
:catchall_22
move-exception v3
monitor-exit v4
:try_end_24
.catchall {:try_start_8 .. :try_end_24} :catchall_22
throw v3
:cond_25
:try_start_25
sget-boolean v3, Lco/vine/android/util/LoopManager;->DEBUGABLE:Z
if-eqz v3, :cond_45
const-string v3, "VineLoopManager"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Committing these loop records:\n"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {p0}, Lco/vine/android/util/LoopManager;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_45
monitor-exit v4
:try_end_46
.catchall {:try_start_25 .. :try_end_46} :catchall_22
iget-object v3, p0, Lco/vine/android/util/LoopManager;->mPrefs:Landroid/content/SharedPreferences;
invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v3
const-string v4, "pref_loop_count_records"
invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
move-result-object v3
invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 7
sget-object v4, Lco/vine/android/util/LoopManager;->LOCK:[I
monitor-enter v4
:try_start_3
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p0, Lco/vine/android/util/LoopManager;->mRecords:Ljava/util/LinkedList;
invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_e
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_2b
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/util/LoopManager$Record;
invoke-virtual {v1}, Lco/vine/android/util/LoopManager$Record;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const/16 v5, 0xa
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_e
:catchall_28
move-exception v3
monitor-exit v4
:try_end_2a
.catchall {:try_start_3 .. :try_end_2a} :catchall_28
throw v3
:try_start_2b
:cond_2b
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
monitor-exit v4
:try_end_30
.catchall {:try_start_2b .. :try_end_30} :catchall_28
return-object v3
.end method
.method public undoPopPendingLoops(Ljava/util/List;)V
.registers 5
sget-object v1, Lco/vine/android/util/LoopManager;->LOCK:[I
monitor-enter v1
:try_start_3
iget-object v0, p0, Lco/vine/android/util/LoopManager;->mRecords:Ljava/util/LinkedList;
const/4 v2, 0x0
invoke-virtual {v0, v2, p1}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z
invoke-virtual {p0}, Lco/vine/android/util/LoopManager;->save()V
monitor-exit v1
return-void
:catchall_e
move-exception v0
monitor-exit v1
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_e
throw v0
.end method