.class public final Lcom/google/android/gms/internal/c$j;
.super Lcom/google/android/gms/internal/ka;
.field public fU:[Lcom/google/android/gms/internal/c$i;
.field public fV:Lcom/google/android/gms/internal/c$f;
.field public fW:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/internal/ka;-><init>()V
invoke-virtual {p0}, Lcom/google/android/gms/internal/c$j;->q()Lcom/google/android/gms/internal/c$j;
return-void
.end method
.method public static b([B)Lcom/google/android/gms/internal/c$j;
.registers 2
new-instance v0, Lcom/google/android/gms/internal/c$j;
invoke-direct {v0}, Lcom/google/android/gms/internal/c$j;-><init>()V
invoke-static {v0, p0}, Lcom/google/android/gms/internal/ke;->a(Lcom/google/android/gms/internal/ke;[B)Lcom/google/android/gms/internal/ke;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/c$j;
return-object v0
.end method
.method public final a(Lcom/google/android/gms/internal/jz;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fU:[Lcom/google/android/gms/internal/c$i;
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fU:[Lcom/google/android/gms/internal/c$i;
array-length v0, v0
if-lez v0, :cond_1c
const/4 v0, 0x0
:goto_a
iget-object v1, p0, Lcom/google/android/gms/internal/c$j;->fU:[Lcom/google/android/gms/internal/c$i;
array-length v1, v1
if-ge v0, v1, :cond_1c
iget-object v1, p0, Lcom/google/android/gms/internal/c$j;->fU:[Lcom/google/android/gms/internal/c$i;
aget-object v1, v1, v0
if-eqz v1, :cond_19
const/4 v2, 0x1
invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/jz;->a(ILcom/google/android/gms/internal/ke;)V
:cond_19
add-int/lit8 v0, v0, 0x1
goto :goto_a
:cond_1c
iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fV:Lcom/google/android/gms/internal/c$f;
if-eqz v0, :cond_26
const/4 v0, 0x2
iget-object v1, p0, Lcom/google/android/gms/internal/c$j;->fV:Lcom/google/android/gms/internal/c$f;
invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/jz;->a(ILcom/google/android/gms/internal/ke;)V
:cond_26
iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fW:Ljava/lang/String;
const-string v1, ""
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_36
const/4 v0, 0x3
iget-object v1, p0, Lcom/google/android/gms/internal/c$j;->fW:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/jz;->b(ILjava/lang/String;)V
:cond_36
invoke-super {p0, p1}, Lcom/google/android/gms/internal/ka;->a(Lcom/google/android/gms/internal/jz;)V
return-void
.end method
.method public final synthetic b(Lcom/google/android/gms/internal/jy;)Lcom/google/android/gms/internal/ke;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$j;->k(Lcom/google/android/gms/internal/jy;)Lcom/google/android/gms/internal/c$j;
move-result-object v0
return-object v0
.end method
.method public final c()I
.registers 5
invoke-super {p0}, Lcom/google/android/gms/internal/ka;->c()I
move-result v1
iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fU:[Lcom/google/android/gms/internal/c$i;
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fU:[Lcom/google/android/gms/internal/c$i;
array-length v0, v0
if-lez v0, :cond_22
const/4 v0, 0x0
:goto_e
iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->fU:[Lcom/google/android/gms/internal/c$i;
array-length v2, v2
if-ge v0, v2, :cond_22
iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->fU:[Lcom/google/android/gms/internal/c$i;
aget-object v2, v2, v0
if-eqz v2, :cond_1f
const/4 v3, 0x1
invoke-static {v3, v2}, Lcom/google/android/gms/internal/jz;->b(ILcom/google/android/gms/internal/ke;)I
move-result v2
add-int/2addr v1, v2
:cond_1f
add-int/lit8 v0, v0, 0x1
goto :goto_e
:cond_22
iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fV:Lcom/google/android/gms/internal/c$f;
if-eqz v0, :cond_2e
const/4 v0, 0x2
iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->fV:Lcom/google/android/gms/internal/c$f;
invoke-static {v0, v2}, Lcom/google/android/gms/internal/jz;->b(ILcom/google/android/gms/internal/ke;)I
move-result v0
add-int/2addr v1, v0
:cond_2e
iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fW:Ljava/lang/String;
const-string v2, ""
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_40
const/4 v0, 0x3
iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->fW:Ljava/lang/String;
invoke-static {v0, v2}, Lcom/google/android/gms/internal/jz;->g(ILjava/lang/String;)I
move-result v0
add-int/2addr v1, v0
:cond_40
iput v1, p0, Lcom/google/android/gms/internal/c$j;->DY:I
return v1
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
instance-of v2, p1, Lcom/google/android/gms/internal/c$j;
if-nez v2, :cond_b
move v0, v1
goto :goto_4
:cond_b
check-cast p1, Lcom/google/android/gms/internal/c$j;
iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->fU:[Lcom/google/android/gms/internal/c$i;
iget-object v3, p1, Lcom/google/android/gms/internal/c$j;->fU:[Lcom/google/android/gms/internal/c$i;
invoke-static {v2, v3}, Lcom/google/android/gms/internal/kc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_19
move v0, v1
goto :goto_4
:cond_19
iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->fV:Lcom/google/android/gms/internal/c$f;
if-nez v2, :cond_23
iget-object v2, p1, Lcom/google/android/gms/internal/c$j;->fV:Lcom/google/android/gms/internal/c$f;
if-eqz v2, :cond_2f
move v0, v1
goto :goto_4
:cond_23
iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->fV:Lcom/google/android/gms/internal/c$f;
iget-object v3, p1, Lcom/google/android/gms/internal/c$j;->fV:Lcom/google/android/gms/internal/c$f;
invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/c$f;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_2f
move v0, v1
goto :goto_4
:cond_2f
iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->fW:Ljava/lang/String;
if-nez v2, :cond_39
iget-object v2, p1, Lcom/google/android/gms/internal/c$j;->fW:Ljava/lang/String;
if-eqz v2, :cond_45
move v0, v1
goto :goto_4
:cond_39
iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->fW:Ljava/lang/String;
iget-object v3, p1, Lcom/google/android/gms/internal/c$j;->fW:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_45
move v0, v1
goto :goto_4
:cond_45
iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->aae:Ljava/util/List;
if-eqz v2, :cond_51
iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->aae:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_5f
:cond_51
iget-object v2, p1, Lcom/google/android/gms/internal/c$j;->aae:Ljava/util/List;
if-eqz v2, :cond_4
iget-object v2, p1, Lcom/google/android/gms/internal/c$j;->aae:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto :goto_4
:cond_5f
iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->aae:Ljava/util/List;
iget-object v1, p1, Lcom/google/android/gms/internal/c$j;->aae:Ljava/util/List;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_4
.end method
.method public final hashCode()I
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fU:[Lcom/google/android/gms/internal/c$i;
invoke-static {v0}, Lcom/google/android/gms/internal/kc;->hashCode([Ljava/lang/Object;)I
move-result v0
add-int/lit16 v0, v0, 0x20f
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fV:Lcom/google/android/gms/internal/c$f;
if-nez v0, :cond_29
move v0, v1
:goto_10
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fW:Ljava/lang/String;
if-nez v0, :cond_30
move v0, v1
:goto_18
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->aae:Ljava/util/List;
if-eqz v2, :cond_27
iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->aae:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_37
:goto_27
:cond_27
add-int/2addr v0, v1
return v0
:cond_29
iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fV:Lcom/google/android/gms/internal/c$f;
invoke-virtual {v0}, Lcom/google/android/gms/internal/c$f;->hashCode()I
move-result v0
goto :goto_10
:cond_30
iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fW:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_18
:cond_37
iget-object v1, p0, Lcom/google/android/gms/internal/c$j;->aae:Ljava/util/List;
invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
move-result v1
goto :goto_27
.end method
.method public final k(Lcom/google/android/gms/internal/jy;)Lcom/google/android/gms/internal/c$j;
.registers 6
const/4 v1, 0x0
:goto_1
:cond_1
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->ky()I
move-result v0
sparse-switch v0, :sswitch_data_66
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$j;->a(Lcom/google/android/gms/internal/jy;I)Z
move-result v0
if-nez v0, :cond_1
:sswitch_e
return-object p0
:sswitch_f
const/16 v0, 0xa
invoke-static {p1, v0}, Lcom/google/android/gms/internal/kh;->c(Lcom/google/android/gms/internal/jy;I)I
move-result v2
iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fU:[Lcom/google/android/gms/internal/c$i;
if-nez v0, :cond_3b
move v0, v1
:goto_1a
add-int/2addr v2, v0
new-array v2, v2, [Lcom/google/android/gms/internal/c$i;
if-eqz v0, :cond_24
iget-object v3, p0, Lcom/google/android/gms/internal/c$j;->fU:[Lcom/google/android/gms/internal/c$i;
invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:goto_24
:cond_24
array-length v3, v2
add-int/lit8 v3, v3, -0x1
if-ge v0, v3, :cond_3f
new-instance v3, Lcom/google/android/gms/internal/c$i;
invoke-direct {v3}, Lcom/google/android/gms/internal/c$i;-><init>()V
aput-object v3, v2, v0
aget-object v3, v2, v0
invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/ke;)V
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->ky()I
add-int/lit8 v0, v0, 0x1
goto :goto_24
:cond_3b
iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fU:[Lcom/google/android/gms/internal/c$i;
array-length v0, v0
goto :goto_1a
:cond_3f
new-instance v3, Lcom/google/android/gms/internal/c$i;
invoke-direct {v3}, Lcom/google/android/gms/internal/c$i;-><init>()V
aput-object v3, v2, v0
aget-object v0, v2, v0
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/ke;)V
iput-object v2, p0, Lcom/google/android/gms/internal/c$j;->fU:[Lcom/google/android/gms/internal/c$i;
goto :goto_1
:sswitch_4e
iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fV:Lcom/google/android/gms/internal/c$f;
if-nez v0, :cond_59
new-instance v0, Lcom/google/android/gms/internal/c$f;
invoke-direct {v0}, Lcom/google/android/gms/internal/c$f;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/c$j;->fV:Lcom/google/android/gms/internal/c$f;
:cond_59
iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->fV:Lcom/google/android/gms/internal/c$f;
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/ke;)V
goto :goto_1
:sswitch_5f
invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/c$j;->fW:Ljava/lang/String;
goto :goto_1
:sswitch_data_66
.sparse-switch
0x0 -> :sswitch_e
0xa -> :sswitch_f
0x12 -> :sswitch_4e
0x1a -> :sswitch_5f
.end sparse-switch
.end method
.method public final q()Lcom/google/android/gms/internal/c$j;
.registers 3
const/4 v1, 0x0
invoke-static {}, Lcom/google/android/gms/internal/c$i;->o()[Lcom/google/android/gms/internal/c$i;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/c$j;->fU:[Lcom/google/android/gms/internal/c$i;
iput-object v1, p0, Lcom/google/android/gms/internal/c$j;->fV:Lcom/google/android/gms/internal/c$f;
const-string v0, ""
iput-object v0, p0, Lcom/google/android/gms/internal/c$j;->fW:Ljava/lang/String;
iput-object v1, p0, Lcom/google/android/gms/internal/c$j;->aae:Ljava/util/List;
const/4 v0, -0x1
iput v0, p0, Lcom/google/android/gms/internal/c$j;->DY:I
return-object p0
.end method