.class public final Lcom/google/android/gms/internal/rr;
.super Lcom/google/android/gms/internal/so;
.field public a:J
.field public b:Lcom/google/android/gms/internal/cl;
.field public c:Lcom/google/android/gms/internal/cp;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/internal/so;-><init>()V
invoke-virtual {p0}, Lcom/google/android/gms/internal/rr;->c()Lcom/google/android/gms/internal/rr;
return-void
.end method
.method public static a([B)Lcom/google/android/gms/internal/rr;
.registers 2
new-instance v0, Lcom/google/android/gms/internal/rr;
invoke-direct {v0}, Lcom/google/android/gms/internal/rr;-><init>()V
invoke-static {v0, p0}, Lcom/google/android/gms/internal/ss;->a(Lcom/google/android/gms/internal/ss;[B)Lcom/google/android/gms/internal/ss;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/rr;
return-object v0
.end method
.method public a(Lcom/google/android/gms/internal/sj;)Lcom/google/android/gms/internal/rr;
.registers 4
:goto_0
:cond_0
invoke-virtual {p1}, Lcom/google/android/gms/internal/sj;->a()I
move-result v0
sparse-switch v0, :sswitch_data_38
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/rr;->a(Lcom/google/android/gms/internal/sj;I)Z
move-result v0
if-nez v0, :cond_0
:sswitch_d
return-object p0
:sswitch_e
invoke-virtual {p1}, Lcom/google/android/gms/internal/sj;->d()J
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/gms/internal/rr;->a:J
goto :goto_0
:sswitch_15
iget-object v0, p0, Lcom/google/android/gms/internal/rr;->b:Lcom/google/android/gms/internal/cl;
if-nez v0, :cond_20
new-instance v0, Lcom/google/android/gms/internal/cl;
invoke-direct {v0}, Lcom/google/android/gms/internal/cl;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/rr;->b:Lcom/google/android/gms/internal/cl;
:cond_20
iget-object v0, p0, Lcom/google/android/gms/internal/rr;->b:Lcom/google/android/gms/internal/cl;
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/sj;->a(Lcom/google/android/gms/internal/ss;)V
goto :goto_0
:sswitch_26
iget-object v0, p0, Lcom/google/android/gms/internal/rr;->c:Lcom/google/android/gms/internal/cp;
if-nez v0, :cond_31
new-instance v0, Lcom/google/android/gms/internal/cp;
invoke-direct {v0}, Lcom/google/android/gms/internal/cp;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/rr;->c:Lcom/google/android/gms/internal/cp;
:cond_31
iget-object v0, p0, Lcom/google/android/gms/internal/rr;->c:Lcom/google/android/gms/internal/cp;
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/sj;->a(Lcom/google/android/gms/internal/ss;)V
goto :goto_0
nop
:sswitch_data_38
.sparse-switch
0x0 -> :sswitch_d
0x8 -> :sswitch_e
0x12 -> :sswitch_15
0x1a -> :sswitch_26
.end sparse-switch
.end method
.method public a(Lcom/google/android/gms/internal/sk;)V
.registers 5
const/4 v0, 0x1
iget-wide v1, p0, Lcom/google/android/gms/internal/rr;->a:J
invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/sk;->a(IJ)V
iget-object v0, p0, Lcom/google/android/gms/internal/rr;->b:Lcom/google/android/gms/internal/cl;
if-eqz v0, :cond_10
const/4 v0, 0x2
iget-object v1, p0, Lcom/google/android/gms/internal/rr;->b:Lcom/google/android/gms/internal/cl;
invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/sk;->a(ILcom/google/android/gms/internal/ss;)V
:cond_10
iget-object v0, p0, Lcom/google/android/gms/internal/rr;->c:Lcom/google/android/gms/internal/cp;
if-eqz v0, :cond_1a
const/4 v0, 0x3
iget-object v1, p0, Lcom/google/android/gms/internal/rr;->c:Lcom/google/android/gms/internal/cp;
invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/sk;->a(ILcom/google/android/gms/internal/ss;)V
:cond_1a
invoke-super {p0, p1}, Lcom/google/android/gms/internal/so;->a(Lcom/google/android/gms/internal/sk;)V
return-void
.end method
.method public b()I
.registers 5
invoke-super {p0}, Lcom/google/android/gms/internal/so;->b()I
move-result v0
const/4 v1, 0x1
iget-wide v2, p0, Lcom/google/android/gms/internal/rr;->a:J
invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/sk;->c(IJ)I
move-result v1
add-int/2addr v0, v1
iget-object v1, p0, Lcom/google/android/gms/internal/rr;->b:Lcom/google/android/gms/internal/cl;
if-eqz v1, :cond_18
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/internal/rr;->b:Lcom/google/android/gms/internal/cl;
invoke-static {v1, v2}, Lcom/google/android/gms/internal/sk;->b(ILcom/google/android/gms/internal/ss;)I
move-result v1
add-int/2addr v0, v1
:cond_18
iget-object v1, p0, Lcom/google/android/gms/internal/rr;->c:Lcom/google/android/gms/internal/cp;
if-eqz v1, :cond_24
const/4 v1, 0x3
iget-object v2, p0, Lcom/google/android/gms/internal/rr;->c:Lcom/google/android/gms/internal/cp;
invoke-static {v1, v2}, Lcom/google/android/gms/internal/sk;->b(ILcom/google/android/gms/internal/ss;)I
move-result v1
add-int/2addr v0, v1
:cond_24
iput v0, p0, Lcom/google/android/gms/internal/rr;->s:I
return v0
.end method
.method public synthetic b(Lcom/google/android/gms/internal/sj;)Lcom/google/android/gms/internal/ss;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/rr;->a(Lcom/google/android/gms/internal/sj;)Lcom/google/android/gms/internal/rr;
move-result-object v0
return-object v0
.end method
.method public c()Lcom/google/android/gms/internal/rr;
.registers 4
const/4 v2, 0x0
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/google/android/gms/internal/rr;->a:J
iput-object v2, p0, Lcom/google/android/gms/internal/rr;->b:Lcom/google/android/gms/internal/cl;
iput-object v2, p0, Lcom/google/android/gms/internal/rr;->c:Lcom/google/android/gms/internal/cp;
iput-object v2, p0, Lcom/google/android/gms/internal/rr;->r:Ljava/util/List;
const/4 v0, -0x1
iput v0, p0, Lcom/google/android/gms/internal/rr;->s:I
return-object p0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 8
const/4 v1, 0x1
const/4 v0, 0x0
if-ne p1, p0, :cond_6
move v0, v1
:goto_5
:cond_5
return v0
:cond_6
instance-of v2, p1, Lcom/google/android/gms/internal/rr;
if-eqz v2, :cond_5
check-cast p1, Lcom/google/android/gms/internal/rr;
iget-wide v2, p0, Lcom/google/android/gms/internal/rr;->a:J
iget-wide v4, p1, Lcom/google/android/gms/internal/rr;->a:J
cmp-long v2, v2, v4
if-nez v2, :cond_5
iget-object v2, p0, Lcom/google/android/gms/internal/rr;->b:Lcom/google/android/gms/internal/cl;
if-nez v2, :cond_3e
iget-object v2, p1, Lcom/google/android/gms/internal/rr;->b:Lcom/google/android/gms/internal/cl;
if-nez v2, :cond_5
:cond_1c
iget-object v2, p0, Lcom/google/android/gms/internal/rr;->c:Lcom/google/android/gms/internal/cp;
if-nez v2, :cond_49
iget-object v2, p1, Lcom/google/android/gms/internal/rr;->c:Lcom/google/android/gms/internal/cp;
if-nez v2, :cond_5
:cond_24
iget-object v2, p0, Lcom/google/android/gms/internal/rr;->r:Ljava/util/List;
if-eqz v2, :cond_30
iget-object v2, p0, Lcom/google/android/gms/internal/rr;->r:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_54
:cond_30
iget-object v2, p1, Lcom/google/android/gms/internal/rr;->r:Ljava/util/List;
if-eqz v2, :cond_3c
iget-object v2, p1, Lcom/google/android/gms/internal/rr;->r:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_5
:cond_3c
move v0, v1
goto :goto_5
:cond_3e
iget-object v2, p0, Lcom/google/android/gms/internal/rr;->b:Lcom/google/android/gms/internal/cl;
iget-object v3, p1, Lcom/google/android/gms/internal/rr;->b:Lcom/google/android/gms/internal/cl;
invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/cl;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_1c
goto :goto_5
:cond_49
iget-object v2, p0, Lcom/google/android/gms/internal/rr;->c:Lcom/google/android/gms/internal/cp;
iget-object v3, p1, Lcom/google/android/gms/internal/rr;->c:Lcom/google/android/gms/internal/cp;
invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/cp;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_24
goto :goto_5
:cond_54
iget-object v0, p0, Lcom/google/android/gms/internal/rr;->r:Ljava/util/List;
iget-object v1, p1, Lcom/google/android/gms/internal/rr;->r:Ljava/util/List;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_5
.end method
.method public hashCode()I
.registers 7
const/4 v1, 0x0
iget-wide v2, p0, Lcom/google/android/gms/internal/rr;->a:J
iget-wide v4, p0, Lcom/google/android/gms/internal/rr;->a:J
const/16 v0, 0x20
ushr-long/2addr v4, v0
xor-long/2addr v2, v4
long-to-int v0, v2
add-int/lit16 v0, v0, 0x20f
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/google/android/gms/internal/rr;->b:Lcom/google/android/gms/internal/cl;
if-nez v0, :cond_2c
move v0, v1
:goto_13
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/google/android/gms/internal/rr;->c:Lcom/google/android/gms/internal/cp;
if-nez v0, :cond_33
move v0, v1
:goto_1b
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/google/android/gms/internal/rr;->r:Ljava/util/List;
if-eqz v2, :cond_2a
iget-object v2, p0, Lcom/google/android/gms/internal/rr;->r:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_3a
:cond_2a
:goto_2a
add-int/2addr v0, v1
return v0
:cond_2c
iget-object v0, p0, Lcom/google/android/gms/internal/rr;->b:Lcom/google/android/gms/internal/cl;
invoke-virtual {v0}, Lcom/google/android/gms/internal/cl;->hashCode()I
move-result v0
goto :goto_13
:cond_33
iget-object v0, p0, Lcom/google/android/gms/internal/rr;->c:Lcom/google/android/gms/internal/cp;
invoke-virtual {v0}, Lcom/google/android/gms/internal/cp;->hashCode()I
move-result v0
goto :goto_1b
:cond_3a
iget-object v1, p0, Lcom/google/android/gms/internal/rr;->r:Ljava/util/List;
invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
move-result v1
goto :goto_2a
.end method