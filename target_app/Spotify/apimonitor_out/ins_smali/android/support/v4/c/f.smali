.class public Landroid/support/v4/c/f;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Ljava/util/LinkedHashMap;
.field private b:I
.field private c:I
.field private d:I
.field private e:I
.field private f:I
.field private g:I
.method public constructor <init>()V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/high16 v0, 0x8
iput v0, p0, Landroid/support/v4/c/f;->c:I
new-instance v0, Ljava/util/LinkedHashMap;
const/4 v1, 0x0
const/high16 v2, 0x3f40
const/4 v3, 0x1
invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V
iput-object v0, p0, Landroid/support/v4/c/f;->a:Ljava/util/LinkedHashMap;
return-void
.end method
.method private a(I)V
.registers 5
:goto_0
monitor-enter p0
:try_start_1
iget v0, p0, Landroid/support/v4/c/f;->b:I
if-ltz v0, :cond_11
iget-object v0, p0, Landroid/support/v4/c/f;->a:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z
move-result v0
if-eqz v0, :cond_35
iget v0, p0, Landroid/support/v4/c/f;->b:I
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
:try_end_32
.catchall {:try_start_1 .. :try_end_32} :catchall_32
move-exception v0
monitor-exit p0
throw v0
:cond_35
:try_start_35
iget v0, p0, Landroid/support/v4/c/f;->b:I
if-le v0, p1, :cond_41
iget-object v0, p0, Landroid/support/v4/c/f;->a:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z
move-result v0
if-eqz v0, :cond_43
:cond_41
monitor-exit p0
return-void
:cond_43
iget-object v0, p0, Landroid/support/v4/c/f;->a:Ljava/util/LinkedHashMap;
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
iget-object v2, p0, Landroid/support/v4/c/f;->a:Ljava/util/LinkedHashMap;
invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
iget v2, p0, Landroid/support/v4/c/f;->b:I
invoke-direct {p0, v1, v0}, Landroid/support/v4/c/f;->b(Ljava/lang/Object;Ljava/lang/Object;)I
move-result v0
sub-int v0, v2, v0
iput v0, p0, Landroid/support/v4/c/f;->b:I
iget v0, p0, Landroid/support/v4/c/f;->e:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Landroid/support/v4/c/f;->e:I
monitor-exit p0
:try_end_71
.catchall {:try_start_35 .. :try_end_71} :catchall_32
goto :goto_0
.end method
.method private b(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 6
invoke-virtual {p0, p2}, Landroid/support/v4/c/f;->b(Ljava/lang/Object;)I
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
iget-object v0, p0, Landroid/support/v4/c/f;->a:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_1b
iget v1, p0, Landroid/support/v4/c/f;->f:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Landroid/support/v4/c/f;->f:I
monitor-exit p0
:goto_1a
return-object v0
:cond_1b
iget v0, p0, Landroid/support/v4/c/f;->g:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Landroid/support/v4/c/f;->g:I
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
if-nez p1, :cond_a
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "key == null || value == null"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
monitor-enter p0
:try_start_b
iget v0, p0, Landroid/support/v4/c/f;->d:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Landroid/support/v4/c/f;->d:I
iget v0, p0, Landroid/support/v4/c/f;->b:I
invoke-direct {p0, p1, p2}, Landroid/support/v4/c/f;->b(Ljava/lang/Object;Ljava/lang/Object;)I
move-result v1
add-int/2addr v0, v1
iput v0, p0, Landroid/support/v4/c/f;->b:I
iget-object v0, p0, Landroid/support/v4/c/f;->a:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_2b
iget v1, p0, Landroid/support/v4/c/f;->b:I
invoke-direct {p0, p1, v0}, Landroid/support/v4/c/f;->b(Ljava/lang/Object;Ljava/lang/Object;)I
move-result v2
sub-int/2addr v1, v2
iput v1, p0, Landroid/support/v4/c/f;->b:I
:cond_2b
monitor-exit p0
:try_end_2c
.catchall {:try_start_b .. :try_end_2c} :catchall_32
iget v1, p0, Landroid/support/v4/c/f;->c:I
invoke-direct {p0, v1}, Landroid/support/v4/c/f;->a(I)V
return-object v0
:catchall_32
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final a()V
.registers 2
const/4 v0, -0x1
invoke-direct {p0, v0}, Landroid/support/v4/c/f;->a(I)V
return-void
.end method
.method protected b(Ljava/lang/Object;)I
.registers 3
const/4 v0, 0x1
return v0
.end method
.method public final declared-synchronized toString()Ljava/lang/String;
.registers 6
const/4 v0, 0x0
monitor-enter p0
:try_start_2
iget v1, p0, Landroid/support/v4/c/f;->f:I
iget v2, p0, Landroid/support/v4/c/f;->g:I
add-int/2addr v1, v2
if-eqz v1, :cond_e
iget v0, p0, Landroid/support/v4/c/f;->f:I
mul-int/lit8 v0, v0, 0x64
div-int/2addr v0, v1
:cond_e
const-string v1, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"
const/4 v2, 0x4
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
iget v4, p0, Landroid/support/v4/c/f;->c:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x1
iget v4, p0, Landroid/support/v4/c/f;->f:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x2
iget v4, p0, Landroid/support/v4/c/f;->g:I
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