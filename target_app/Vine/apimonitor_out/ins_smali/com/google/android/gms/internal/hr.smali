.class public Lcom/google/android/gms/internal/hr;
.super Ljava/lang/Object;
.field private final GJ:Ljava/util/LinkedHashMap;
.field private GK:I
.field private GL:I
.field private GM:I
.field private GN:I
.field private GO:I
.field private GP:I
.field private size:I
.method public constructor <init>(I)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-gtz p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "maxSize <= 0"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput p1, p0, Lcom/google/android/gms/internal/hr;->GK:I
new-instance v0, Ljava/util/LinkedHashMap;
const/4 v1, 0x0
const/high16 v2, 0x3f40
const/4 v3, 0x1
invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V
iput-object v0, p0, Lcom/google/android/gms/internal/hr;->GJ:Ljava/util/LinkedHashMap;
return-void
.end method
.method private c(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 6
invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/hr;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
move-result v0
if-gez v0, :cond_29
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Negative size: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_29
return v0
.end method
.method protected create(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.registers 5
return-void
.end method
.method public final evictAll()V
.registers 2
const/4 v0, -0x1
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hr;->trimToSize(I)V
return-void
.end method
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
.registers 6
if-nez p1, :cond_a
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "key == null"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
monitor-enter p0
:try_start_b
iget-object v0, p0, Lcom/google/android/gms/internal/hr;->GJ:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_1b
iget v1, p0, Lcom/google/android/gms/internal/hr;->GO:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/google/android/gms/internal/hr;->GO:I
monitor-exit p0
:goto_1a
return-object v0
:cond_1b
iget v0, p0, Lcom/google/android/gms/internal/hr;->GP:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/google/android/gms/internal/hr;->GP:I
monitor-exit p0
:try_end_22
.catchall {:try_start_b .. :try_end_22} :catchall_2a
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/hr;->create(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
if-nez v1, :cond_2d
const/4 v0, 0x0
goto :goto_1a
:catchall_2a
move-exception v0
:try_start_2b
monitor-exit p0
:try_end_2c
.catchall {:try_start_2b .. :try_end_2c} :catchall_2a
throw v0
:cond_2d
monitor-enter p0
:try_start_2e
iget v0, p0, Lcom/google/android/gms/internal/hr;->GM:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/google/android/gms/internal/hr;->GM:I
iget-object v0, p0, Lcom/google/android/gms/internal/hr;->GJ:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_49
iget-object v2, p0, Lcom/google/android/gms/internal/hr;->GJ:Ljava/util/LinkedHashMap;
invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_41
monitor-exit p0
:try_end_42
.catchall {:try_start_2e .. :try_end_42} :catchall_53
if-eqz v0, :cond_56
const/4 v2, 0x0
invoke-virtual {p0, v2, p1, v1, v0}, Lcom/google/android/gms/internal/hr;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
goto :goto_1a
:try_start_49
:cond_49
iget v2, p0, Lcom/google/android/gms/internal/hr;->size:I
invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/hr;->c(Ljava/lang/Object;Ljava/lang/Object;)I
move-result v3
add-int/2addr v2, v3
iput v2, p0, Lcom/google/android/gms/internal/hr;->size:I
goto :goto_41
:catchall_53
move-exception v0
monitor-exit p0
:try_end_55
.catchall {:try_start_49 .. :try_end_55} :catchall_53
throw v0
:cond_56
iget v0, p0, Lcom/google/android/gms/internal/hr;->GK:I
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hr;->trimToSize(I)V
move-object v0, v1
goto :goto_1a
.end method
.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.registers 6
if-eqz p1, :cond_4
if-nez p2, :cond_c
:cond_4
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "key == null || value == null"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
monitor-enter p0
:try_start_d
iget v0, p0, Lcom/google/android/gms/internal/hr;->GL:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/google/android/gms/internal/hr;->GL:I
iget v0, p0, Lcom/google/android/gms/internal/hr;->size:I
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/hr;->c(Ljava/lang/Object;Ljava/lang/Object;)I
move-result v1
add-int/2addr v0, v1
iput v0, p0, Lcom/google/android/gms/internal/hr;->size:I
iget-object v0, p0, Lcom/google/android/gms/internal/hr;->GJ:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_2d
iget v1, p0, Lcom/google/android/gms/internal/hr;->size:I
invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/hr;->c(Ljava/lang/Object;Ljava/lang/Object;)I
move-result v2
sub-int/2addr v1, v2
iput v1, p0, Lcom/google/android/gms/internal/hr;->size:I
:cond_2d
monitor-exit p0
:try_end_2e
.catchall {:try_start_d .. :try_end_2e} :catchall_3a
if-eqz v0, :cond_34
const/4 v1, 0x0
invoke-virtual {p0, v1, p1, v0, p2}, Lcom/google/android/gms/internal/hr;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
:cond_34
iget v1, p0, Lcom/google/android/gms/internal/hr;->GK:I
invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/hr;->trimToSize(I)V
return-object v0
:catchall_3a
move-exception v0
:try_start_3b
monitor-exit p0
:try_end_3c
.catchall {:try_start_3b .. :try_end_3c} :catchall_3a
throw v0
.end method
.method public final declared-synchronized size()I
.registers 2
monitor-enter p0
:try_start_1
iget v0, p0, Lcom/google/android/gms/internal/hr;->size:I
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
const/4 v0, 0x1
return v0
.end method
.method public final declared-synchronized toString()Ljava/lang/String;
.registers 6
const/4 v0, 0x0
monitor-enter p0
:try_start_2
iget v1, p0, Lcom/google/android/gms/internal/hr;->GO:I
iget v2, p0, Lcom/google/android/gms/internal/hr;->GP:I
add-int/2addr v1, v2
if-eqz v1, :cond_e
iget v0, p0, Lcom/google/android/gms/internal/hr;->GO:I
mul-int/lit8 v0, v0, 0x64
div-int/2addr v0, v1
:cond_e
const-string v1, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"
const/4 v2, 0x4
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
iget v4, p0, Lcom/google/android/gms/internal/hr;->GK:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x1
iget v4, p0, Lcom/google/android/gms/internal/hr;->GO:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x2
iget v4, p0, Lcom/google/android/gms/internal/hr;->GP:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x3
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
aput-object v0, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
:try_end_38
.catchall {:try_start_2 .. :try_end_38} :catchall_3b
move-result-object v0
monitor-exit p0
return-object v0
:catchall_3b
move-exception v0
monitor-exit p0
throw v0
.end method
.method public trimToSize(I)V
.registers 6
:goto_0
monitor-enter p0
:try_start_1
iget v0, p0, Lcom/google/android/gms/internal/hr;->size:I
if-ltz v0, :cond_11
iget-object v0, p0, Lcom/google/android/gms/internal/hr;->GJ:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z
move-result v0
if-eqz v0, :cond_35
iget v0, p0, Lcom/google/android/gms/internal/hr;->size:I
if-eqz v0, :cond_35
:cond_11
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ".sizeOf() is reporting inconsistent results!"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_32
move-exception v0
monitor-exit p0
:try_end_34
.catchall {:try_start_1 .. :try_end_34} :catchall_32
throw v0
:cond_35
:try_start_35
iget v0, p0, Lcom/google/android/gms/internal/hr;->size:I
if-le v0, p1, :cond_41
iget-object v0, p0, Lcom/google/android/gms/internal/hr;->GJ:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z
move-result v0
if-eqz v0, :cond_43
:cond_41
monitor-exit p0
return-void
:cond_43
iget-object v0, p0, Lcom/google/android/gms/internal/hr;->GJ:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
iget-object v2, p0, Lcom/google/android/gms/internal/hr;->GJ:Ljava/util/LinkedHashMap;
invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
iget v2, p0, Lcom/google/android/gms/internal/hr;->size:I
invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/hr;->c(Ljava/lang/Object;Ljava/lang/Object;)I
move-result v3
sub-int/2addr v2, v3
iput v2, p0, Lcom/google/android/gms/internal/hr;->size:I
iget v2, p0, Lcom/google/android/gms/internal/hr;->GN:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/google/android/gms/internal/hr;->GN:I
monitor-exit p0
:try_end_70
.catchall {:try_start_35 .. :try_end_70} :catchall_32
const/4 v2, 0x1
const/4 v3, 0x0
invoke-virtual {p0, v2, v1, v0, v3}, Lcom/google/android/gms/internal/hr;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
goto :goto_0
.end method