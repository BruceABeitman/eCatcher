.class public Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;
.super Ljava/lang/Object;
.source "DefaultPlacement.java"
.field private final bits:[B
.field private final codewords:Ljava/lang/CharSequence;
.field private final numcols:I
.field private final numrows:I
.method public constructor <init>(Ljava/lang/CharSequence;II)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->codewords:Ljava/lang/CharSequence;
iput p2, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
iput p3, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I
mul-int v0, p2, p3
new-array v0, v0, [B
iput-object v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->bits:[B
iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->bits:[B
const/4 v1, -0x1
invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V
return-void
.end method
.method private corner1(I)V
.registers 8
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I
add-int/lit8 v0, v0, -0x1
invoke-direct {p0, v0, v2, p1, v3}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I
add-int/lit8 v0, v0, -0x1
invoke-direct {p0, v0, v3, p1, v4}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I
add-int/lit8 v0, v0, -0x1
invoke-direct {p0, v0, v4, p1, v5}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
add-int/lit8 v0, v0, -0x2
const/4 v1, 0x4
invoke-direct {p0, v2, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
add-int/lit8 v0, v0, -0x1
const/4 v1, 0x5
invoke-direct {p0, v2, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
add-int/lit8 v0, v0, -0x1
const/4 v1, 0x6
invoke-direct {p0, v3, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
add-int/lit8 v0, v0, -0x1
const/4 v1, 0x7
invoke-direct {p0, v4, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
add-int/lit8 v0, v0, -0x1
const/16 v1, 0x8
invoke-direct {p0, v5, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
return-void
.end method
.method private corner2(I)V
.registers 6
const/4 v3, 0x1
const/4 v2, 0x0
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I
add-int/lit8 v0, v0, -0x3
invoke-direct {p0, v0, v2, p1, v3}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I
add-int/lit8 v0, v0, -0x2
const/4 v1, 0x2
invoke-direct {p0, v0, v2, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I
add-int/lit8 v0, v0, -0x1
const/4 v1, 0x3
invoke-direct {p0, v0, v2, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
add-int/lit8 v0, v0, -0x4
const/4 v1, 0x4
invoke-direct {p0, v2, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
add-int/lit8 v0, v0, -0x3
const/4 v1, 0x5
invoke-direct {p0, v2, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
add-int/lit8 v0, v0, -0x2
const/4 v1, 0x6
invoke-direct {p0, v2, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
add-int/lit8 v0, v0, -0x1
const/4 v1, 0x7
invoke-direct {p0, v2, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
add-int/lit8 v0, v0, -0x1
const/16 v1, 0x8
invoke-direct {p0, v3, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
return-void
.end method
.method private corner3(I)V
.registers 8
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I
add-int/lit8 v0, v0, -0x3
invoke-direct {p0, v0, v2, p1, v3}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I
add-int/lit8 v0, v0, -0x2
invoke-direct {p0, v0, v2, p1, v4}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I
add-int/lit8 v0, v0, -0x1
invoke-direct {p0, v0, v2, p1, v5}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
add-int/lit8 v0, v0, -0x2
const/4 v1, 0x4
invoke-direct {p0, v2, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
add-int/lit8 v0, v0, -0x1
const/4 v1, 0x5
invoke-direct {p0, v2, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
add-int/lit8 v0, v0, -0x1
const/4 v1, 0x6
invoke-direct {p0, v3, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
add-int/lit8 v0, v0, -0x1
const/4 v1, 0x7
invoke-direct {p0, v4, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
add-int/lit8 v0, v0, -0x1
const/16 v1, 0x8
invoke-direct {p0, v5, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
return-void
.end method
.method private corner4(I)V
.registers 7
const/4 v4, 0x1
const/4 v3, 0x0
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I
add-int/lit8 v0, v0, -0x1
invoke-direct {p0, v0, v3, p1, v4}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I
add-int/lit8 v0, v0, -0x1
iget v1, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
add-int/lit8 v1, v1, -0x1
const/4 v2, 0x2
invoke-direct {p0, v0, v1, p1, v2}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
add-int/lit8 v0, v0, -0x3
const/4 v1, 0x3
invoke-direct {p0, v3, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
add-int/lit8 v0, v0, -0x2
const/4 v1, 0x4
invoke-direct {p0, v3, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
add-int/lit8 v0, v0, -0x1
const/4 v1, 0x5
invoke-direct {p0, v3, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
add-int/lit8 v0, v0, -0x3
const/4 v1, 0x6
invoke-direct {p0, v4, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
add-int/lit8 v0, v0, -0x2
const/4 v1, 0x7
invoke-direct {p0, v4, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
add-int/lit8 v0, v0, -0x1
const/16 v1, 0x8
invoke-direct {p0, v4, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
return-void
.end method
.method private module(IIII)V
.registers 8
const/4 v1, 0x1
if-gez p1, :cond_f
iget v2, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I
add-int/2addr p1, v2
iget v2, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I
add-int/lit8 v2, v2, 0x4
rem-int/lit8 v2, v2, 0x8
rsub-int/lit8 v2, v2, 0x4
add-int/2addr p2, v2
:cond_f
if-gez p2, :cond_1d
iget v2, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
add-int/2addr p2, v2
iget v2, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
add-int/lit8 v2, v2, 0x4
rem-int/lit8 v2, v2, 0x8
rsub-int/lit8 v2, v2, 0x4
add-int/2addr p1, v2
:cond_1d
iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->codewords:Ljava/lang/CharSequence;
invoke-interface {v2, p3}, Ljava/lang/CharSequence;->charAt(I)C
move-result v0
rsub-int/lit8 v2, p4, 0x8
shl-int v2, v1, v2
and-int/2addr v0, v2
if-eqz v0, :cond_2e
:goto_2a
invoke-virtual {p0, p2, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->setBit(IIZ)V
return-void
:cond_2e
const/4 v1, 0x0
goto :goto_2a
.end method
.method private utah(III)V
.registers 7
add-int/lit8 v0, p1, -0x2
add-int/lit8 v1, p2, -0x2
const/4 v2, 0x1
invoke-direct {p0, v0, v1, p3, v2}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
add-int/lit8 v0, p1, -0x2
add-int/lit8 v1, p2, -0x1
const/4 v2, 0x2
invoke-direct {p0, v0, v1, p3, v2}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
add-int/lit8 v0, p1, -0x1
add-int/lit8 v1, p2, -0x2
const/4 v2, 0x3
invoke-direct {p0, v0, v1, p3, v2}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
add-int/lit8 v0, p1, -0x1
add-int/lit8 v1, p2, -0x1
const/4 v2, 0x4
invoke-direct {p0, v0, v1, p3, v2}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
add-int/lit8 v0, p1, -0x1
const/4 v1, 0x5
invoke-direct {p0, v0, p2, p3, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
add-int/lit8 v0, p2, -0x2
const/4 v1, 0x6
invoke-direct {p0, p1, v0, p3, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
add-int/lit8 v0, p2, -0x1
const/4 v1, 0x7
invoke-direct {p0, p1, v0, p3, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
const/16 v0, 0x8
invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V
return-void
.end method
.method public final getBit(II)Z
.registers 6
const/4 v0, 0x1
iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->bits:[B
iget v2, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
mul-int/2addr v2, p2
add-int/2addr v2, p1
aget-byte v1, v1, v2
if-ne v1, v0, :cond_c
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method final getBits()[B
.registers 2
iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->bits:[B
return-object v0
.end method
.method final getNumcols()I
.registers 2
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
return v0
.end method
.method final getNumrows()I
.registers 2
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I
return v0
.end method
.method final hasBit(II)Z
.registers 5
iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->bits:[B
iget v1, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
mul-int/2addr v1, p2
add-int/2addr v1, p1
aget-byte v0, v0, v1
if-ltz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public final place()V
.registers 8
const/4 v6, 0x1
const/4 v1, 0x0
const/4 v3, 0x4
const/4 v0, 0x0
:cond_4
iget v4, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I
if-ne v3, v4, :cond_10
if-nez v0, :cond_10
add-int/lit8 v2, v1, 0x1
invoke-direct {p0, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->corner1(I)V
move v1, v2
:cond_10
iget v4, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I
add-int/lit8 v4, v4, -0x2
if-ne v3, v4, :cond_24
if-nez v0, :cond_24
iget v4, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
rem-int/lit8 v4, v4, 0x4
if-eqz v4, :cond_24
add-int/lit8 v2, v1, 0x1
invoke-direct {p0, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->corner2(I)V
move v1, v2
:cond_24
iget v4, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I
add-int/lit8 v4, v4, -0x2
if-ne v3, v4, :cond_39
if-nez v0, :cond_39
iget v4, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
rem-int/lit8 v4, v4, 0x8
const/4 v5, 0x4
if-ne v4, v5, :cond_39
add-int/lit8 v2, v1, 0x1
invoke-direct {p0, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->corner3(I)V
move v1, v2
:cond_39
iget v4, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I
add-int/lit8 v4, v4, 0x4
if-ne v3, v4, :cond_4e
const/4 v4, 0x2
if-ne v0, v4, :cond_4e
iget v4, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
rem-int/lit8 v4, v4, 0x8
if-nez v4, :cond_4e
add-int/lit8 v2, v1, 0x1
invoke-direct {p0, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->corner4(I)V
move v1, v2
:cond_4e
iget v4, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I
if-ge v3, v4, :cond_60
if-ltz v0, :cond_60
invoke-virtual {p0, v0, v3}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->hasBit(II)Z
move-result v4
if-nez v4, :cond_60
add-int/lit8 v2, v1, 0x1
invoke-direct {p0, v3, v0, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->utah(III)V
move v1, v2
:cond_60
add-int/lit8 v3, v3, -0x2
add-int/lit8 v0, v0, 0x2
if-ltz v3, :cond_6a
iget v4, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
if-lt v0, v4, :cond_4e
:cond_6a
add-int/lit8 v3, v3, 0x1
add-int/lit8 v0, v0, 0x3
move v2, v1
:goto_6f
if-ltz v3, :cond_bd
iget v4, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
if-ge v0, v4, :cond_bd
invoke-virtual {p0, v0, v3}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->hasBit(II)Z
move-result v4
if-nez v4, :cond_bd
add-int/lit8 v1, v2, 0x1
invoke-direct {p0, v3, v0, v2}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->utah(III)V
:goto_80
add-int/lit8 v3, v3, 0x2
add-int/lit8 v0, v0, -0x2
iget v4, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I
if-ge v3, v4, :cond_8a
if-gez v0, :cond_bb
:cond_8a
add-int/lit8 v3, v3, 0x3
add-int/lit8 v0, v0, 0x1
iget v4, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I
if-lt v3, v4, :cond_4
iget v4, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
if-lt v0, v4, :cond_4
iget v4, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
add-int/lit8 v4, v4, -0x1
iget v5, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I
add-int/lit8 v5, v5, -0x1
invoke-virtual {p0, v4, v5}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->hasBit(II)Z
move-result v4
if-nez v4, :cond_ba
iget v4, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
add-int/lit8 v4, v4, -0x1
iget v5, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I
add-int/lit8 v5, v5, -0x1
invoke-virtual {p0, v4, v5, v6}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->setBit(IIZ)V
iget v4, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
add-int/lit8 v4, v4, -0x2
iget v5, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I
add-int/lit8 v5, v5, -0x2
invoke-virtual {p0, v4, v5, v6}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->setBit(IIZ)V
:cond_ba
return-void
:cond_bb
move v2, v1
goto :goto_6f
:cond_bd
move v1, v2
goto :goto_80
.end method
.method final setBit(IIZ)V
.registers 7
iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->bits:[B
iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I
mul-int/2addr v0, p2
add-int v2, v0, p1
if-eqz p3, :cond_d
const/4 v0, 0x1
:goto_a
aput-byte v0, v1, v2
return-void
:cond_d
const/4 v0, 0x0
goto :goto_a
.end method