.class public final Lcom/google/android/gms/internal/ma;
.super Ljava/lang/Object;
.field private final amT:I
.field private final buffer:[B
.field private position:I
.method private constructor <init>([BII)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/ma;->buffer:[B
iput p2, p0, Lcom/google/android/gms/internal/ma;->position:I
add-int v0, p2, p3
iput v0, p0, Lcom/google/android/gms/internal/ma;->amT:I
return-void
.end method
.method public static D(J)I
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/internal/ma;->G(J)I
move-result v0
return v0
.end method
.method public static E(J)I
.registers 4
invoke-static {p0, p1}, Lcom/google/android/gms/internal/ma;->I(J)J
move-result-wide v0
invoke-static {v0, v1}, Lcom/google/android/gms/internal/ma;->G(J)I
move-result v0
return v0
.end method
.method public static G(J)I
.registers 6
const-wide/16 v2, 0x0
const-wide/16 v0, -0x80
and-long/2addr v0, p0
cmp-long v0, v0, v2
if-nez v0, :cond_b
const/4 v0, 0x1
:goto_a
return v0
:cond_b
const-wide/16 v0, -0x4000
and-long/2addr v0, p0
cmp-long v0, v0, v2
if-nez v0, :cond_14
const/4 v0, 0x2
goto :goto_a
:cond_14
const-wide/32 v0, -0x200000
and-long/2addr v0, p0
cmp-long v0, v0, v2
if-nez v0, :cond_1e
const/4 v0, 0x3
goto :goto_a
:cond_1e
const-wide/32 v0, -0x10000000
and-long/2addr v0, p0
cmp-long v0, v0, v2
if-nez v0, :cond_28
const/4 v0, 0x4
goto :goto_a
:cond_28
const-wide v0, -0x800000000L
and-long/2addr v0, p0
cmp-long v0, v0, v2
if-nez v0, :cond_34
const/4 v0, 0x5
goto :goto_a
:cond_34
const-wide v0, -0x40000000000L
and-long/2addr v0, p0
cmp-long v0, v0, v2
if-nez v0, :cond_40
const/4 v0, 0x6
goto :goto_a
:cond_40
const-wide/high16 v0, -0x2
and-long/2addr v0, p0
cmp-long v0, v0, v2
if-nez v0, :cond_49
const/4 v0, 0x7
goto :goto_a
:cond_49
const-wide/high16 v0, -0x100
and-long/2addr v0, p0
cmp-long v0, v0, v2
if-nez v0, :cond_53
const/16 v0, 0x8
goto :goto_a
:cond_53
const-wide/high16 v0, -0x8000
and-long/2addr v0, p0
cmp-long v0, v0, v2
if-nez v0, :cond_5d
const/16 v0, 0x9
goto :goto_a
:cond_5d
const/16 v0, 0xa
goto :goto_a
.end method
.method public static I(J)J
.registers 6
const/4 v0, 0x1
shl-long v0, p0, v0
const/16 v2, 0x3f
shr-long v2, p0, v2
xor-long/2addr v0, v2
return-wide v0
.end method
.method public static J(Z)I
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public static b(ID)I
.registers 5
invoke-static {p0}, Lcom/google/android/gms/internal/ma;->eH(I)I
move-result v0
invoke-static {p1, p2}, Lcom/google/android/gms/internal/ma;->f(D)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public static b(ILcom/google/android/gms/internal/mf;)I
.registers 4
invoke-static {p0}, Lcom/google/android/gms/internal/ma;->eH(I)I
move-result v0
invoke-static {p1}, Lcom/google/android/gms/internal/ma;->c(Lcom/google/android/gms/internal/mf;)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public static b(IZ)I
.registers 4
invoke-static {p0}, Lcom/google/android/gms/internal/ma;->eH(I)I
move-result v0
invoke-static {p1}, Lcom/google/android/gms/internal/ma;->J(Z)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public static b(I[B)I
.registers 4
invoke-static {p0}, Lcom/google/android/gms/internal/ma;->eH(I)I
move-result v0
invoke-static {p1}, Lcom/google/android/gms/internal/ma;->s([B)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public static b([BII)Lcom/google/android/gms/internal/ma;
.registers 4
new-instance v0, Lcom/google/android/gms/internal/ma;
invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ma;-><init>([BII)V
return-object v0
.end method
.method public static c(IF)I
.registers 4
invoke-static {p0}, Lcom/google/android/gms/internal/ma;->eH(I)I
move-result v0
invoke-static {p1}, Lcom/google/android/gms/internal/ma;->e(F)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public static c(Lcom/google/android/gms/internal/mf;)I
.registers 3
invoke-virtual {p0}, Lcom/google/android/gms/internal/mf;->nV()I
move-result v0
invoke-static {v0}, Lcom/google/android/gms/internal/ma;->eJ(I)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public static cz(Ljava/lang/String;)I
.registers 3
:try_start_0
const-string v0, "UTF-8"
invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v0
array-length v1, v0
invoke-static {v1}, Lcom/google/android/gms/internal/ma;->eJ(I)I
move-result v1
array-length v0, v0
:try_end_c
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_c} :catch_e
add-int/2addr v0, v1
return v0
:catch_e
move-exception v0
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "UTF-8 not supported."
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public static d(IJ)I
.registers 5
invoke-static {p0}, Lcom/google/android/gms/internal/ma;->eH(I)I
move-result v0
invoke-static {p1, p2}, Lcom/google/android/gms/internal/ma;->D(J)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public static e(F)I
.registers 2
const/4 v0, 0x4
return v0
.end method
.method public static e(IJ)I
.registers 5
invoke-static {p0}, Lcom/google/android/gms/internal/ma;->eH(I)I
move-result v0
invoke-static {p1, p2}, Lcom/google/android/gms/internal/ma;->E(J)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public static eE(I)I
.registers 2
if-ltz p0, :cond_7
invoke-static {p0}, Lcom/google/android/gms/internal/ma;->eJ(I)I
move-result v0
:goto_6
return v0
:cond_7
const/16 v0, 0xa
goto :goto_6
.end method
.method public static eF(I)I
.registers 2
invoke-static {p0}, Lcom/google/android/gms/internal/ma;->eL(I)I
move-result v0
invoke-static {v0}, Lcom/google/android/gms/internal/ma;->eJ(I)I
move-result v0
return v0
.end method
.method public static eH(I)I
.registers 2
const/4 v0, 0x0
invoke-static {p0, v0}, Lcom/google/android/gms/internal/mi;->u(II)I
move-result v0
invoke-static {v0}, Lcom/google/android/gms/internal/ma;->eJ(I)I
move-result v0
return v0
.end method
.method public static eJ(I)I
.registers 2
and-int/lit8 v0, p0, -0x80
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
and-int/lit16 v0, p0, -0x4000
if-nez v0, :cond_c
const/4 v0, 0x2
goto :goto_5
:cond_c
const/high16 v0, -0x20
and-int/2addr v0, p0
if-nez v0, :cond_13
const/4 v0, 0x3
goto :goto_5
:cond_13
const/high16 v0, -0x1000
and-int/2addr v0, p0
if-nez v0, :cond_1a
const/4 v0, 0x4
goto :goto_5
:cond_1a
const/4 v0, 0x5
goto :goto_5
.end method
.method public static eL(I)I
.registers 3
shl-int/lit8 v0, p0, 0x1
shr-int/lit8 v1, p0, 0x1f
xor-int/2addr v0, v1
return v0
.end method
.method public static f(D)I
.registers 3
const/16 v0, 0x8
return v0
.end method
.method public static h(ILjava/lang/String;)I
.registers 4
invoke-static {p0}, Lcom/google/android/gms/internal/ma;->eH(I)I
move-result v0
invoke-static {p1}, Lcom/google/android/gms/internal/ma;->cz(Ljava/lang/String;)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public static q([B)Lcom/google/android/gms/internal/ma;
.registers 3
const/4 v0, 0x0
array-length v1, p0
invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ma;->b([BII)Lcom/google/android/gms/internal/ma;
move-result-object v0
return-object v0
.end method
.method public static r(II)I
.registers 4
invoke-static {p0}, Lcom/google/android/gms/internal/ma;->eH(I)I
move-result v0
invoke-static {p1}, Lcom/google/android/gms/internal/ma;->eE(I)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public static s(II)I
.registers 4
invoke-static {p0}, Lcom/google/android/gms/internal/ma;->eH(I)I
move-result v0
invoke-static {p1}, Lcom/google/android/gms/internal/ma;->eF(I)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public static s([B)I
.registers 3
array-length v0, p0
invoke-static {v0}, Lcom/google/android/gms/internal/ma;->eJ(I)I
move-result v0
array-length v1, p0
add-int/2addr v0, v1
return v0
.end method
.method public B(J)V
.registers 3
invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ma;->F(J)V
return-void
.end method
.method public C(J)V
.registers 5
invoke-static {p1, p2}, Lcom/google/android/gms/internal/ma;->I(J)J
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ma;->F(J)V
return-void
.end method
.method public F(J)V
.registers 7
:goto_0
const-wide/16 v0, -0x80
and-long/2addr v0, p1
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-nez v0, :cond_e
long-to-int v0, p1
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ma;->eG(I)V
return-void
:cond_e
long-to-int v0, p1
and-int/lit8 v0, v0, 0x7f
or-int/lit16 v0, v0, 0x80
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ma;->eG(I)V
const/4 v0, 0x7
ushr-long/2addr p1, v0
goto :goto_0
.end method
.method public H(J)V
.registers 5
long-to-int v0, p1
and-int/lit16 v0, v0, 0xff
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ma;->eG(I)V
const/16 v0, 0x8
shr-long v0, p1, v0
long-to-int v0, v0
and-int/lit16 v0, v0, 0xff
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ma;->eG(I)V
const/16 v0, 0x10
shr-long v0, p1, v0
long-to-int v0, v0
and-int/lit16 v0, v0, 0xff
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ma;->eG(I)V
const/16 v0, 0x18
shr-long v0, p1, v0
long-to-int v0, v0
and-int/lit16 v0, v0, 0xff
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ma;->eG(I)V
const/16 v0, 0x20
shr-long v0, p1, v0
long-to-int v0, v0
and-int/lit16 v0, v0, 0xff
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ma;->eG(I)V
const/16 v0, 0x28
shr-long v0, p1, v0
long-to-int v0, v0
and-int/lit16 v0, v0, 0xff
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ma;->eG(I)V
const/16 v0, 0x30
shr-long v0, p1, v0
long-to-int v0, v0
and-int/lit16 v0, v0, 0xff
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ma;->eG(I)V
const/16 v0, 0x38
shr-long v0, p1, v0
long-to-int v0, v0
and-int/lit16 v0, v0, 0xff
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ma;->eG(I)V
return-void
.end method
.method public I(Z)V
.registers 3
if-eqz p1, :cond_7
const/4 v0, 0x1
:goto_3
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ma;->eG(I)V
return-void
:cond_7
const/4 v0, 0x0
goto :goto_3
.end method
.method public a(ID)V
.registers 5
const/4 v0, 0x1
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ma;->t(II)V
invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ma;->e(D)V
return-void
.end method
.method public a(ILcom/google/android/gms/internal/mf;)V
.registers 4
const/4 v0, 0x2
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ma;->t(II)V
invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ma;->b(Lcom/google/android/gms/internal/mf;)V
return-void
.end method
.method public a(IZ)V
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ma;->t(II)V
invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ma;->I(Z)V
return-void
.end method
.method public a(I[B)V
.registers 4
const/4 v0, 0x2
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ma;->t(II)V
invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ma;->r([B)V
return-void
.end method
.method public b(B)V
.registers 5
iget v0, p0, Lcom/google/android/gms/internal/ma;->position:I
iget v1, p0, Lcom/google/android/gms/internal/ma;->amT:I
if-ne v0, v1, :cond_10
new-instance v0, Lcom/google/android/gms/internal/ma$a;
iget v1, p0, Lcom/google/android/gms/internal/ma;->position:I
iget v2, p0, Lcom/google/android/gms/internal/ma;->amT:I
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ma$a;-><init>(II)V
throw v0
:cond_10
iget-object v0, p0, Lcom/google/android/gms/internal/ma;->buffer:[B
iget v1, p0, Lcom/google/android/gms/internal/ma;->position:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/google/android/gms/internal/ma;->position:I
aput-byte p1, v0, v1
return-void
.end method
.method public b(IF)V
.registers 4
const/4 v0, 0x5
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ma;->t(II)V
invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ma;->d(F)V
return-void
.end method
.method public b(IJ)V
.registers 5
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ma;->t(II)V
invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ma;->B(J)V
return-void
.end method
.method public b(ILjava/lang/String;)V
.registers 4
const/4 v0, 0x2
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ma;->t(II)V
invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ma;->cy(Ljava/lang/String;)V
return-void
.end method
.method public b(Lcom/google/android/gms/internal/mf;)V
.registers 3
invoke-virtual {p1}, Lcom/google/android/gms/internal/mf;->nU()I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ma;->eI(I)V
invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mf;->a(Lcom/google/android/gms/internal/ma;)V
return-void
.end method
.method public c(IJ)V
.registers 5
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ma;->t(II)V
invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ma;->C(J)V
return-void
.end method
.method public c([BII)V
.registers 7
iget v0, p0, Lcom/google/android/gms/internal/ma;->amT:I
iget v1, p0, Lcom/google/android/gms/internal/ma;->position:I
sub-int/2addr v0, v1
if-lt v0, p3, :cond_14
iget-object v0, p0, Lcom/google/android/gms/internal/ma;->buffer:[B
iget v1, p0, Lcom/google/android/gms/internal/ma;->position:I
invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v0, p0, Lcom/google/android/gms/internal/ma;->position:I
add-int/2addr v0, p3
iput v0, p0, Lcom/google/android/gms/internal/ma;->position:I
return-void
:cond_14
new-instance v0, Lcom/google/android/gms/internal/ma$a;
iget v1, p0, Lcom/google/android/gms/internal/ma;->position:I
iget v2, p0, Lcom/google/android/gms/internal/ma;->amT:I
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ma$a;-><init>(II)V
throw v0
.end method
.method public cy(Ljava/lang/String;)V
.registers 4
const-string v0, "UTF-8"
invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v0
array-length v1, v0
invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ma;->eI(I)V
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ma;->t([B)V
return-void
.end method
.method public d(F)V
.registers 3
invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ma;->eK(I)V
return-void
.end method
.method public e(D)V
.registers 5
invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ma;->H(J)V
return-void
.end method
.method public eC(I)V
.registers 4
if-ltz p1, :cond_6
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ma;->eI(I)V
:goto_5
return-void
:cond_6
int-to-long v0, p1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ma;->F(J)V
goto :goto_5
.end method
.method public eD(I)V
.registers 3
invoke-static {p1}, Lcom/google/android/gms/internal/ma;->eL(I)I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ma;->eI(I)V
return-void
.end method
.method public eG(I)V
.registers 3
int-to-byte v0, p1
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ma;->b(B)V
return-void
.end method
.method public eI(I)V
.registers 3
:goto_0
and-int/lit8 v0, p1, -0x80
if-nez v0, :cond_8
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ma;->eG(I)V
return-void
:cond_8
and-int/lit8 v0, p1, 0x7f
or-int/lit16 v0, v0, 0x80
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ma;->eG(I)V
ushr-int/lit8 p1, p1, 0x7
goto :goto_0
.end method
.method public eK(I)V
.registers 3
and-int/lit16 v0, p1, 0xff
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ma;->eG(I)V
shr-int/lit8 v0, p1, 0x8
and-int/lit16 v0, v0, 0xff
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ma;->eG(I)V
shr-int/lit8 v0, p1, 0x10
and-int/lit16 v0, v0, 0xff
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ma;->eG(I)V
shr-int/lit8 v0, p1, 0x18
and-int/lit16 v0, v0, 0xff
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ma;->eG(I)V
return-void
.end method
.method public nL()I
.registers 3
iget v0, p0, Lcom/google/android/gms/internal/ma;->amT:I
iget v1, p0, Lcom/google/android/gms/internal/ma;->position:I
sub-int/2addr v0, v1
return v0
.end method
.method public nM()V
.registers 3
invoke-virtual {p0}, Lcom/google/android/gms/internal/ma;->nL()I
move-result v0
if-eqz v0, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Did not write as much data as expected."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
return-void
.end method
.method public p(II)V
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ma;->t(II)V
invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ma;->eC(I)V
return-void
.end method
.method public q(II)V
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ma;->t(II)V
invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ma;->eD(I)V
return-void
.end method
.method public r([B)V
.registers 3
array-length v0, p1
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ma;->eI(I)V
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ma;->t([B)V
return-void
.end method
.method public t(II)V
.registers 4
invoke-static {p1, p2}, Lcom/google/android/gms/internal/mi;->u(II)I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ma;->eI(I)V
return-void
.end method
.method public t([B)V
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ma;->c([BII)V
return-void
.end method