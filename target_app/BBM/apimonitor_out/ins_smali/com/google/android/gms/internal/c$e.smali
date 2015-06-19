.class public final Lcom/google/android/gms/internal/c$e;
.super Lcom/google/android/gms/internal/ka;
.field private static volatile ff:[Lcom/google/android/gms/internal/c$e;
.field public key:I
.field public value:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/internal/ka;-><init>()V
invoke-virtual {p0}, Lcom/google/android/gms/internal/c$e;->j()Lcom/google/android/gms/internal/c$e;
return-void
.end method
.method public static i()[Lcom/google/android/gms/internal/c$e;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/c$e;->ff:[Lcom/google/android/gms/internal/c$e;
if-nez v0, :cond_11
sget-object v1, Lcom/google/android/gms/internal/kc;->aah:Ljava/lang/Object;
monitor-enter v1
:try_start_7
sget-object v0, Lcom/google/android/gms/internal/c$e;->ff:[Lcom/google/android/gms/internal/c$e;
if-nez v0, :cond_10
const/4 v0, 0x0
new-array v0, v0, [Lcom/google/android/gms/internal/c$e;
sput-object v0, Lcom/google/android/gms/internal/c$e;->ff:[Lcom/google/android/gms/internal/c$e;
:cond_10
monitor-exit v1
:try_end_11
.catchall {:try_start_7 .. :try_end_11} :catchall_14
:cond_11
sget-object v0, Lcom/google/android/gms/internal/c$e;->ff:[Lcom/google/android/gms/internal/c$e;
return-object v0
:catchall_14
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(Lcom/google/android/gms/internal/jz;)V
.registers 4
const/4 v0, 0x1
iget v1, p0, Lcom/google/android/gms/internal/c$e;->key:I
invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/jz;->f(II)V
const/4 v0, 0x2
iget v1, p0, Lcom/google/android/gms/internal/c$e;->value:I
invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/jz;->f(II)V
invoke-super {p0, p1}, Lcom/google/android/gms/internal/ka;->a(Lcom/google/android/gms/internal/jz;)V
return-void
.end method
.method public final synthetic b(Lcom/google/android/gms/internal/jy;)Lcom/google/android/gms/internal/ke;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$e;->f(Lcom/google/android/gms/internal/jy;)Lcom/google/android/gms/internal/c$e;
move-result-object v0
return-object v0
.end method
.method public final c()I
.registers 4
invoke-super {p0}, Lcom/google/android/gms/internal/ka;->c()I
move-result v0
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/internal/c$e;->key:I
invoke-static {v1, v2}, Lcom/google/android/gms/internal/jz;->g(II)I
move-result v1
add-int/2addr v0, v1
const/4 v1, 0x2
iget v2, p0, Lcom/google/android/gms/internal/c$e;->value:I
invoke-static {v1, v2}, Lcom/google/android/gms/internal/jz;->g(II)I
move-result v1
add-int/2addr v0, v1
iput v0, p0, Lcom/google/android/gms/internal/c$e;->DY:I
return v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p1, p0, :cond_5
:goto_4
:cond_4
return v0
:cond_5
instance-of v2, p1, Lcom/google/android/gms/internal/c$e;
if-nez v2, :cond_b
move v0, v1
goto :goto_4
:cond_b
check-cast p1, Lcom/google/android/gms/internal/c$e;
iget v2, p0, Lcom/google/android/gms/internal/c$e;->key:I
iget v3, p1, Lcom/google/android/gms/internal/c$e;->key:I
if-eq v2, v3, :cond_15
move v0, v1
goto :goto_4
:cond_15
iget v2, p0, Lcom/google/android/gms/internal/c$e;->value:I
iget v3, p1, Lcom/google/android/gms/internal/c$e;->value:I
if-eq v2, v3, :cond_1d
move v0, v1
goto :goto_4
:cond_1d
iget-object v2, p0, Lcom/google/android/gms/internal/c$e;->aae:Ljava/util/List;
if-eqz v2, :cond_29
iget-object v2, p0, Lcom/google/android/gms/internal/c$e;->aae:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_37
:cond_29
iget-object v2, p1, Lcom/google/android/gms/internal/c$e;->aae:Ljava/util/List;
if-eqz v2, :cond_4
iget-object v2, p1, Lcom/google/android/gms/internal/c$e;->aae:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto :goto_4
:cond_37
iget-object v0, p0, Lcom/google/android/gms/internal/c$e;->aae:Ljava/util/List;
iget-object v1, p1, Lcom/google/android/gms/internal/c$e;->aae:Ljava/util/List;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_4
.end method
.method public final f(Lcom/google/android/gms/internal/jy;)Lcom/google/android/gms/internal/c$e;
.registers 3
:goto_0
:cond_0
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->ky()I
move-result v0
sparse-switch v0, :sswitch_data_1c
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$e;->a(Lcom/google/android/gms/internal/jy;I)Z
move-result v0
if-nez v0, :cond_0
:sswitch_d
return-object p0
:sswitch_e
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kB()I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/c$e;->key:I
goto :goto_0
:sswitch_15
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kB()I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/c$e;->value:I
goto :goto_0
:sswitch_data_1c
.sparse-switch
0x0 -> :sswitch_d
0x8 -> :sswitch_e
0x10 -> :sswitch_15
.end sparse-switch
.end method
.method public final hashCode()I
.registers 3
iget v0, p0, Lcom/google/android/gms/internal/c$e;->key:I
add-int/lit16 v0, v0, 0x20f
mul-int/lit8 v0, v0, 0x1f
iget v1, p0, Lcom/google/android/gms/internal/c$e;->value:I
add-int/2addr v0, v1
mul-int/lit8 v1, v0, 0x1f
iget-object v0, p0, Lcom/google/android/gms/internal/c$e;->aae:Ljava/util/List;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/google/android/gms/internal/c$e;->aae:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_1a
:cond_17
const/4 v0, 0x0
:goto_18
add-int/2addr v0, v1
return v0
:cond_1a
iget-object v0, p0, Lcom/google/android/gms/internal/c$e;->aae:Ljava/util/List;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
goto :goto_18
.end method
.method public final j()Lcom/google/android/gms/internal/c$e;
.registers 2
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/internal/c$e;->key:I
iput v0, p0, Lcom/google/android/gms/internal/c$e;->value:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/c$e;->aae:Ljava/util/List;
const/4 v0, -0x1
iput v0, p0, Lcom/google/android/gms/internal/c$e;->DY:I
return-object p0
.end method