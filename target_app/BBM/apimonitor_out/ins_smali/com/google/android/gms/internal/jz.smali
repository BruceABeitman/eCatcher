.class public final Lcom/google/android/gms/internal/jz;
.super Ljava/lang/Object;
.field private final aad:I
.field private final buffer:[B
.field private position:I
.method private constructor <init>([BII)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/jz;->buffer:[B
iput p2, p0, Lcom/google/android/gms/internal/jz;->position:I
add-int v0, p2, p3
iput v0, p0, Lcom/google/android/gms/internal/jz;->aad:I
return-void
.end method
.method public static A(J)I
.registers 4
invoke-static {p0, p1}, Lcom/google/android/gms/internal/jz;->D(J)J
move-result-wide v0
invoke-static {v0, v1}, Lcom/google/android/gms/internal/jz;->C(J)I
move-result v0
return v0
.end method
.method public static B(Z)I
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public static C(J)I
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
.method public static D(J)J
.registers 6
const/4 v0, 0x1
shl-long v0, p0, v0
const/16 v2, 0x3f
shr-long v2, p0, v2
xor-long/2addr v0, v2
return-wide v0
.end method
.method public static b(IF)I
.registers 4
invoke-static {p0}, Lcom/google/android/gms/internal/jz;->cE(I)I
move-result v0
invoke-static {p1}, Lcom/google/android/gms/internal/jz;->e(F)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public static b(ILcom/google/android/gms/internal/ke;)I
.registers 4
invoke-static {p0}, Lcom/google/android/gms/internal/jz;->cE(I)I
move-result v0
invoke-static {p1}, Lcom/google/android/gms/internal/jz;->c(Lcom/google/android/gms/internal/ke;)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public static b(IZ)I
.registers 4
invoke-static {p0}, Lcom/google/android/gms/internal/jz;->cE(I)I
move-result v0
invoke-static {p1}, Lcom/google/android/gms/internal/jz;->B(Z)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public static b([BII)Lcom/google/android/gms/internal/jz;
.registers 4
new-instance v0, Lcom/google/android/gms/internal/jz;
invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/jz;-><init>([BII)V
return-object v0
.end method
.method public static bQ(Ljava/lang/String;)I
.registers 3
:try_start_0
const-string v0, "UTF-8"
invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v0
array-length v1, v0
invoke-static {v1}, Lcom/google/android/gms/internal/jz;->cG(I)I
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
.method public static c(Lcom/google/android/gms/internal/ke;)I
.registers 3
invoke-virtual {p0}, Lcom/google/android/gms/internal/ke;->c()I
move-result v0
invoke-static {v0}, Lcom/google/android/gms/internal/jz;->cG(I)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public static cC(I)I
.registers 2
if-ltz p0, :cond_7
invoke-static {p0}, Lcom/google/android/gms/internal/jz;->cG(I)I
move-result v0
:goto_6
return v0
:cond_7
const/16 v0, 0xa
goto :goto_6
.end method
.method public static cE(I)I
.registers 2
const/4 v0, 0x0
invoke-static {p0, v0}, Lcom/google/android/gms/internal/kh;->i(II)I
move-result v0
invoke-static {v0}, Lcom/google/android/gms/internal/jz;->cG(I)I
move-result v0
return v0
.end method
.method public static cG(I)I
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
.method public static d(IJ)I
.registers 5
invoke-static {p0}, Lcom/google/android/gms/internal/jz;->cE(I)I
move-result v0
invoke-static {p1, p2}, Lcom/google/android/gms/internal/jz;->z(J)I
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
invoke-static {p0}, Lcom/google/android/gms/internal/jz;->cE(I)I
move-result v0
invoke-static {p1, p2}, Lcom/google/android/gms/internal/jz;->A(J)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public static g(II)I
.registers 4
invoke-static {p0}, Lcom/google/android/gms/internal/jz;->cE(I)I
move-result v0
invoke-static {p1}, Lcom/google/android/gms/internal/jz;->cC(I)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public static g(ILjava/lang/String;)I
.registers 4
invoke-static {p0}, Lcom/google/android/gms/internal/jz;->cE(I)I
move-result v0
invoke-static {p1}, Lcom/google/android/gms/internal/jz;->bQ(Ljava/lang/String;)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public static o([B)Lcom/google/android/gms/internal/jz;
.registers 3
const/4 v0, 0x0
array-length v1, p0
invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/jz;->b([BII)Lcom/google/android/gms/internal/jz;
move-result-object v0
return-object v0
.end method
.method public static z(J)I
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/internal/jz;->C(J)I
move-result v0
return v0
.end method
.method public final A(Z)V
.registers 3
if-eqz p1, :cond_7
const/4 v0, 0x1
:goto_3
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jz;->cD(I)V
return-void
:cond_7
const/4 v0, 0x0
goto :goto_3
.end method
.method public final B(J)V
.registers 7
:goto_0
const-wide/16 v0, -0x80
and-long/2addr v0, p1
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-nez v0, :cond_e
long-to-int v0, p1
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jz;->cD(I)V
return-void
:cond_e
long-to-int v0, p1
and-int/lit8 v0, v0, 0x7f
or-int/lit16 v0, v0, 0x80
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jz;->cD(I)V
const/4 v0, 0x7
ushr-long/2addr p1, v0
goto :goto_0
.end method
.method public final a(IF)V
.registers 4
const/4 v0, 0x5
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/jz;->h(II)V
invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/jz;->d(F)V
return-void
.end method
.method public final a(ILcom/google/android/gms/internal/ke;)V
.registers 4
const/4 v0, 0x2
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/jz;->h(II)V
invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/jz;->b(Lcom/google/android/gms/internal/ke;)V
return-void
.end method
.method public final a(IZ)V
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/jz;->h(II)V
invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/jz;->A(Z)V
return-void
.end method
.method public final b(B)V
.registers 5
iget v0, p0, Lcom/google/android/gms/internal/jz;->position:I
iget v1, p0, Lcom/google/android/gms/internal/jz;->aad:I
if-ne v0, v1, :cond_10
new-instance v0, Lcom/google/android/gms/internal/jz$a;
iget v1, p0, Lcom/google/android/gms/internal/jz;->position:I
iget v2, p0, Lcom/google/android/gms/internal/jz;->aad:I
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/jz$a;-><init>(II)V
throw v0
:cond_10
iget-object v0, p0, Lcom/google/android/gms/internal/jz;->buffer:[B
iget v1, p0, Lcom/google/android/gms/internal/jz;->position:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/google/android/gms/internal/jz;->position:I
aput-byte p1, v0, v1
return-void
.end method
.method public final b(IJ)V
.registers 5
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/jz;->h(II)V
invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/jz;->x(J)V
return-void
.end method
.method public final b(ILjava/lang/String;)V
.registers 4
const/4 v0, 0x2
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/jz;->h(II)V
invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/jz;->bP(Ljava/lang/String;)V
return-void
.end method
.method public final b(Lcom/google/android/gms/internal/ke;)V
.registers 3
invoke-virtual {p1}, Lcom/google/android/gms/internal/ke;->eW()I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jz;->cF(I)V
invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ke;->a(Lcom/google/android/gms/internal/jz;)V
return-void
.end method
.method public final bP(Ljava/lang/String;)V
.registers 4
const-string v0, "UTF-8"
invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v0
array-length v1, v0
invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/jz;->cF(I)V
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jz;->p([B)V
return-void
.end method
.method public final c(IJ)V
.registers 5
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/jz;->h(II)V
invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/jz;->y(J)V
return-void
.end method
.method public final c([BII)V
.registers 7
iget v0, p0, Lcom/google/android/gms/internal/jz;->aad:I
iget v1, p0, Lcom/google/android/gms/internal/jz;->position:I
sub-int/2addr v0, v1
if-lt v0, p3, :cond_14
iget-object v0, p0, Lcom/google/android/gms/internal/jz;->buffer:[B
iget v1, p0, Lcom/google/android/gms/internal/jz;->position:I
invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v0, p0, Lcom/google/android/gms/internal/jz;->position:I
add-int/2addr v0, p3
iput v0, p0, Lcom/google/android/gms/internal/jz;->position:I
return-void
:cond_14
new-instance v0, Lcom/google/android/gms/internal/jz$a;
iget v1, p0, Lcom/google/android/gms/internal/jz;->position:I
iget v2, p0, Lcom/google/android/gms/internal/jz;->aad:I
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/jz$a;-><init>(II)V
throw v0
.end method
.method public final cB(I)V
.registers 4
if-ltz p1, :cond_6
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jz;->cF(I)V
:goto_5
return-void
:cond_6
int-to-long v0, p1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/jz;->B(J)V
goto :goto_5
.end method
.method public final cD(I)V
.registers 3
int-to-byte v0, p1
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jz;->b(B)V
return-void
.end method
.method public final cF(I)V
.registers 3
:goto_0
and-int/lit8 v0, p1, -0x80
if-nez v0, :cond_8
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jz;->cD(I)V
return-void
:cond_8
and-int/lit8 v0, p1, 0x7f
or-int/lit16 v0, v0, 0x80
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jz;->cD(I)V
ushr-int/lit8 p1, p1, 0x7
goto :goto_0
.end method
.method public final cH(I)V
.registers 3
and-int/lit16 v0, p1, 0xff
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jz;->cD(I)V
shr-int/lit8 v0, p1, 0x8
and-int/lit16 v0, v0, 0xff
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jz;->cD(I)V
shr-int/lit8 v0, p1, 0x10
and-int/lit16 v0, v0, 0xff
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jz;->cD(I)V
shr-int/lit8 v0, p1, 0x18
and-int/lit16 v0, v0, 0xff
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jz;->cD(I)V
return-void
.end method
.method public final d(F)V
.registers 3
invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jz;->cH(I)V
return-void
.end method
.method public final f(II)V
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/jz;->h(II)V
invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/jz;->cB(I)V
return-void
.end method
.method public final h(II)V
.registers 4
invoke-static {p1, p2}, Lcom/google/android/gms/internal/kh;->i(II)I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jz;->cF(I)V
return-void
.end method
.method public final kM()I
.registers 3
iget v0, p0, Lcom/google/android/gms/internal/jz;->aad:I
iget v1, p0, Lcom/google/android/gms/internal/jz;->position:I
sub-int/2addr v0, v1
return v0
.end method
.method public final kN()V
.registers 3
invoke-virtual {p0}, Lcom/google/android/gms/internal/jz;->kM()I
move-result v0
if-eqz v0, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Did not write as much data as expected."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
return-void
.end method
.method public final p([B)V
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/jz;->c([BII)V
return-void
.end method
.method public final x(J)V
.registers 3
invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/jz;->B(J)V
return-void
.end method
.method public final y(J)V
.registers 5
invoke-static {p1, p2}, Lcom/google/android/gms/internal/jz;->D(J)J
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/jz;->B(J)V
return-void
.end method