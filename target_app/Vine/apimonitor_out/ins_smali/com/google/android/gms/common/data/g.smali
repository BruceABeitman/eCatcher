.class public abstract Lcom/google/android/gms/common/data/g;
.super Lcom/google/android/gms/common/data/DataBuffer;
.field private ER:Z
.field private ES:Ljava/util/ArrayList;
.method protected constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/DataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/common/data/g;->ER:Z
return-void
.end method
.method private eV()V
.registers 7
const/4 v0, 0x1
monitor-enter p0
:try_start_2
iget-boolean v1, p0, Lcom/google/android/gms/common/data/g;->ER:Z
if-nez v1, :cond_57
iget-object v1, p0, Lcom/google/android/gms/common/data/g;->DD:Lcom/google/android/gms/common/data/DataHolder;
invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I
move-result v3
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Lcom/google/android/gms/common/data/g;->ES:Ljava/util/ArrayList;
if-lez v3, :cond_54
iget-object v1, p0, Lcom/google/android/gms/common/data/g;->ES:Ljava/util/ArrayList;
const/4 v2, 0x0
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {p0}, Lcom/google/android/gms/common/data/g;->eU()Ljava/lang/String;
move-result-object v4
iget-object v1, p0, Lcom/google/android/gms/common/data/g;->DD:Lcom/google/android/gms/common/data/DataHolder;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->ae(I)I
move-result v1
iget-object v2, p0, Lcom/google/android/gms/common/data/g;->DD:Lcom/google/android/gms/common/data/DataHolder;
const/4 v5, 0x0
invoke-virtual {v2, v4, v5, v1}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;
move-result-object v1
move v2, v0
:goto_32
if-ge v2, v3, :cond_54
iget-object v0, p0, Lcom/google/android/gms/common/data/g;->DD:Lcom/google/android/gms/common/data/DataHolder;
invoke-virtual {v0, v2}, Lcom/google/android/gms/common/data/DataHolder;->ae(I)I
move-result v0
iget-object v5, p0, Lcom/google/android/gms/common/data/g;->DD:Lcom/google/android/gms/common/data/DataHolder;
invoke-virtual {v5, v4, v2, v0}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_5c
iget-object v1, p0, Lcom/google/android/gms/common/data/g;->ES:Ljava/util/ArrayList;
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:goto_4f
add-int/lit8 v1, v2, 0x1
move v2, v1
move-object v1, v0
goto :goto_32
:cond_54
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/common/data/g;->ER:Z
:cond_57
monitor-exit p0
return-void
:catchall_59
move-exception v0
monitor-exit p0
:try_end_5b
.catchall {:try_start_2 .. :try_end_5b} :catchall_59
throw v0
:cond_5c
move-object v0, v1
goto :goto_4f
.end method
.method  ah(I)I
.registers 5
if-ltz p1, :cond_a
iget-object v0, p0, Lcom/google/android/gms/common/data/g;->ES:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lt p1, v0, :cond_29
:cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Position "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " is out of bounds for this buffer"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_29
iget-object v0, p0, Lcom/google/android/gms/common/data/g;->ES:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
return v0
.end method
.method protected ai(I)I
.registers 8
const/4 v1, 0x0
if-ltz p1, :cond_b
iget-object v0, p0, Lcom/google/android/gms/common/data/g;->ES:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ne p1, v0, :cond_d
:cond_b
move v0, v1
:cond_c
:goto_c
return v0
:cond_d
iget-object v0, p0, Lcom/google/android/gms/common/data/g;->ES:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
if-ne p1, v0, :cond_48
iget-object v0, p0, Lcom/google/android/gms/common/data/g;->DD:Lcom/google/android/gms/common/data/DataHolder;
invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I
move-result v2
iget-object v0, p0, Lcom/google/android/gms/common/data/g;->ES:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
sub-int v0, v2, v0
:goto_2b
const/4 v2, 0x1
if-ne v0, v2, :cond_c
invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/g;->ah(I)I
move-result v2
iget-object v3, p0, Lcom/google/android/gms/common/data/g;->DD:Lcom/google/android/gms/common/data/DataHolder;
invoke-virtual {v3, v2}, Lcom/google/android/gms/common/data/DataHolder;->ae(I)I
move-result v3
invoke-virtual {p0}, Lcom/google/android/gms/common/data/g;->eW()Ljava/lang/String;
move-result-object v4
if-eqz v4, :cond_c
iget-object v5, p0, Lcom/google/android/gms/common/data/g;->DD:Lcom/google/android/gms/common/data/DataHolder;
invoke-virtual {v5, v4, v2, v3}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;
move-result-object v2
if-nez v2, :cond_c
move v0, v1
goto :goto_c
:cond_48
iget-object v0, p0, Lcom/google/android/gms/common/data/g;->ES:Ljava/util/ArrayList;
add-int/lit8 v2, p1, 0x1
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v2
iget-object v0, p0, Lcom/google/android/gms/common/data/g;->ES:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
sub-int v0, v2, v0
goto :goto_2b
.end method
.method protected abstract c(II)Ljava/lang/Object;
.end method
.method protected abstract eU()Ljava/lang/String;
.end method
.method protected eW()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public final get(I)Ljava/lang/Object;
.registers 4
invoke-direct {p0}, Lcom/google/android/gms/common/data/g;->eV()V
invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/g;->ah(I)I
move-result v0
invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/g;->ai(I)I
move-result v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/common/data/g;->c(II)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getCount()I
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/common/data/g;->eV()V
iget-object v0, p0, Lcom/google/android/gms/common/data/g;->ES:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method