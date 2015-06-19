.class public final Lcom/google/android/gms/internal/c$a;
.super Lcom/google/android/gms/internal/mb;
.field public eE:I
.field public eF:I
.field public level:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/internal/mb;-><init>()V
invoke-virtual {p0}, Lcom/google/android/gms/internal/c$a;->b()Lcom/google/android/gms/internal/c$a;
return-void
.end method
.method public a(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/c$a;
.registers 3
:goto_0
:cond_0
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I
move-result v0
sparse-switch v0, :sswitch_data_28
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$a;->a(Lcom/google/android/gms/internal/lz;I)Z
move-result v0
if-nez v0, :cond_0
:sswitch_d
return-object p0
:sswitch_e
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I
move-result v0
packed-switch v0, :pswitch_data_3a
goto :goto_0
:pswitch_16
iput v0, p0, Lcom/google/android/gms/internal/c$a;->level:I
goto :goto_0
:sswitch_19
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/c$a;->eE:I
goto :goto_0
:sswitch_20
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/c$a;->eF:I
goto :goto_0
nop
:sswitch_data_28
.sparse-switch
0x0 -> :sswitch_d
0x8 -> :sswitch_e
0x10 -> :sswitch_19
0x18 -> :sswitch_20
.end sparse-switch
:pswitch_data_3a
.packed-switch 0x1
:pswitch_16
:pswitch_16
:pswitch_16
.end packed-switch
.end method
.method public a(Lcom/google/android/gms/internal/ma;)V
.registers 4
const/4 v1, 0x1
iget v0, p0, Lcom/google/android/gms/internal/c$a;->level:I
if-eq v0, v1, :cond_a
iget v0, p0, Lcom/google/android/gms/internal/c$a;->level:I
invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ma;->p(II)V
:cond_a
iget v0, p0, Lcom/google/android/gms/internal/c$a;->eE:I
if-eqz v0, :cond_14
const/4 v0, 0x2
iget v1, p0, Lcom/google/android/gms/internal/c$a;->eE:I
invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ma;->p(II)V
:cond_14
iget v0, p0, Lcom/google/android/gms/internal/c$a;->eF:I
if-eqz v0, :cond_1e
const/4 v0, 0x3
iget v1, p0, Lcom/google/android/gms/internal/c$a;->eF:I
invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ma;->p(II)V
:cond_1e
invoke-super {p0, p1}, Lcom/google/android/gms/internal/mb;->a(Lcom/google/android/gms/internal/ma;)V
return-void
.end method
.method public b()Lcom/google/android/gms/internal/c$a;
.registers 3
const/4 v1, 0x0
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/internal/c$a;->level:I
iput v1, p0, Lcom/google/android/gms/internal/c$a;->eE:I
iput v1, p0, Lcom/google/android/gms/internal/c$a;->eF:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/c$a;->amU:Ljava/util/List;
const/4 v0, -0x1
iput v0, p0, Lcom/google/android/gms/internal/c$a;->amY:I
return-object p0
.end method
.method public synthetic b(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/mf;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$a;->a(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/c$a;
move-result-object v0
return-object v0
.end method
.method protected c()I
.registers 4
const/4 v2, 0x1
invoke-super {p0}, Lcom/google/android/gms/internal/mb;->c()I
move-result v0
iget v1, p0, Lcom/google/android/gms/internal/c$a;->level:I
if-eq v1, v2, :cond_10
iget v1, p0, Lcom/google/android/gms/internal/c$a;->level:I
invoke-static {v2, v1}, Lcom/google/android/gms/internal/ma;->r(II)I
move-result v1
add-int/2addr v0, v1
:cond_10
iget v1, p0, Lcom/google/android/gms/internal/c$a;->eE:I
if-eqz v1, :cond_1c
const/4 v1, 0x2
iget v2, p0, Lcom/google/android/gms/internal/c$a;->eE:I
invoke-static {v1, v2}, Lcom/google/android/gms/internal/ma;->r(II)I
move-result v1
add-int/2addr v0, v1
:cond_1c
iget v1, p0, Lcom/google/android/gms/internal/c$a;->eF:I
if-eqz v1, :cond_28
const/4 v1, 0x3
iget v2, p0, Lcom/google/android/gms/internal/c$a;->eF:I
invoke-static {v1, v2}, Lcom/google/android/gms/internal/ma;->r(II)I
move-result v1
add-int/2addr v0, v1
:cond_28
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
instance-of v2, p1, Lcom/google/android/gms/internal/c$a;
if-eqz v2, :cond_5
check-cast p1, Lcom/google/android/gms/internal/c$a;
iget v2, p0, Lcom/google/android/gms/internal/c$a;->level:I
iget v3, p1, Lcom/google/android/gms/internal/c$a;->level:I
if-ne v2, v3, :cond_5
iget v2, p0, Lcom/google/android/gms/internal/c$a;->eE:I
iget v3, p1, Lcom/google/android/gms/internal/c$a;->eE:I
if-ne v2, v3, :cond_5
iget v2, p0, Lcom/google/android/gms/internal/c$a;->eF:I
iget v3, p1, Lcom/google/android/gms/internal/c$a;->eF:I
if-ne v2, v3, :cond_5
iget-object v2, p0, Lcom/google/android/gms/internal/c$a;->amU:Ljava/util/List;
if-eqz v2, :cond_2a
iget-object v2, p0, Lcom/google/android/gms/internal/c$a;->amU:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_38
:cond_2a
iget-object v2, p1, Lcom/google/android/gms/internal/c$a;->amU:Ljava/util/List;
if-eqz v2, :cond_36
iget-object v2, p1, Lcom/google/android/gms/internal/c$a;->amU:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_5
:cond_36
move v0, v1
goto :goto_5
:cond_38
iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->amU:Ljava/util/List;
iget-object v1, p1, Lcom/google/android/gms/internal/c$a;->amU:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_5
.end method
.method public hashCode()I
.registers 3
iget v0, p0, Lcom/google/android/gms/internal/c$a;->level:I
add-int/lit16 v0, v0, 0x20f
mul-int/lit8 v0, v0, 0x1f
iget v1, p0, Lcom/google/android/gms/internal/c$a;->eE:I
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget v1, p0, Lcom/google/android/gms/internal/c$a;->eF:I
add-int/2addr v0, v1
mul-int/lit8 v1, v0, 0x1f
iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->amU:Ljava/util/List;
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->amU:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_1f
:cond_1c
const/4 v0, 0x0
:goto_1d
add-int/2addr v0, v1
return v0
:cond_1f
iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->amU:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->hashCode()I
move-result v0
goto :goto_1d
.end method