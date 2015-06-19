.class public final Lcom/google/android/gms/internal/cj;
.super Lcom/google/android/gms/internal/so;
.field public a:[Lcom/google/android/gms/internal/dz;
.field public b:[Lcom/google/android/gms/internal/dz;
.field public c:[Lcom/google/android/gms/internal/ci;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/internal/so;-><init>()V
invoke-virtual {p0}, Lcom/google/android/gms/internal/cj;->c()Lcom/google/android/gms/internal/cj;
return-void
.end method
.method public a(Lcom/google/android/gms/internal/sj;)Lcom/google/android/gms/internal/cj;
.registers 6
const/4 v1, 0x0
:goto_1
:cond_1
invoke-virtual {p1}, Lcom/google/android/gms/internal/sj;->a()I
move-result v0
sparse-switch v0, :sswitch_data_ce
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/cj;->a(Lcom/google/android/gms/internal/sj;I)Z
move-result v0
if-nez v0, :cond_1
:sswitch_e
return-object p0
:sswitch_f
const/16 v0, 0xa
invoke-static {p1, v0}, Lcom/google/android/gms/internal/sv;->b(Lcom/google/android/gms/internal/sj;I)I
move-result v2
iget-object v0, p0, Lcom/google/android/gms/internal/cj;->a:[Lcom/google/android/gms/internal/dz;
if-nez v0, :cond_3b
move v0, v1
:goto_1a
add-int/2addr v2, v0
new-array v2, v2, [Lcom/google/android/gms/internal/dz;
if-eqz v0, :cond_24
iget-object v3, p0, Lcom/google/android/gms/internal/cj;->a:[Lcom/google/android/gms/internal/dz;
invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:goto_24
:cond_24
array-length v3, v2
add-int/lit8 v3, v3, -0x1
if-ge v0, v3, :cond_3f
new-instance v3, Lcom/google/android/gms/internal/dz;
invoke-direct {v3}, Lcom/google/android/gms/internal/dz;-><init>()V
aput-object v3, v2, v0
aget-object v3, v2, v0
invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/sj;->a(Lcom/google/android/gms/internal/ss;)V
invoke-virtual {p1}, Lcom/google/android/gms/internal/sj;->a()I
add-int/lit8 v0, v0, 0x1
goto :goto_24
:cond_3b
iget-object v0, p0, Lcom/google/android/gms/internal/cj;->a:[Lcom/google/android/gms/internal/dz;
array-length v0, v0
goto :goto_1a
:cond_3f
new-instance v3, Lcom/google/android/gms/internal/dz;
invoke-direct {v3}, Lcom/google/android/gms/internal/dz;-><init>()V
aput-object v3, v2, v0
aget-object v0, v2, v0
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/sj;->a(Lcom/google/android/gms/internal/ss;)V
iput-object v2, p0, Lcom/google/android/gms/internal/cj;->a:[Lcom/google/android/gms/internal/dz;
goto :goto_1
:sswitch_4e
const/16 v0, 0x12
invoke-static {p1, v0}, Lcom/google/android/gms/internal/sv;->b(Lcom/google/android/gms/internal/sj;I)I
move-result v2
iget-object v0, p0, Lcom/google/android/gms/internal/cj;->b:[Lcom/google/android/gms/internal/dz;
if-nez v0, :cond_7a
move v0, v1
:goto_59
add-int/2addr v2, v0
new-array v2, v2, [Lcom/google/android/gms/internal/dz;
if-eqz v0, :cond_63
iget-object v3, p0, Lcom/google/android/gms/internal/cj;->b:[Lcom/google/android/gms/internal/dz;
invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_63
:goto_63
array-length v3, v2
add-int/lit8 v3, v3, -0x1
if-ge v0, v3, :cond_7e
new-instance v3, Lcom/google/android/gms/internal/dz;
invoke-direct {v3}, Lcom/google/android/gms/internal/dz;-><init>()V
aput-object v3, v2, v0
aget-object v3, v2, v0
invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/sj;->a(Lcom/google/android/gms/internal/ss;)V
invoke-virtual {p1}, Lcom/google/android/gms/internal/sj;->a()I
add-int/lit8 v0, v0, 0x1
goto :goto_63
:cond_7a
iget-object v0, p0, Lcom/google/android/gms/internal/cj;->b:[Lcom/google/android/gms/internal/dz;
array-length v0, v0
goto :goto_59
:cond_7e
new-instance v3, Lcom/google/android/gms/internal/dz;
invoke-direct {v3}, Lcom/google/android/gms/internal/dz;-><init>()V
aput-object v3, v2, v0
aget-object v0, v2, v0
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/sj;->a(Lcom/google/android/gms/internal/ss;)V
iput-object v2, p0, Lcom/google/android/gms/internal/cj;->b:[Lcom/google/android/gms/internal/dz;
goto/16 :goto_1
:sswitch_8e
const/16 v0, 0x1a
invoke-static {p1, v0}, Lcom/google/android/gms/internal/sv;->b(Lcom/google/android/gms/internal/sj;I)I
move-result v2
iget-object v0, p0, Lcom/google/android/gms/internal/cj;->c:[Lcom/google/android/gms/internal/ci;
if-nez v0, :cond_ba
move v0, v1
:goto_99
add-int/2addr v2, v0
new-array v2, v2, [Lcom/google/android/gms/internal/ci;
if-eqz v0, :cond_a3
iget-object v3, p0, Lcom/google/android/gms/internal/cj;->c:[Lcom/google/android/gms/internal/ci;
invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:goto_a3
:cond_a3
array-length v3, v2
add-int/lit8 v3, v3, -0x1
if-ge v0, v3, :cond_be
new-instance v3, Lcom/google/android/gms/internal/ci;
invoke-direct {v3}, Lcom/google/android/gms/internal/ci;-><init>()V
aput-object v3, v2, v0
aget-object v3, v2, v0
invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/sj;->a(Lcom/google/android/gms/internal/ss;)V
invoke-virtual {p1}, Lcom/google/android/gms/internal/sj;->a()I
add-int/lit8 v0, v0, 0x1
goto :goto_a3
:cond_ba
iget-object v0, p0, Lcom/google/android/gms/internal/cj;->c:[Lcom/google/android/gms/internal/ci;
array-length v0, v0
goto :goto_99
:cond_be
new-instance v3, Lcom/google/android/gms/internal/ci;
invoke-direct {v3}, Lcom/google/android/gms/internal/ci;-><init>()V
aput-object v3, v2, v0
aget-object v0, v2, v0
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/sj;->a(Lcom/google/android/gms/internal/ss;)V
iput-object v2, p0, Lcom/google/android/gms/internal/cj;->c:[Lcom/google/android/gms/internal/ci;
goto/16 :goto_1
:sswitch_data_ce
.sparse-switch
0x0 -> :sswitch_e
0xa -> :sswitch_f
0x12 -> :sswitch_4e
0x1a -> :sswitch_8e
.end sparse-switch
.end method
.method public a(Lcom/google/android/gms/internal/sk;)V
.registers 6
const/4 v1, 0x0
iget-object v0, p0, Lcom/google/android/gms/internal/cj;->a:[Lcom/google/android/gms/internal/dz;
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/google/android/gms/internal/cj;->a:[Lcom/google/android/gms/internal/dz;
array-length v0, v0
if-lez v0, :cond_1d
move v0, v1
:goto_b
iget-object v2, p0, Lcom/google/android/gms/internal/cj;->a:[Lcom/google/android/gms/internal/dz;
array-length v2, v2
if-ge v0, v2, :cond_1d
iget-object v2, p0, Lcom/google/android/gms/internal/cj;->a:[Lcom/google/android/gms/internal/dz;
aget-object v2, v2, v0
if-eqz v2, :cond_1a
const/4 v3, 0x1
invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/sk;->a(ILcom/google/android/gms/internal/ss;)V
:cond_1a
add-int/lit8 v0, v0, 0x1
goto :goto_b
:cond_1d
iget-object v0, p0, Lcom/google/android/gms/internal/cj;->b:[Lcom/google/android/gms/internal/dz;
if-eqz v0, :cond_39
iget-object v0, p0, Lcom/google/android/gms/internal/cj;->b:[Lcom/google/android/gms/internal/dz;
array-length v0, v0
if-lez v0, :cond_39
move v0, v1
:goto_27
iget-object v2, p0, Lcom/google/android/gms/internal/cj;->b:[Lcom/google/android/gms/internal/dz;
array-length v2, v2
if-ge v0, v2, :cond_39
iget-object v2, p0, Lcom/google/android/gms/internal/cj;->b:[Lcom/google/android/gms/internal/dz;
aget-object v2, v2, v0
if-eqz v2, :cond_36
const/4 v3, 0x2
invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/sk;->a(ILcom/google/android/gms/internal/ss;)V
:cond_36
add-int/lit8 v0, v0, 0x1
goto :goto_27
:cond_39
iget-object v0, p0, Lcom/google/android/gms/internal/cj;->c:[Lcom/google/android/gms/internal/ci;
if-eqz v0, :cond_54
iget-object v0, p0, Lcom/google/android/gms/internal/cj;->c:[Lcom/google/android/gms/internal/ci;
array-length v0, v0
if-lez v0, :cond_54
:goto_42
iget-object v0, p0, Lcom/google/android/gms/internal/cj;->c:[Lcom/google/android/gms/internal/ci;
array-length v0, v0
if-ge v1, v0, :cond_54
iget-object v0, p0, Lcom/google/android/gms/internal/cj;->c:[Lcom/google/android/gms/internal/ci;
aget-object v0, v0, v1
if-eqz v0, :cond_51
const/4 v2, 0x3
invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/sk;->a(ILcom/google/android/gms/internal/ss;)V
:cond_51
add-int/lit8 v1, v1, 0x1
goto :goto_42
:cond_54
invoke-super {p0, p1}, Lcom/google/android/gms/internal/so;->a(Lcom/google/android/gms/internal/sk;)V
return-void
.end method
.method public b()I
.registers 6
const/4 v1, 0x0
invoke-super {p0}, Lcom/google/android/gms/internal/so;->b()I
move-result v0
iget-object v2, p0, Lcom/google/android/gms/internal/cj;->a:[Lcom/google/android/gms/internal/dz;
if-eqz v2, :cond_25
iget-object v2, p0, Lcom/google/android/gms/internal/cj;->a:[Lcom/google/android/gms/internal/dz;
array-length v2, v2
if-lez v2, :cond_25
move v2, v0
move v0, v1
:goto_10
iget-object v3, p0, Lcom/google/android/gms/internal/cj;->a:[Lcom/google/android/gms/internal/dz;
array-length v3, v3
if-ge v0, v3, :cond_24
iget-object v3, p0, Lcom/google/android/gms/internal/cj;->a:[Lcom/google/android/gms/internal/dz;
aget-object v3, v3, v0
if-eqz v3, :cond_21
const/4 v4, 0x1
invoke-static {v4, v3}, Lcom/google/android/gms/internal/sk;->b(ILcom/google/android/gms/internal/ss;)I
move-result v3
add-int/2addr v2, v3
:cond_21
add-int/lit8 v0, v0, 0x1
goto :goto_10
:cond_24
move v0, v2
:cond_25
iget-object v2, p0, Lcom/google/android/gms/internal/cj;->b:[Lcom/google/android/gms/internal/dz;
if-eqz v2, :cond_45
iget-object v2, p0, Lcom/google/android/gms/internal/cj;->b:[Lcom/google/android/gms/internal/dz;
array-length v2, v2
if-lez v2, :cond_45
move v2, v0
move v0, v1
:goto_30
iget-object v3, p0, Lcom/google/android/gms/internal/cj;->b:[Lcom/google/android/gms/internal/dz;
array-length v3, v3
if-ge v0, v3, :cond_44
iget-object v3, p0, Lcom/google/android/gms/internal/cj;->b:[Lcom/google/android/gms/internal/dz;
aget-object v3, v3, v0
if-eqz v3, :cond_41
const/4 v4, 0x2
invoke-static {v4, v3}, Lcom/google/android/gms/internal/sk;->b(ILcom/google/android/gms/internal/ss;)I
move-result v3
add-int/2addr v2, v3
:cond_41
add-int/lit8 v0, v0, 0x1
goto :goto_30
:cond_44
move v0, v2
:cond_45
iget-object v2, p0, Lcom/google/android/gms/internal/cj;->c:[Lcom/google/android/gms/internal/ci;
if-eqz v2, :cond_62
iget-object v2, p0, Lcom/google/android/gms/internal/cj;->c:[Lcom/google/android/gms/internal/ci;
array-length v2, v2
if-lez v2, :cond_62
:goto_4e
iget-object v2, p0, Lcom/google/android/gms/internal/cj;->c:[Lcom/google/android/gms/internal/ci;
array-length v2, v2
if-ge v1, v2, :cond_62
iget-object v2, p0, Lcom/google/android/gms/internal/cj;->c:[Lcom/google/android/gms/internal/ci;
aget-object v2, v2, v1
if-eqz v2, :cond_5f
const/4 v3, 0x3
invoke-static {v3, v2}, Lcom/google/android/gms/internal/sk;->b(ILcom/google/android/gms/internal/ss;)I
move-result v2
add-int/2addr v0, v2
:cond_5f
add-int/lit8 v1, v1, 0x1
goto :goto_4e
:cond_62
iput v0, p0, Lcom/google/android/gms/internal/cj;->s:I
return v0
.end method
.method public synthetic b(Lcom/google/android/gms/internal/sj;)Lcom/google/android/gms/internal/ss;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cj;->a(Lcom/google/android/gms/internal/sj;)Lcom/google/android/gms/internal/cj;
move-result-object v0
return-object v0
.end method
.method public c()Lcom/google/android/gms/internal/cj;
.registers 2
invoke-static {}, Lcom/google/android/gms/internal/dz;->c()[Lcom/google/android/gms/internal/dz;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/cj;->a:[Lcom/google/android/gms/internal/dz;
invoke-static {}, Lcom/google/android/gms/internal/dz;->c()[Lcom/google/android/gms/internal/dz;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/cj;->b:[Lcom/google/android/gms/internal/dz;
invoke-static {}, Lcom/google/android/gms/internal/ci;->c()[Lcom/google/android/gms/internal/ci;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/cj;->c:[Lcom/google/android/gms/internal/ci;
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/cj;->r:Ljava/util/List;
const/4 v0, -0x1
iput v0, p0, Lcom/google/android/gms/internal/cj;->s:I
return-object p0
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
instance-of v2, p1, Lcom/google/android/gms/internal/cj;
if-eqz v2, :cond_5
check-cast p1, Lcom/google/android/gms/internal/cj;
iget-object v2, p0, Lcom/google/android/gms/internal/cj;->a:[Lcom/google/android/gms/internal/dz;
iget-object v3, p1, Lcom/google/android/gms/internal/cj;->a:[Lcom/google/android/gms/internal/dz;
invoke-static {v2, v3}, Lcom/google/android/gms/internal/sq;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5
iget-object v2, p0, Lcom/google/android/gms/internal/cj;->b:[Lcom/google/android/gms/internal/dz;
iget-object v3, p1, Lcom/google/android/gms/internal/cj;->b:[Lcom/google/android/gms/internal/dz;
invoke-static {v2, v3}, Lcom/google/android/gms/internal/sq;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5
iget-object v2, p0, Lcom/google/android/gms/internal/cj;->c:[Lcom/google/android/gms/internal/ci;
iget-object v3, p1, Lcom/google/android/gms/internal/cj;->c:[Lcom/google/android/gms/internal/ci;
invoke-static {v2, v3}, Lcom/google/android/gms/internal/sq;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5
iget-object v2, p0, Lcom/google/android/gms/internal/cj;->r:Ljava/util/List;
if-eqz v2, :cond_36
iget-object v2, p0, Lcom/google/android/gms/internal/cj;->r:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_44
:cond_36
iget-object v2, p1, Lcom/google/android/gms/internal/cj;->r:Ljava/util/List;
if-eqz v2, :cond_42
iget-object v2, p1, Lcom/google/android/gms/internal/cj;->r:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_5
:cond_42
move v0, v1
goto :goto_5
:cond_44
iget-object v0, p0, Lcom/google/android/gms/internal/cj;->r:Ljava/util/List;
iget-object v1, p1, Lcom/google/android/gms/internal/cj;->r:Ljava/util/List;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_5
.end method
.method public hashCode()I
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/cj;->a:[Lcom/google/android/gms/internal/dz;
invoke-static {v0}, Lcom/google/android/gms/internal/sq;->a([Ljava/lang/Object;)I
move-result v0
add-int/lit16 v0, v0, 0x20f
mul-int/lit8 v0, v0, 0x1f
iget-object v1, p0, Lcom/google/android/gms/internal/cj;->b:[Lcom/google/android/gms/internal/dz;
invoke-static {v1}, Lcom/google/android/gms/internal/sq;->a([Ljava/lang/Object;)I
move-result v1
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget-object v1, p0, Lcom/google/android/gms/internal/cj;->c:[Lcom/google/android/gms/internal/ci;
invoke-static {v1}, Lcom/google/android/gms/internal/sq;->a([Ljava/lang/Object;)I
move-result v1
add-int/2addr v0, v1
mul-int/lit8 v1, v0, 0x1f
iget-object v0, p0, Lcom/google/android/gms/internal/cj;->r:Ljava/util/List;
if-eqz v0, :cond_28
iget-object v0, p0, Lcom/google/android/gms/internal/cj;->r:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_2b
:cond_28
const/4 v0, 0x0
:goto_29
add-int/2addr v0, v1
return v0
:cond_2b
iget-object v0, p0, Lcom/google/android/gms/internal/cj;->r:Ljava/util/List;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
goto :goto_29
.end method