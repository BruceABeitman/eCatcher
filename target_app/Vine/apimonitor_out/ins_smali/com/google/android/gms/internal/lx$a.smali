.class public final Lcom/google/android/gms/internal/lx$a;
.super Lcom/google/android/gms/internal/mb;
.field private static volatile amp:[Lcom/google/android/gms/internal/lx$a;
.field public amq:Lcom/google/android/gms/internal/lx$a$a;
.field public name:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/internal/mb;-><init>()V
invoke-virtual {p0}, Lcom/google/android/gms/internal/lx$a;->ns()Lcom/google/android/gms/internal/lx$a;
return-void
.end method
.method public static nr()[Lcom/google/android/gms/internal/lx$a;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/lx$a;->amp:[Lcom/google/android/gms/internal/lx$a;
if-nez v0, :cond_11
sget-object v1, Lcom/google/android/gms/internal/md;->amX:Ljava/lang/Object;
monitor-enter v1
:try_start_7
sget-object v0, Lcom/google/android/gms/internal/lx$a;->amp:[Lcom/google/android/gms/internal/lx$a;
if-nez v0, :cond_10
const/4 v0, 0x0
new-array v0, v0, [Lcom/google/android/gms/internal/lx$a;
sput-object v0, Lcom/google/android/gms/internal/lx$a;->amp:[Lcom/google/android/gms/internal/lx$a;
:cond_10
monitor-exit v1
:cond_11
:try_end_11
.catchall {:try_start_7 .. :try_end_11} :catchall_14
sget-object v0, Lcom/google/android/gms/internal/lx$a;->amp:[Lcom/google/android/gms/internal/lx$a;
return-object v0
:catchall_14
move-exception v0
:try_start_15
monitor-exit v1
:try_end_16
.catchall {:try_start_15 .. :try_end_16} :catchall_14
throw v0
.end method
.method public a(Lcom/google/android/gms/internal/ma;)V
.registers 4
const/4 v0, 0x1
iget-object v1, p0, Lcom/google/android/gms/internal/lx$a;->name:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ma;->b(ILjava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a;->amq:Lcom/google/android/gms/internal/lx$a$a;
if-eqz v0, :cond_10
const/4 v0, 0x2
iget-object v1, p0, Lcom/google/android/gms/internal/lx$a;->amq:Lcom/google/android/gms/internal/lx$a$a;
invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ma;->a(ILcom/google/android/gms/internal/mf;)V
:cond_10
invoke-super {p0, p1}, Lcom/google/android/gms/internal/mb;->a(Lcom/google/android/gms/internal/ma;)V
return-void
.end method
.method public synthetic b(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/mf;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lx$a;->r(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/lx$a;
move-result-object v0
return-object v0
.end method
.method protected c()I
.registers 4
invoke-super {p0}, Lcom/google/android/gms/internal/mb;->c()I
move-result v0
const/4 v1, 0x1
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a;->name:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/google/android/gms/internal/ma;->h(ILjava/lang/String;)I
move-result v1
add-int/2addr v0, v1
iget-object v1, p0, Lcom/google/android/gms/internal/lx$a;->amq:Lcom/google/android/gms/internal/lx$a$a;
if-eqz v1, :cond_18
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a;->amq:Lcom/google/android/gms/internal/lx$a$a;
invoke-static {v1, v2}, Lcom/google/android/gms/internal/ma;->b(ILcom/google/android/gms/internal/mf;)I
move-result v1
add-int/2addr v0, v1
:cond_18
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v1, 0x1
const/4 v0, 0x0
if-ne p1, p0, :cond_6
move v0, v1
:goto_5
:cond_5
return v0
:cond_6
instance-of v2, p1, Lcom/google/android/gms/internal/lx$a;
if-eqz v2, :cond_5
check-cast p1, Lcom/google/android/gms/internal/lx$a;
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a;->name:Ljava/lang/String;
if-nez v2, :cond_36
iget-object v2, p1, Lcom/google/android/gms/internal/lx$a;->name:Ljava/lang/String;
if-nez v2, :cond_5
:cond_14
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a;->amq:Lcom/google/android/gms/internal/lx$a$a;
if-nez v2, :cond_41
iget-object v2, p1, Lcom/google/android/gms/internal/lx$a;->amq:Lcom/google/android/gms/internal/lx$a$a;
if-nez v2, :cond_5
:cond_1c
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a;->amU:Ljava/util/List;
if-eqz v2, :cond_28
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a;->amU:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_4c
:cond_28
iget-object v2, p1, Lcom/google/android/gms/internal/lx$a;->amU:Ljava/util/List;
if-eqz v2, :cond_34
iget-object v2, p1, Lcom/google/android/gms/internal/lx$a;->amU:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_5
:cond_34
move v0, v1
goto :goto_5
:cond_36
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a;->name:Ljava/lang/String;
iget-object v3, p1, Lcom/google/android/gms/internal/lx$a;->name:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_14
goto :goto_5
:cond_41
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a;->amq:Lcom/google/android/gms/internal/lx$a$a;
iget-object v3, p1, Lcom/google/android/gms/internal/lx$a;->amq:Lcom/google/android/gms/internal/lx$a$a;
invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/lx$a$a;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_1c
goto :goto_5
:cond_4c
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a;->amU:Ljava/util/List;
iget-object v1, p1, Lcom/google/android/gms/internal/lx$a;->amU:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_5
.end method
.method public hashCode()I
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a;->name:Ljava/lang/String;
if-nez v0, :cond_20
move v0, v1
:goto_6
add-int/lit16 v0, v0, 0x20f
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a;->amq:Lcom/google/android/gms/internal/lx$a$a;
if-nez v0, :cond_27
move v0, v1
:goto_f
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a;->amU:Ljava/util/List;
if-eqz v2, :cond_1e
iget-object v2, p0, Lcom/google/android/gms/internal/lx$a;->amU:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_2e
:goto_1e
:cond_1e
add-int/2addr v0, v1
return v0
:cond_20
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a;->name:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_6
:cond_27
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a;->amq:Lcom/google/android/gms/internal/lx$a$a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/lx$a$a;->hashCode()I
move-result v0
goto :goto_f
:cond_2e
iget-object v1, p0, Lcom/google/android/gms/internal/lx$a;->amU:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->hashCode()I
move-result v1
goto :goto_1e
.end method
.method public ns()Lcom/google/android/gms/internal/lx$a;
.registers 3
const/4 v1, 0x0
const-string v0, ""
iput-object v0, p0, Lcom/google/android/gms/internal/lx$a;->name:Ljava/lang/String;
iput-object v1, p0, Lcom/google/android/gms/internal/lx$a;->amq:Lcom/google/android/gms/internal/lx$a$a;
iput-object v1, p0, Lcom/google/android/gms/internal/lx$a;->amU:Ljava/util/List;
const/4 v0, -0x1
iput v0, p0, Lcom/google/android/gms/internal/lx$a;->amY:I
return-object p0
.end method
.method public r(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/lx$a;
.registers 3
:goto_0
:cond_0
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I
move-result v0
sparse-switch v0, :sswitch_data_26
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/lx$a;->a(Lcom/google/android/gms/internal/lz;I)Z
move-result v0
if-nez v0, :cond_0
:sswitch_d
return-object p0
:sswitch_e
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/lx$a;->name:Ljava/lang/String;
goto :goto_0
:sswitch_15
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a;->amq:Lcom/google/android/gms/internal/lx$a$a;
if-nez v0, :cond_20
new-instance v0, Lcom/google/android/gms/internal/lx$a$a;
invoke-direct {v0}, Lcom/google/android/gms/internal/lx$a$a;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/lx$a;->amq:Lcom/google/android/gms/internal/lx$a$a;
:cond_20
iget-object v0, p0, Lcom/google/android/gms/internal/lx$a;->amq:Lcom/google/android/gms/internal/lx$a$a;
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->a(Lcom/google/android/gms/internal/mf;)V
goto :goto_0
:sswitch_data_26
.sparse-switch
0x0 -> :sswitch_d
0xa -> :sswitch_e
0x12 -> :sswitch_15
.end sparse-switch
.end method