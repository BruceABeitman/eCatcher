.class public Landroid/support/v4/c/c;
.super Ljava/lang/Object;
.source "LruCache.java"
.field private final a:Ljava/util/LinkedHashMap;
.field private b:I
.field private c:I
.field private d:I
.field private e:I
.field private f:I
.field private g:I
.field private final h:I
.field private final i:I
.method public constructor <init>()V
.registers 2
const/16 v0, 0x200
invoke-direct {p0, v0}, Landroid/support/v4/c/c;-><init>(I)V
return-void
.end method
.method private constructor <init>(I)V
.registers 5
const v0, 0x7fffffff
const/16 v1, 0x200
const/4 v2, 0x0
invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/c/c;-><init>(III)V
return-void
.end method
.method public constructor <init>(III)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-gtz p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "maxSize <= 0"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
if-gtz p2, :cond_17
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "maxEntries <= 0"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_17
iput p3, p0, Landroid/support/v4/c/c;->h:I
iput p1, p0, Landroid/support/v4/c/c;->c:I
iput p2, p0, Landroid/support/v4/c/c;->i:I
new-instance v0, Ljava/util/LinkedHashMap;
const/4 v1, 0x0
const/high16 v2, 0x3f40
const/4 v3, 0x1
invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V
iput-object v0, p0, Landroid/support/v4/c/c;->a:Ljava/util/LinkedHashMap;
return-void
.end method
.method private a(I)V
.registers 6
monitor-enter p0
:try_start_1
iget v0, p0, Landroid/support/v4/c/c;->b:I
if-gt v0, p1, :cond_7
monitor-exit p0
:goto_6
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_3f
return-void
:cond_7
monitor-exit p0
const/4 v0, 0x0
move v1, v0
:goto_a
monitor-enter p0
:try_start_b
iget v0, p0, Landroid/support/v4/c/c;->b:I
if-ltz v0, :cond_1b
iget-object v0, p0, Landroid/support/v4/c/c;->a:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z
move-result v0
if-eqz v0, :cond_42
iget v0, p0, Landroid/support/v4/c/c;->b:I
if-eqz v0, :cond_42
:cond_1b
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
:try_end_3c
.catchall {:try_start_b .. :try_end_3c} :catchall_3c
:catchall_3c
move-exception v0
monitor-exit p0
throw v0
:catchall_3f
move-exception v0
monitor-exit p0
throw v0
:cond_42
:try_start_42
iget v0, p0, Landroid/support/v4/c/c;->h:I
if-lt v1, v0, :cond_4a
iget v0, p0, Landroid/support/v4/c/c;->b:I
if-le v0, p1, :cond_52
:cond_4a
iget-object v0, p0, Landroid/support/v4/c/c;->a:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z
move-result v0
if-eqz v0, :cond_54
:cond_52
monitor-exit p0
goto :goto_6
:cond_54
iget-object v0, p0, Landroid/support/v4/c/c;->a:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v2
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
iget-object v3, p0, Landroid/support/v4/c/c;->a:Ljava/util/LinkedHashMap;
invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
iget v3, p0, Landroid/support/v4/c/c;->b:I
invoke-direct {p0, v2, v0}, Landroid/support/v4/c/c;->b(Ljava/lang/Object;Ljava/lang/Object;)I
move-result v0
sub-int v0, v3, v0
iput v0, p0, Landroid/support/v4/c/c;->b:I
iget v0, p0, Landroid/support/v4/c/c;->b:I
iget v0, p0, Landroid/support/v4/c/c;->e:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Landroid/support/v4/c/c;->e:I
add-int/lit8 v0, v1, 0x1
monitor-exit p0
:try_end_86
.catchall {:try_start_42 .. :try_end_86} :catchall_3c
move v1, v0
goto :goto_a
.end method
.method private a(II)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v4/c/c;->a(I)V
invoke-direct {p0, p2}, Landroid/support/v4/c/c;->b(I)V
return-void
.end method
.method private b(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 6
invoke-virtual {p0, p2}, Landroid/support/v4/c/c;->c(Ljava/lang/Object;)I
move-result v0
if-gez v0, :cond_25
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Negative size: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
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
:cond_25
return v0
.end method
.method private b(I)V
.registers 6
monitor-enter p0
:try_start_1
iget-object v0, p0, Landroid/support/v4/c/c;->a:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I
move-result v0
if-gt v0, p1, :cond_b
monitor-exit p0
:goto_a
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_28
return-void
:cond_b
monitor-exit p0
const/4 v0, 0x0
move v1, v0
:goto_e
monitor-enter p0
:try_start_f
iget v0, p0, Landroid/support/v4/c/c;->h:I
if-lt v1, v0, :cond_1b
iget-object v0, p0, Landroid/support/v4/c/c;->a:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I
move-result v0
if-le v0, p1, :cond_23
:cond_1b
iget-object v0, p0, Landroid/support/v4/c/c;->a:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z
move-result v0
if-eqz v0, :cond_2b
:cond_23
monitor-exit p0
:try_end_24
.catchall {:try_start_f .. :try_end_24} :catchall_25
goto :goto_a
:catchall_25
move-exception v0
monitor-exit p0
throw v0
:catchall_28
move-exception v0
monitor-exit p0
throw v0
:try_start_2b
:cond_2b
iget-object v0, p0, Landroid/support/v4/c/c;->a:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v2
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
iget-object v3, p0, Landroid/support/v4/c/c;->a:Ljava/util/LinkedHashMap;
invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
iget v3, p0, Landroid/support/v4/c/c;->b:I
invoke-direct {p0, v2, v0}, Landroid/support/v4/c/c;->b(Ljava/lang/Object;Ljava/lang/Object;)I
move-result v0
sub-int v0, v3, v0
iput v0, p0, Landroid/support/v4/c/c;->b:I
iget v0, p0, Landroid/support/v4/c/c;->b:I
iget v0, p0, Landroid/support/v4/c/c;->e:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Landroid/support/v4/c/c;->e:I
add-int/lit8 v0, v1, 0x1
monitor-exit p0
:try_end_5d
.catchall {:try_start_2b .. :try_end_5d} :catchall_25
move v1, v0
goto :goto_e
.end method
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "key == null"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
monitor-enter p0
:try_start_b
iget-object v0, p0, Landroid/support/v4/c/c;->a:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_1b
iget v1, p0, Landroid/support/v4/c/c;->f:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Landroid/support/v4/c/c;->f:I
monitor-exit p0
:goto_1a
return-object v0
:cond_1b
iget v0, p0, Landroid/support/v4/c/c;->g:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Landroid/support/v4/c/c;->g:I
monitor-exit p0
:try_end_22
.catchall {:try_start_b .. :try_end_22} :catchall_24
const/4 v0, 0x0
goto :goto_1a
:catchall_24
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
iget v0, p0, Landroid/support/v4/c/c;->d:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Landroid/support/v4/c/c;->d:I
iget v0, p0, Landroid/support/v4/c/c;->b:I
invoke-direct {p0, p1, p2}, Landroid/support/v4/c/c;->b(Ljava/lang/Object;Ljava/lang/Object;)I
move-result v1
add-int/2addr v0, v1
iput v0, p0, Landroid/support/v4/c/c;->b:I
iget-object v0, p0, Landroid/support/v4/c/c;->a:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_2d
iget v1, p0, Landroid/support/v4/c/c;->b:I
invoke-direct {p0, p1, v0}, Landroid/support/v4/c/c;->b(Ljava/lang/Object;Ljava/lang/Object;)I
move-result v2
sub-int/2addr v1, v2
iput v1, p0, Landroid/support/v4/c/c;->b:I
:cond_2d
iget v1, p0, Landroid/support/v4/c/c;->b:I
monitor-exit p0
:try_end_30
.catchall {:try_start_d .. :try_end_30} :catchall_38
iget v1, p0, Landroid/support/v4/c/c;->c:I
iget v2, p0, Landroid/support/v4/c/c;->i:I
invoke-direct {p0, v1, v2}, Landroid/support/v4/c/c;->a(II)V
return-object v0
:catchall_38
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final a()V
.registers 2
const/4 v0, -0x1
invoke-direct {p0, v0}, Landroid/support/v4/c/c;->a(I)V
return-void
.end method
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
.registers 5
if-nez p1, :cond_a
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "key == null"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
monitor-enter p0
:try_start_b
iget-object v0, p0, Landroid/support/v4/c/c;->a:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_1e
iget v1, p0, Landroid/support/v4/c/c;->b:I
invoke-direct {p0, p1, v0}, Landroid/support/v4/c/c;->b(Ljava/lang/Object;Ljava/lang/Object;)I
move-result v2
sub-int/2addr v1, v2
iput v1, p0, Landroid/support/v4/c/c;->b:I
iget v1, p0, Landroid/support/v4/c/c;->b:I
:cond_1e
monitor-exit p0
:try_end_1f
.catchall {:try_start_b .. :try_end_1f} :catchall_20
return-object v0
:catchall_20
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected c(Ljava/lang/Object;)I
.registers 3
const/4 v0, 0x1
return v0
.end method
.method public final declared-synchronized toString()Ljava/lang/String;
.registers 6
const/4 v0, 0x0
monitor-enter p0
:try_start_2
iget v1, p0, Landroid/support/v4/c/c;->f:I
iget v2, p0, Landroid/support/v4/c/c;->g:I
add-int/2addr v1, v2
if-eqz v1, :cond_e
iget v0, p0, Landroid/support/v4/c/c;->f:I
mul-int/lit8 v0, v0, 0x64
div-int/2addr v0, v1
:cond_e
const-string v1, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"
const/4 v2, 0x4
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
iget v4, p0, Landroid/support/v4/c/c;->c:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x1
iget v4, p0, Landroid/support/v4/c/c;->f:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x2
iget v4, p0, Landroid/support/v4/c/c;->g:I
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