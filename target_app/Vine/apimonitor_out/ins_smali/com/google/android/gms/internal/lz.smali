.class public final Lcom/google/android/gms/internal/lz;
.super Ljava/lang/Object;
.field private amK:I
.field private amL:I
.field private amM:I
.field private amN:I
.field private amO:I
.field private amP:I
.field private amQ:I
.field private amR:I
.field private amS:I
.field private final buffer:[B
.method private constructor <init>([BII)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const v0, 0x7fffffff
iput v0, p0, Lcom/google/android/gms/internal/lz;->amP:I
const/16 v0, 0x40
iput v0, p0, Lcom/google/android/gms/internal/lz;->amR:I
const/high16 v0, 0x400
iput v0, p0, Lcom/google/android/gms/internal/lz;->amS:I
iput-object p1, p0, Lcom/google/android/gms/internal/lz;->buffer:[B
iput p2, p0, Lcom/google/android/gms/internal/lz;->amK:I
add-int v0, p2, p3
iput v0, p0, Lcom/google/android/gms/internal/lz;->amL:I
iput p2, p0, Lcom/google/android/gms/internal/lz;->amN:I
return-void
.end method
.method public static A(J)J
.registers 6
const/4 v0, 0x1
ushr-long v0, p0, v0
const-wide/16 v2, 0x1
and-long/2addr v2, p0
neg-long v2, v2
xor-long/2addr v0, v2
return-wide v0
.end method
.method public static a([BII)Lcom/google/android/gms/internal/lz;
.registers 4
new-instance v0, Lcom/google/android/gms/internal/lz;
invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/lz;-><init>([BII)V
return-object v0
.end method
.method public static ew(I)I
.registers 3
ushr-int/lit8 v0, p0, 0x1
and-int/lit8 v1, p0, 0x1
neg-int v1, v1
xor-int/2addr v0, v1
return v0
.end method
.method private nH()V
.registers 3
iget v0, p0, Lcom/google/android/gms/internal/lz;->amL:I
iget v1, p0, Lcom/google/android/gms/internal/lz;->amM:I
add-int/2addr v0, v1
iput v0, p0, Lcom/google/android/gms/internal/lz;->amL:I
iget v0, p0, Lcom/google/android/gms/internal/lz;->amL:I
iget v1, p0, Lcom/google/android/gms/internal/lz;->amP:I
if-le v0, v1, :cond_1a
iget v1, p0, Lcom/google/android/gms/internal/lz;->amP:I
sub-int/2addr v0, v1
iput v0, p0, Lcom/google/android/gms/internal/lz;->amM:I
iget v0, p0, Lcom/google/android/gms/internal/lz;->amL:I
iget v1, p0, Lcom/google/android/gms/internal/lz;->amM:I
sub-int/2addr v0, v1
iput v0, p0, Lcom/google/android/gms/internal/lz;->amL:I
:goto_19
return-void
:cond_1a
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/internal/lz;->amM:I
goto :goto_19
.end method
.method public static p([B)Lcom/google/android/gms/internal/lz;
.registers 3
const/4 v0, 0x0
array-length v1, p0
invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/lz;->a([BII)Lcom/google/android/gms/internal/lz;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/google/android/gms/internal/mf;)V
.registers 5
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nD()I
move-result v0
iget v1, p0, Lcom/google/android/gms/internal/lz;->amQ:I
iget v2, p0, Lcom/google/android/gms/internal/lz;->amR:I
if-lt v1, v2, :cond_f
invoke-static {}, Lcom/google/android/gms/internal/me;->nT()Lcom/google/android/gms/internal/me;
move-result-object v0
throw v0
:cond_f
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->ex(I)I
move-result v0
iget v1, p0, Lcom/google/android/gms/internal/lz;->amQ:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/google/android/gms/internal/lz;->amQ:I
invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mf;->b(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/mf;
const/4 v1, 0x0
invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/lz;->eu(I)V
iget v1, p0, Lcom/google/android/gms/internal/lz;->amQ:I
add-int/lit8 v1, v1, -0x1
iput v1, p0, Lcom/google/android/gms/internal/lz;->amQ:I
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->ey(I)V
return-void
.end method
.method public a(Lcom/google/android/gms/internal/mf;I)V
.registers 5
iget v0, p0, Lcom/google/android/gms/internal/lz;->amQ:I
iget v1, p0, Lcom/google/android/gms/internal/lz;->amR:I
if-lt v0, v1, :cond_b
invoke-static {}, Lcom/google/android/gms/internal/me;->nT()Lcom/google/android/gms/internal/me;
move-result-object v0
throw v0
:cond_b
iget v0, p0, Lcom/google/android/gms/internal/lz;->amQ:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/google/android/gms/internal/lz;->amQ:I
invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mf;->b(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/mf;
const/4 v0, 0x4
invoke-static {p2, v0}, Lcom/google/android/gms/internal/mi;->u(II)I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->eu(I)V
iget v0, p0, Lcom/google/android/gms/internal/lz;->amQ:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lcom/google/android/gms/internal/lz;->amQ:I
return-void
.end method
.method public eA(I)[B
.registers 6
if-gez p1, :cond_7
invoke-static {}, Lcom/google/android/gms/internal/me;->nO()Lcom/google/android/gms/internal/me;
move-result-object v0
throw v0
:cond_7
iget v0, p0, Lcom/google/android/gms/internal/lz;->amN:I
add-int/2addr v0, p1
iget v1, p0, Lcom/google/android/gms/internal/lz;->amP:I
if-le v0, v1, :cond_1b
iget v0, p0, Lcom/google/android/gms/internal/lz;->amP:I
iget v1, p0, Lcom/google/android/gms/internal/lz;->amN:I
sub-int/2addr v0, v1
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->eB(I)V
invoke-static {}, Lcom/google/android/gms/internal/me;->nN()Lcom/google/android/gms/internal/me;
move-result-object v0
throw v0
:cond_1b
iget v0, p0, Lcom/google/android/gms/internal/lz;->amL:I
iget v1, p0, Lcom/google/android/gms/internal/lz;->amN:I
sub-int/2addr v0, v1
if-gt p1, v0, :cond_32
new-array v0, p1, [B
iget-object v1, p0, Lcom/google/android/gms/internal/lz;->buffer:[B
iget v2, p0, Lcom/google/android/gms/internal/lz;->amN:I
const/4 v3, 0x0
invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v1, p0, Lcom/google/android/gms/internal/lz;->amN:I
add-int/2addr v1, p1
iput v1, p0, Lcom/google/android/gms/internal/lz;->amN:I
return-object v0
:cond_32
invoke-static {}, Lcom/google/android/gms/internal/me;->nN()Lcom/google/android/gms/internal/me;
move-result-object v0
throw v0
.end method
.method public eB(I)V
.registers 4
if-gez p1, :cond_7
invoke-static {}, Lcom/google/android/gms/internal/me;->nO()Lcom/google/android/gms/internal/me;
move-result-object v0
throw v0
:cond_7
iget v0, p0, Lcom/google/android/gms/internal/lz;->amN:I
add-int/2addr v0, p1
iget v1, p0, Lcom/google/android/gms/internal/lz;->amP:I
if-le v0, v1, :cond_1b
iget v0, p0, Lcom/google/android/gms/internal/lz;->amP:I
iget v1, p0, Lcom/google/android/gms/internal/lz;->amN:I
sub-int/2addr v0, v1
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->eB(I)V
invoke-static {}, Lcom/google/android/gms/internal/me;->nN()Lcom/google/android/gms/internal/me;
move-result-object v0
throw v0
:cond_1b
iget v0, p0, Lcom/google/android/gms/internal/lz;->amL:I
iget v1, p0, Lcom/google/android/gms/internal/lz;->amN:I
sub-int/2addr v0, v1
if-gt p1, v0, :cond_28
iget v0, p0, Lcom/google/android/gms/internal/lz;->amN:I
add-int/2addr v0, p1
iput v0, p0, Lcom/google/android/gms/internal/lz;->amN:I
return-void
:cond_28
invoke-static {}, Lcom/google/android/gms/internal/me;->nN()Lcom/google/android/gms/internal/me;
move-result-object v0
throw v0
.end method
.method public eu(I)V
.registers 3
iget v0, p0, Lcom/google/android/gms/internal/lz;->amO:I
if-eq v0, p1, :cond_9
invoke-static {}, Lcom/google/android/gms/internal/me;->nR()Lcom/google/android/gms/internal/me;
move-result-object v0
throw v0
:cond_9
return-void
.end method
.method public ev(I)Z
.registers 5
const/4 v0, 0x1
invoke-static {p1}, Lcom/google/android/gms/internal/mi;->eN(I)I
move-result v1
packed-switch v1, :pswitch_data_34
invoke-static {}, Lcom/google/android/gms/internal/me;->nS()Lcom/google/android/gms/internal/me;
move-result-object v0
throw v0
:pswitch_d
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nz()I
:goto_10
return v0
:pswitch_11
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nG()J
goto :goto_10
:pswitch_15
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nD()I
move-result v1
invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/lz;->eB(I)V
goto :goto_10
:pswitch_1d
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nx()V
invoke-static {p1}, Lcom/google/android/gms/internal/mi;->eO(I)I
move-result v1
const/4 v2, 0x4
invoke-static {v1, v2}, Lcom/google/android/gms/internal/mi;->u(II)I
move-result v1
invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/lz;->eu(I)V
goto :goto_10
:pswitch_2d
const/4 v0, 0x0
goto :goto_10
:pswitch_2f
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nF()I
goto :goto_10
nop
:pswitch_data_34
.packed-switch 0x0
:pswitch_d
:pswitch_11
:pswitch_15
:pswitch_1d
:pswitch_2d
:pswitch_2f
.end packed-switch
.end method
.method public ex(I)I
.registers 4
if-gez p1, :cond_7
invoke-static {}, Lcom/google/android/gms/internal/me;->nO()Lcom/google/android/gms/internal/me;
move-result-object v0
throw v0
:cond_7
iget v0, p0, Lcom/google/android/gms/internal/lz;->amN:I
add-int/2addr v0, p1
iget v1, p0, Lcom/google/android/gms/internal/lz;->amP:I
if-le v0, v1, :cond_13
invoke-static {}, Lcom/google/android/gms/internal/me;->nN()Lcom/google/android/gms/internal/me;
move-result-object v0
throw v0
:cond_13
iput v0, p0, Lcom/google/android/gms/internal/lz;->amP:I
invoke-direct {p0}, Lcom/google/android/gms/internal/lz;->nH()V
return v1
.end method
.method public ey(I)V
.registers 2
iput p1, p0, Lcom/google/android/gms/internal/lz;->amP:I
invoke-direct {p0}, Lcom/google/android/gms/internal/lz;->nH()V
return-void
.end method
.method public ez(I)V
.registers 6
iget v0, p0, Lcom/google/android/gms/internal/lz;->amN:I
iget v1, p0, Lcom/google/android/gms/internal/lz;->amK:I
sub-int/2addr v0, v1
if-le p1, v0, :cond_2f
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Position "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " is beyond current "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/google/android/gms/internal/lz;->amN:I
iget v3, p0, Lcom/google/android/gms/internal/lz;->amK:I
sub-int/2addr v2, v3
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2f
if-gez p1, :cond_4a
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Bad position "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_4a
iget v0, p0, Lcom/google/android/gms/internal/lz;->amK:I
add-int/2addr v0, p1
iput v0, p0, Lcom/google/android/gms/internal/lz;->amN:I
return-void
.end method
.method public getPosition()I
.registers 3
iget v0, p0, Lcom/google/android/gms/internal/lz;->amN:I
iget v1, p0, Lcom/google/android/gms/internal/lz;->amK:I
sub-int/2addr v0, v1
return v0
.end method
.method public nA()Z
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nD()I
move-result v0
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public nB()I
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nD()I
move-result v0
invoke-static {v0}, Lcom/google/android/gms/internal/lz;->ew(I)I
move-result v0
return v0
.end method
.method public nC()J
.registers 3
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nE()J
move-result-wide v0
invoke-static {v0, v1}, Lcom/google/android/gms/internal/lz;->A(J)J
move-result-wide v0
return-wide v0
.end method
.method public nD()I
.registers 4
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B
move-result v0
if-ltz v0, :cond_7
:goto_6
:cond_6
return v0
:cond_7
and-int/lit8 v0, v0, 0x7f
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B
move-result v1
if-ltz v1, :cond_13
shl-int/lit8 v1, v1, 0x7
or-int/2addr v0, v1
goto :goto_6
:cond_13
and-int/lit8 v1, v1, 0x7f
shl-int/lit8 v1, v1, 0x7
or-int/2addr v0, v1
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B
move-result v1
if-ltz v1, :cond_22
shl-int/lit8 v1, v1, 0xe
or-int/2addr v0, v1
goto :goto_6
:cond_22
and-int/lit8 v1, v1, 0x7f
shl-int/lit8 v1, v1, 0xe
or-int/2addr v0, v1
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B
move-result v1
if-ltz v1, :cond_31
shl-int/lit8 v1, v1, 0x15
or-int/2addr v0, v1
goto :goto_6
:cond_31
and-int/lit8 v1, v1, 0x7f
shl-int/lit8 v1, v1, 0x15
or-int/2addr v0, v1
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B
move-result v1
shl-int/lit8 v2, v1, 0x1c
or-int/2addr v0, v2
if-gez v1, :cond_6
const/4 v1, 0x0
:goto_40
const/4 v2, 0x5
if-ge v1, v2, :cond_4c
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B
move-result v2
if-gez v2, :cond_6
add-int/lit8 v1, v1, 0x1
goto :goto_40
:cond_4c
invoke-static {}, Lcom/google/android/gms/internal/me;->nP()Lcom/google/android/gms/internal/me;
move-result-object v0
throw v0
.end method
.method public nE()J
.registers 7
const/4 v2, 0x0
const-wide/16 v0, 0x0
:goto_3
const/16 v3, 0x40
if-ge v2, v3, :cond_18
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B
move-result v3
and-int/lit8 v4, v3, 0x7f
int-to-long v4, v4
shl-long/2addr v4, v2
or-long/2addr v0, v4
and-int/lit16 v3, v3, 0x80
if-nez v3, :cond_15
return-wide v0
:cond_15
add-int/lit8 v2, v2, 0x7
goto :goto_3
:cond_18
invoke-static {}, Lcom/google/android/gms/internal/me;->nP()Lcom/google/android/gms/internal/me;
move-result-object v0
throw v0
.end method
.method public nF()I
.registers 5
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B
move-result v0
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B
move-result v1
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B
move-result v2
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B
move-result v3
and-int/lit16 v0, v0, 0xff
and-int/lit16 v1, v1, 0xff
shl-int/lit8 v1, v1, 0x8
or-int/2addr v0, v1
and-int/lit16 v1, v2, 0xff
shl-int/lit8 v1, v1, 0x10
or-int/2addr v0, v1
and-int/lit16 v1, v3, 0xff
shl-int/lit8 v1, v1, 0x18
or-int/2addr v0, v1
return v0
.end method
.method public nG()J
.registers 14
const-wide/16 v11, 0xff
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B
move-result v0
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B
move-result v1
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B
move-result v2
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B
move-result v3
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B
move-result v4
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B
move-result v5
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B
move-result v6
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B
move-result v7
int-to-long v8, v0
and-long/2addr v8, v11
int-to-long v0, v1
and-long/2addr v0, v11
const/16 v10, 0x8
shl-long/2addr v0, v10
or-long/2addr v0, v8
int-to-long v8, v2
and-long/2addr v8, v11
const/16 v2, 0x10
shl-long/2addr v8, v2
or-long/2addr v0, v8
int-to-long v2, v3
and-long/2addr v2, v11
const/16 v8, 0x18
shl-long/2addr v2, v8
or-long/2addr v0, v2
int-to-long v2, v4
and-long/2addr v2, v11
const/16 v4, 0x20
shl-long/2addr v2, v4
or-long/2addr v0, v2
int-to-long v2, v5
and-long/2addr v2, v11
const/16 v4, 0x28
shl-long/2addr v2, v4
or-long/2addr v0, v2
int-to-long v2, v6
and-long/2addr v2, v11
const/16 v4, 0x30
shl-long/2addr v2, v4
or-long/2addr v0, v2
int-to-long v2, v7
and-long/2addr v2, v11
const/16 v4, 0x38
shl-long/2addr v2, v4
or-long/2addr v0, v2
return-wide v0
.end method
.method public nI()I
.registers 3
iget v0, p0, Lcom/google/android/gms/internal/lz;->amP:I
const v1, 0x7fffffff
if-ne v0, v1, :cond_9
const/4 v0, -0x1
:goto_8
return v0
:cond_9
iget v0, p0, Lcom/google/android/gms/internal/lz;->amN:I
iget v1, p0, Lcom/google/android/gms/internal/lz;->amP:I
sub-int v0, v1, v0
goto :goto_8
.end method
.method public nJ()Z
.registers 3
iget v0, p0, Lcom/google/android/gms/internal/lz;->amN:I
iget v1, p0, Lcom/google/android/gms/internal/lz;->amL:I
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public nK()B
.registers 4
iget v0, p0, Lcom/google/android/gms/internal/lz;->amN:I
iget v1, p0, Lcom/google/android/gms/internal/lz;->amL:I
if-ne v0, v1, :cond_b
invoke-static {}, Lcom/google/android/gms/internal/me;->nN()Lcom/google/android/gms/internal/me;
move-result-object v0
throw v0
:cond_b
iget-object v0, p0, Lcom/google/android/gms/internal/lz;->buffer:[B
iget v1, p0, Lcom/google/android/gms/internal/lz;->amN:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/google/android/gms/internal/lz;->amN:I
aget-byte v0, v0, v1
return v0
.end method
.method public nw()I
.registers 3
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nJ()Z
move-result v1
if-eqz v1, :cond_a
iput v0, p0, Lcom/google/android/gms/internal/lz;->amO:I
:goto_9
return v0
:cond_a
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nD()I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/lz;->amO:I
iget v0, p0, Lcom/google/android/gms/internal/lz;->amO:I
if-nez v0, :cond_19
invoke-static {}, Lcom/google/android/gms/internal/me;->nQ()Lcom/google/android/gms/internal/me;
move-result-object v0
throw v0
:cond_19
iget v0, p0, Lcom/google/android/gms/internal/lz;->amO:I
goto :goto_9
.end method
.method public nx()V
.registers 2
:cond_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nw()I
move-result v0
if-eqz v0, :cond_c
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->ev(I)Z
move-result v0
if-nez v0, :cond_0
:cond_c
return-void
.end method
.method public ny()J
.registers 3
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nE()J
move-result-wide v0
return-wide v0
.end method
.method public nz()I
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nD()I
move-result v0
return v0
.end method
.method public o(II)[B
.registers 7
if-nez p2, :cond_5
sget-object v0, Lcom/google/android/gms/internal/mi;->anh:[B
:goto_4
return-object v0
:cond_5
new-array v0, p2, [B
iget v1, p0, Lcom/google/android/gms/internal/lz;->amK:I
add-int/2addr v1, p1
iget-object v2, p0, Lcom/google/android/gms/internal/lz;->buffer:[B
const/4 v3, 0x0
invoke-static {v2, v1, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
goto :goto_4
.end method
.method public readBytes()[B
.registers 6
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nD()I
move-result v1
iget v0, p0, Lcom/google/android/gms/internal/lz;->amL:I
iget v2, p0, Lcom/google/android/gms/internal/lz;->amN:I
sub-int/2addr v0, v2
if-gt v1, v0, :cond_1d
if-lez v1, :cond_1d
new-array v0, v1, [B
iget-object v2, p0, Lcom/google/android/gms/internal/lz;->buffer:[B
iget v3, p0, Lcom/google/android/gms/internal/lz;->amN:I
const/4 v4, 0x0
invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v2, p0, Lcom/google/android/gms/internal/lz;->amN:I
add-int/2addr v1, v2
iput v1, p0, Lcom/google/android/gms/internal/lz;->amN:I
:goto_1c
return-object v0
:cond_1d
invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/lz;->eA(I)[B
move-result-object v0
goto :goto_1c
.end method
.method public readDouble()D
.registers 3
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nG()J
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D
move-result-wide v0
return-wide v0
.end method
.method public readFloat()F
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nF()I
move-result v0
invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F
move-result v0
return v0
.end method
.method public readString()Ljava/lang/String;
.registers 6
invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nD()I
move-result v1
iget v0, p0, Lcom/google/android/gms/internal/lz;->amL:I
iget v2, p0, Lcom/google/android/gms/internal/lz;->amN:I
sub-int/2addr v0, v2
if-gt v1, v0, :cond_1e
if-lez v1, :cond_1e
new-instance v0, Ljava/lang/String;
iget-object v2, p0, Lcom/google/android/gms/internal/lz;->buffer:[B
iget v3, p0, Lcom/google/android/gms/internal/lz;->amN:I
const-string v4, "UTF-8"
invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
iget v2, p0, Lcom/google/android/gms/internal/lz;->amN:I
add-int/2addr v1, v2
iput v1, p0, Lcom/google/android/gms/internal/lz;->amN:I
:goto_1d
return-object v0
:cond_1e
new-instance v0, Ljava/lang/String;
invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/lz;->eA(I)[B
move-result-object v1
const-string v2, "UTF-8"
invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
goto :goto_1d
.end method