.class public final Lcom/google/android/gms/internal/iw$a;
.super Lcom/google/android/gms/internal/mb;
.field public Uv:[Lcom/google/android/gms/internal/iw$a$a;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/internal/mb;-><init>()V
invoke-virtual {p0}, Lcom/google/android/gms/internal/iw$a;->iL()Lcom/google/android/gms/internal/iw$a;
return-void
.end method
.method public a(Lcom/google/android/gms/internal/ma;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/iw$a;->Uv:[Lcom/google/android/gms/internal/iw$a$a;
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/google/android/gms/internal/iw$a;->Uv:[Lcom/google/android/gms/internal/iw$a$a;
array-length v0, v0
if-lez v0, :cond_1c
const/4 v0, 0x0
:goto_a
iget-object v1, p0, Lcom/google/android/gms/internal/iw$a;->Uv:[Lcom/google/android/gms/internal/iw$a$a;
array-length v1, v1
if-ge v0, v1, :cond_1c
iget-object v1, p0, Lcom/google/android/gms/internal/iw$a;->Uv:[Lcom/google/android/gms/internal/iw$a$a;
aget-object v1, v1, v0
if-eqz v1, :cond_19
const/4 v2, 0x1
invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ma;->a(ILcom/google/android/gms/internal/mf;)V
:cond_19
add-int/lit8 v0, v0, 0x1
goto :goto_a
:cond_1c
invoke-super {p0, p1}, Lcom/google/android/gms/internal/mb;->a(Lcom/google/android/gms/internal/ma;)V
return-void
.end method
.method public synthetic b(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/mf;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iw$a;->n(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/iw$a;
move-result-object v0
return-object v0
.end method
.method protected c()I
.registers 5
invoke-super {p0}, Lcom/google/android/gms/internal/mb;->c()I
move-result v1
iget-object v0, p0, Lcom/google/android/gms/internal/iw$a;->Uv:[Lcom/google/android/gms/internal/iw$a$a;
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/google/android/gms/internal/iw$a;->Uv:[Lcom/google/android/gms/internal/iw$a$a;
array-length v0, v0
if-lez v0, :cond_22
const/4 v0, 0x0
:goto_e
iget-object v2, p0, Lcom/google/android/gms/internal/iw$a;->Uv:[Lcom/google/android/gms/internal/iw$a$a;
array-length v2, v2
if-ge v0, v2, :cond_22
iget-object v2, p0, Lcom/google/android/gms/internal/iw$a;->Uv:[Lcom/google/android/gms/internal/iw$a$a;
aget-object v2, v2, v0
if-eqz v2, :cond_1f
const/4 v3, 0x1
invoke-static {v3, v2}, Lcom/google/android/gms/internal/ma;->b(ILcom/google/android/gms/internal/mf;)I
move-result v2
add-int/2addr v1, v2
:cond_1f
add-int/lit8 v0, v0, 0x1
goto :goto_e
:cond_22
return v1
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
instance-of v2, p1, Lcom/google/android/gms/internal/iw$a;
if-eqz v2, :cond_5
check-cast p1, Lcom/google/android/gms/internal/iw$a;
iget-object v2, p0, Lcom/google/android/gms/internal/iw$a;->Uv:[Lcom/google/android/gms/internal/iw$a$a;
iget-object v3, p1, Lcom/google/android/gms/internal/iw$a;->Uv:[Lcom/google/android/gms/internal/iw$a$a;
invoke-static {v2, v3}, Lcom/google/android/gms/internal/md;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5
iget-object v2, p0, Lcom/google/android/gms/internal/iw$a;->amU:Ljava/util/List;
if-eqz v2, :cond_22
iget-object v2, p0, Lcom/google/android/gms/internal/iw$a;->amU:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_30
:cond_22
iget-object v2, p1, Lcom/google/android/gms/internal/iw$a;->amU:Ljava/util/List;
if-eqz v2, :cond_2e
iget-object v2, p1, Lcom/google/android/gms/internal/iw$a;->amU:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_5
:cond_2e
move v0, v1
goto :goto_5
:cond_30
iget-object v0, p0, Lcom/google/android/gms/internal/iw$a;->amU:Ljava/util/List;
iget-object v1, p1, Lcom/google/android/gms/internal/iw$a;->amU:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_5
.end method
.method public hashCode()I
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/iw$a;->Uv:[Lcom/google/android/gms/internal/iw$a$a;
invoke-static {v0}, Lcom/google/android/gms/internal/md;->hashCode([Ljava/lang/Object;)I
move-result v0
add-int/lit16 v0, v0, 0x20f
mul-int/lit8 v1, v0, 0x1f
iget-object v0, p0, Lcom/google/android/gms/internal/iw$a;->amU:Ljava/util/List;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/google/android/gms/internal/iw$a;->amU:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_19
:cond_16
const/4 v0, 0x0
:goto_17
add-int/2addr v0, v1
return v0
:cond_19
iget-object v0, p0, Lcom/google/android/gms/internal/iw$a;->amU:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->hashCode()I
move-result v0
goto :goto_17
.end method
.method public iL()Lcom/google/android/gms/internal/iw$a;
.registers 2
invoke-static {}, Lcom/google/android/gms/internal/iw$a$a;->iM()[Lcom/google/android/gms/internal/iw$a$a;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/iw$a;->Uv:[Lcom/google/android/gms/internal/iw$a$a;
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/iw$a;->amU:Ljava/util/List;
const/4 v0, -0x1
iput v0, p0, Lcom/google/android/gms/internal/iw$a;->amY:I
return-object p0
.end method
.method public n(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/iw$a;
.registers 6
const/4 v1, 0x0
:goto_1
:cond_1
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I
move-result v0
sparse-switch v0, :sswitch_data_4e
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/iw$a;->a(Lcom/google/android/gms/internal/lz;I)Z
move-result v0
if-nez v0, :cond_1
:sswitch_e
return-object p0
:sswitch_f
const/16 v0, 0xa
invoke-static {p1, v0}, Lcom/google/android/gms/internal/mi;->b(Lcom/google/android/gms/internal/lz;I)I
move-result v2
iget-object v0, p0, Lcom/google/android/gms/internal/iw$a;->Uv:[Lcom/google/android/gms/internal/iw$a$a;
if-nez v0, :cond_3b
move v0, v1
:goto_1a
add-int/2addr v2, v0
new-array v2, v2, [Lcom/google/android/gms/internal/iw$a$a;
if-eqz v0, :cond_24
iget-object v3, p0, Lcom/google/android/gms/internal/iw$a;->Uv:[Lcom/google/android/gms/internal/iw$a$a;
invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:goto_24
:cond_24
array-length v3, v2
add-int/lit8 v3, v3, -0x1
if-ge v0, v3, :cond_3f
new-instance v3, Lcom/google/android/gms/internal/iw$a$a;
invoke-direct {v3}, Lcom/google/android/gms/internal/iw$a$a;-><init>()V
aput-object v3, v2, v0
aget-object v3, v2, v0
invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/lz;->a(Lcom/google/android/gms/internal/mf;)V
invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I
add-int/lit8 v0, v0, 0x1
goto :goto_24
:cond_3b
iget-object v0, p0, Lcom/google/android/gms/internal/iw$a;->Uv:[Lcom/google/android/gms/internal/iw$a$a;
array-length v0, v0
goto :goto_1a
:cond_3f
new-instance v3, Lcom/google/android/gms/internal/iw$a$a;
invoke-direct {v3}, Lcom/google/android/gms/internal/iw$a$a;-><init>()V
aput-object v3, v2, v0
aget-object v0, v2, v0
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->a(Lcom/google/android/gms/internal/mf;)V
iput-object v2, p0, Lcom/google/android/gms/internal/iw$a;->Uv:[Lcom/google/android/gms/internal/iw$a$a;
goto :goto_1
:sswitch_data_4e
.sparse-switch
0x0 -> :sswitch_e
0xa -> :sswitch_f
.end sparse-switch
.end method