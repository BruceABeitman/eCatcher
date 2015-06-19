.class public final Lcom/squareup/picasso/r;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/squareup/picasso/e;
.field final b:Ljava/util/LinkedHashMap;
.field private final c:I
.field private d:I
.field private e:I
.field private f:I
.field private g:I
.field private h:I
.method public constructor <init>(I)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-gtz p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Max size must be positive."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput p1, p0, Lcom/squareup/picasso/r;->c:I
new-instance v0, Ljava/util/LinkedHashMap;
const/4 v1, 0x0
const/high16 v2, 0x3f40
const/4 v3, 0x1
invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V
iput-object v0, p0, Lcom/squareup/picasso/r;->b:Ljava/util/LinkedHashMap;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-static {p1}, Lcom/squareup/picasso/am;->c(Landroid/content/Context;)I
move-result v0
invoke-direct {p0, v0}, Lcom/squareup/picasso/r;-><init>(I)V
return-void
.end method
.method private a(I)V
.registers 5
:goto_0
monitor-enter p0
:try_start_1
iget v0, p0, Lcom/squareup/picasso/r;->d:I
if-ltz v0, :cond_11
iget-object v0, p0, Lcom/squareup/picasso/r;->b:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z
move-result v0
if-eqz v0, :cond_35
iget v0, p0, Lcom/squareup/picasso/r;->d:I
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
iget v0, p0, Lcom/squareup/picasso/r;->d:I
if-le v0, p1, :cond_41
iget-object v0, p0, Lcom/squareup/picasso/r;->b:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z
move-result v0
if-eqz v0, :cond_43
:cond_41
monitor-exit p0
return-void
:cond_43
iget-object v0, p0, Lcom/squareup/picasso/r;->b:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/Bitmap;
iget-object v2, p0, Lcom/squareup/picasso/r;->b:Ljava/util/LinkedHashMap;
invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
iget v1, p0, Lcom/squareup/picasso/r;->d:I
invoke-static {v0}, Lcom/squareup/picasso/am;->a(Landroid/graphics/Bitmap;)I
move-result v0
sub-int v0, v1, v0
iput v0, p0, Lcom/squareup/picasso/r;->d:I
iget v0, p0, Lcom/squareup/picasso/r;->f:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/squareup/picasso/r;->f:I
monitor-exit p0
:try_end_75
.catchall {:try_start_35 .. :try_end_75} :catchall_32
goto :goto_0
.end method
.method public final declared-synchronized a()I
.registers 2
monitor-enter p0
:try_start_1
iget v0, p0, Lcom/squareup/picasso/r;->d:I
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final a(Ljava/lang/String;)Landroid/graphics/Bitmap;
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "key == null"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
monitor-enter p0
:try_start_b
iget-object v0, p0, Lcom/squareup/picasso/r;->b:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/Bitmap;
if-eqz v0, :cond_1d
iget v1, p0, Lcom/squareup/picasso/r;->g:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/squareup/picasso/r;->g:I
monitor-exit p0
:goto_1c
return-object v0
:cond_1d
iget v0, p0, Lcom/squareup/picasso/r;->h:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/squareup/picasso/r;->h:I
monitor-exit p0
:try_end_24
.catchall {:try_start_b .. :try_end_24} :catchall_26
const/4 v0, 0x0
goto :goto_1c
:catchall_26
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.registers 5
if-eqz p1, :cond_4
if-nez p2, :cond_c
:cond_4
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "key == null || bitmap == null"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
monitor-enter p0
:try_start_d
iget v0, p0, Lcom/squareup/picasso/r;->e:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/squareup/picasso/r;->e:I
iget v0, p0, Lcom/squareup/picasso/r;->d:I
invoke-static {p2}, Lcom/squareup/picasso/am;->a(Landroid/graphics/Bitmap;)I
move-result v1
add-int/2addr v0, v1
iput v0, p0, Lcom/squareup/picasso/r;->d:I
iget-object v0, p0, Lcom/squareup/picasso/r;->b:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/Bitmap;
if-eqz v0, :cond_30
iget v1, p0, Lcom/squareup/picasso/r;->d:I
invoke-static {v0}, Lcom/squareup/picasso/am;->a(Landroid/graphics/Bitmap;)I
move-result v0
sub-int v0, v1, v0
iput v0, p0, Lcom/squareup/picasso/r;->d:I
:cond_30
monitor-exit p0
:try_end_31
.catchall {:try_start_d .. :try_end_31} :catchall_37
iget v0, p0, Lcom/squareup/picasso/r;->c:I
invoke-direct {p0, v0}, Lcom/squareup/picasso/r;->a(I)V
return-void
:catchall_37
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized b()I
.registers 2
monitor-enter p0
:try_start_1
iget v0, p0, Lcom/squareup/picasso/r;->c:I
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method