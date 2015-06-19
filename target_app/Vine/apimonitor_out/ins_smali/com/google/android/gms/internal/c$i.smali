.class public final Lcom/google/android/gms/internal/c$i;
.super Lcom/google/android/gms/internal/mb;
.field private static volatile fG:[Lcom/google/android/gms/internal/c$i;
.field public fH:Lcom/google/android/gms/internal/d$a;
.field public fI:Lcom/google/android/gms/internal/c$d;
.field public name:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/internal/mb;-><init>()V
invoke-virtual {p0}, Lcom/google/android/gms/internal/c$i;->p()Lcom/google/android/gms/internal/c$i;
return-void
.end method
.method public static o()[Lcom/google/android/gms/internal/c$i;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/c$i;->fG:[Lcom/google/android/gms/internal/c$i;
if-nez v0, :cond_11
sget-object v1, Lcom/google/android/gms/internal/md;->amX:Ljava/lang/Object;
monitor-enter v1
:try_start_7
sget-object v0, Lcom/google/android/gms/internal/c$i;->fG:[Lcom/google/android/gms/internal/c$i;
if-nez v0, :cond_10
const/4 v0, 0x0
new-array v0, v0, [Lcom/google/android/gms/internal/c$i;
sput-object v0, Lcom/google/android/gms/internal/c$i;->fG:[Lcom/google/android/gms/internal/c$i;
:cond_10
monitor-exit v1
:cond_11
:try_end_11
.catchall {:try_start_7 .. :try_end_11} :catchall_14
sget-object v0, Lcom/google/android/gms/internal/c$i;->fG:[Lcom/google/android/gms/internal/c$i;
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
iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;
const-string v1, ""
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_10
const/4 v0, 0x1
iget-object v1, p0, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ma;->b(ILjava/lang/String;)V
:cond_10
iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->fH:Lcom/google/android/gms/internal/d$a;
if-eqz v0, :cond_1a
const/4 v0, 0x2
iget-object v1, p0, Lcom/google/android/gms/internal/c$i;->fH:Lcom/google/android/gms/internal/d$a;
invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ma;->a(ILcom/google/android/gms/internal/mf;)V
:cond_1a
iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;
if-eqz v0, :cond_24
const/4 v0, 0x3
iget-object v1, p0, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;
invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ma;->a(ILcom/google/android/gms/internal/mf;)V
:cond_24
invoke-super {p0, p1}, Lcom/google/android/gms/internal/mb;->a(Lcom/google/android/gms/internal/ma;)V
return-void
.end method
.method public synthetic b(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/mf;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$i;->j(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/c$i;
move-result-object v0
return-object v0
.end method
.method protected c()I
.registers 4
invoke-super {p0}, Lcom/google/android/gms/internal/mb;->c()I
move-result v0
iget-object v1, p0, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;
const-string v2, ""
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_16
const/4 v1, 0x1
iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/google/android/gms/internal/ma;->h(ILjava/lang/String;)I
move-result v1
add-int/2addr v0, v1
:cond_16
iget-object v1, p0, Lcom/google/android/gms/internal/c$i;->fH:Lcom/google/android/gms/internal/d$a;
if-eqz v1, :cond_22
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->fH:Lcom/google/android/gms/internal/d$a;
invoke-static {v1, v2}, Lcom/google/android/gms/internal/ma;->b(ILcom/google/android/gms/internal/mf;)I
move-result v1
add-int/2addr v0, v1
:cond_22
iget-object v1, p0, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;
if-eqz v1, :cond_2e
const/4 v1, 0x3
iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;
invoke-static {v1, v2}, Lcom/google/android/gms/internal/ma;->b(ILcom/google/android/gms/internal/mf;)I
move-result v1
add-int/2addr v0, v1
:cond_2e
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
instance-of v2, p1, Lcom/google/android/gms/internal/c$i;
if-eqz v2, :cond_5
check-cast p1, Lcom/google/android/gms/internal/c$i;
iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;
if-nez v2, :cond_3e
iget-object v2, p1, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;
if-nez v2, :cond_5
:cond_14
iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->fH:Lcom/google/android/gms/internal/d$a;
if-nez v2, :cond_49
iget-object v2, p1, Lcom/google/android/gms/internal/c$i;->fH:Lcom/google/android/gms/internal/d$a;
if-nez v2, :cond_5
:cond_1c
iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;
if-nez v2, :cond_54
iget-object v2, p1, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;
if-nez v2, :cond_5
:cond_24
iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->amU:Ljava/util/List;
if-eqz v2, :cond_30
iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->amU:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_5f
:cond_30
iget-object v2, p1, Lcom/google/android/gms/internal/c$i;->amU:Ljava/util/List;
if-eqz v2, :cond_3c
iget-object v2, p1, Lcom/google/android/gms/internal/c$i;->amU:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_5
:cond_3c
move v0, v1
goto :goto_5
:cond_3e
iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;
iget-object v3, p1, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_14
goto :goto_5
:cond_49
iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->fH:Lcom/google/android/gms/internal/d$a;
iget-object v3, p1, Lcom/google/android/gms/internal/c$i;->fH:Lcom/google/android/gms/internal/d$a;
invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/d$a;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_1c
goto :goto_5
:cond_54
iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;
iget-object v3, p1, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;
invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/c$d;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_24
goto :goto_5
:cond_5f
iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->amU:Ljava/util/List;
iget-object v1, p1, Lcom/google/android/gms/internal/c$i;->amU:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_5
.end method
.method public hashCode()I
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;
if-nez v0, :cond_28
move v0, v1
:goto_6
add-int/lit16 v0, v0, 0x20f
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->fH:Lcom/google/android/gms/internal/d$a;
if-nez v0, :cond_2f
move v0, v1
:goto_f
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;
if-nez v0, :cond_36
move v0, v1
:goto_17
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->amU:Ljava/util/List;
if-eqz v2, :cond_26
iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->amU:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_3d
:goto_26
:cond_26
add-int/2addr v0, v1
return v0
:cond_28
iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_6
:cond_2f
iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->fH:Lcom/google/android/gms/internal/d$a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/d$a;->hashCode()I
move-result v0
goto :goto_f
:cond_36
iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;
invoke-virtual {v0}, Lcom/google/android/gms/internal/c$d;->hashCode()I
move-result v0
goto :goto_17
:cond_3d
iget-object v1, p0, Lcom/google/android/gms/internal/c$i;->amU:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->hashCode()I
move-result v1
goto :goto_26
.end method
.method public j(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/c$i;
.registers 3
:goto_0
:cond_0
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I
move-result v0
sparse-switch v0, :sswitch_data_38
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$i;->a(Lcom/google/android/gms/internal/lz;I)Z
move-result v0
if-nez v0, :cond_0
:sswitch_d
return-object p0
:sswitch_e
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;
goto :goto_0
:sswitch_15
iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->fH:Lcom/google/android/gms/internal/d$a;
if-nez v0, :cond_20
new-instance v0, Lcom/google/android/gms/internal/d$a;
invoke-direct {v0}, Lcom/google/android/gms/internal/d$a;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/c$i;->fH:Lcom/google/android/gms/internal/d$a;
:cond_20
iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->fH:Lcom/google/android/gms/internal/d$a;
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->a(Lcom/google/android/gms/internal/mf;)V
goto :goto_0
:sswitch_26
iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;
if-nez v0, :cond_31
new-instance v0, Lcom/google/android/gms/internal/c$d;
invoke-direct {v0}, Lcom/google/android/gms/internal/c$d;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;
:cond_31
iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->a(Lcom/google/android/gms/internal/mf;)V
goto :goto_0
nop
:sswitch_data_38
.sparse-switch
0x0 -> :sswitch_d
0xa -> :sswitch_e
0x12 -> :sswitch_15
0x1a -> :sswitch_26
.end sparse-switch
.end method
.method public p()Lcom/google/android/gms/internal/c$i;
.registers 3
const/4 v1, 0x0
const-string v0, ""
iput-object v0, p0, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;
iput-object v1, p0, Lcom/google/android/gms/internal/c$i;->fH:Lcom/google/android/gms/internal/d$a;
iput-object v1, p0, Lcom/google/android/gms/internal/c$i;->fI:Lcom/google/android/gms/internal/c$d;
iput-object v1, p0, Lcom/google/android/gms/internal/c$i;->amU:Ljava/util/List;
const/4 v0, -0x1
iput v0, p0, Lcom/google/android/gms/internal/c$i;->amY:I
return-object p0
.end method