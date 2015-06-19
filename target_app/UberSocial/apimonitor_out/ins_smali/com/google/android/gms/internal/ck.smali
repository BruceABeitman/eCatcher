.class public final Lcom/google/android/gms/internal/ck;
.super Lcom/google/android/gms/internal/so;
.field private static volatile c:[Lcom/google/android/gms/internal/ck;
.field public a:I
.field public b:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/internal/so;-><init>()V
invoke-virtual {p0}, Lcom/google/android/gms/internal/ck;->d()Lcom/google/android/gms/internal/ck;
return-void
.end method
.method public static c()[Lcom/google/android/gms/internal/ck;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/ck;->c:[Lcom/google/android/gms/internal/ck;
if-nez v0, :cond_11
sget-object v1, Lcom/google/android/gms/internal/sq;->a:Ljava/lang/Object;
monitor-enter v1
:try_start_7
sget-object v0, Lcom/google/android/gms/internal/ck;->c:[Lcom/google/android/gms/internal/ck;
if-nez v0, :cond_10
const/4 v0, 0x0
new-array v0, v0, [Lcom/google/android/gms/internal/ck;
sput-object v0, Lcom/google/android/gms/internal/ck;->c:[Lcom/google/android/gms/internal/ck;
:cond_10
monitor-exit v1
:cond_11
:try_end_11
.catchall {:try_start_7 .. :try_end_11} :catchall_14
sget-object v0, Lcom/google/android/gms/internal/ck;->c:[Lcom/google/android/gms/internal/ck;
return-object v0
:catchall_14
move-exception v0
:try_start_15
monitor-exit v1
:try_end_16
.catchall {:try_start_15 .. :try_end_16} :catchall_14
throw v0
.end method
.method public a(Lcom/google/android/gms/internal/sj;)Lcom/google/android/gms/internal/ck;
.registers 3
:goto_0
:cond_0
invoke-virtual {p1}, Lcom/google/android/gms/internal/sj;->a()I
move-result v0
sparse-switch v0, :sswitch_data_1c
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ck;->a(Lcom/google/android/gms/internal/sj;I)Z
move-result v0
if-nez v0, :cond_0
:sswitch_d
return-object p0
:sswitch_e
invoke-virtual {p1}, Lcom/google/android/gms/internal/sj;->e()I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/ck;->a:I
goto :goto_0
:sswitch_15
invoke-virtual {p1}, Lcom/google/android/gms/internal/sj;->e()I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/ck;->b:I
goto :goto_0
:sswitch_data_1c
.sparse-switch
0x0 -> :sswitch_d
0x8 -> :sswitch_e
0x10 -> :sswitch_15
.end sparse-switch
.end method
.method public a(Lcom/google/android/gms/internal/sk;)V
.registers 4
const/4 v0, 0x1
iget v1, p0, Lcom/google/android/gms/internal/ck;->a:I
invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/sk;->a(II)V
const/4 v0, 0x2
iget v1, p0, Lcom/google/android/gms/internal/ck;->b:I
invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/sk;->a(II)V
invoke-super {p0, p1}, Lcom/google/android/gms/internal/so;->a(Lcom/google/android/gms/internal/sk;)V
return-void
.end method
.method public b()I
.registers 4
invoke-super {p0}, Lcom/google/android/gms/internal/so;->b()I
move-result v0
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/internal/ck;->a:I
invoke-static {v1, v2}, Lcom/google/android/gms/internal/sk;->b(II)I
move-result v1
add-int/2addr v0, v1
const/4 v1, 0x2
iget v2, p0, Lcom/google/android/gms/internal/ck;->b:I
invoke-static {v1, v2}, Lcom/google/android/gms/internal/sk;->b(II)I
move-result v1
add-int/2addr v0, v1
iput v0, p0, Lcom/google/android/gms/internal/ck;->s:I
return v0
.end method
.method public synthetic b(Lcom/google/android/gms/internal/sj;)Lcom/google/android/gms/internal/ss;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ck;->a(Lcom/google/android/gms/internal/sj;)Lcom/google/android/gms/internal/ck;
move-result-object v0
return-object v0
.end method
.method public d()Lcom/google/android/gms/internal/ck;
.registers 2
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/internal/ck;->a:I
iput v0, p0, Lcom/google/android/gms/internal/ck;->b:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/ck;->r:Ljava/util/List;
const/4 v0, -0x1
iput v0, p0, Lcom/google/android/gms/internal/ck;->s:I
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
instance-of v2, p1, Lcom/google/android/gms/internal/ck;
if-eqz v2, :cond_5
check-cast p1, Lcom/google/android/gms/internal/ck;
iget v2, p0, Lcom/google/android/gms/internal/ck;->a:I
iget v3, p1, Lcom/google/android/gms/internal/ck;->a:I
if-ne v2, v3, :cond_5
iget v2, p0, Lcom/google/android/gms/internal/ck;->b:I
iget v3, p1, Lcom/google/android/gms/internal/ck;->b:I
if-ne v2, v3, :cond_5
iget-object v2, p0, Lcom/google/android/gms/internal/ck;->r:Ljava/util/List;
if-eqz v2, :cond_24
iget-object v2, p0, Lcom/google/android/gms/internal/ck;->r:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_32
:cond_24
iget-object v2, p1, Lcom/google/android/gms/internal/ck;->r:Ljava/util/List;
if-eqz v2, :cond_30
iget-object v2, p1, Lcom/google/android/gms/internal/ck;->r:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_5
:cond_30
move v0, v1
goto :goto_5
:cond_32
iget-object v0, p0, Lcom/google/android/gms/internal/ck;->r:Ljava/util/List;
iget-object v1, p1, Lcom/google/android/gms/internal/ck;->r:Ljava/util/List;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_5
.end method
.method public hashCode()I
.registers 3
iget v0, p0, Lcom/google/android/gms/internal/ck;->a:I
add-int/lit16 v0, v0, 0x20f
mul-int/lit8 v0, v0, 0x1f
iget v1, p0, Lcom/google/android/gms/internal/ck;->b:I
add-int/2addr v0, v1
mul-int/lit8 v1, v0, 0x1f
iget-object v0, p0, Lcom/google/android/gms/internal/ck;->r:Ljava/util/List;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/google/android/gms/internal/ck;->r:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_1a
:cond_17
const/4 v0, 0x0
:goto_18
add-int/2addr v0, v1
return v0
:cond_1a
iget-object v0, p0, Lcom/google/android/gms/internal/ck;->r:Ljava/util/List;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
goto :goto_18
.end method