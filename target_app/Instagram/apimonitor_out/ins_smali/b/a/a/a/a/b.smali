.class public abstract Lb/a/a/a/a/b;
.super Ljava/lang/Object;
.source "BaseNCodec.java"
.field private final a:I
.field protected final b:B
.field protected final c:I
.field protected d:[B
.field protected e:I
.field protected f:Z
.field protected g:I
.field protected h:I
.field private final i:I
.field private final j:I
.field private k:I
.method protected constructor <init>(II)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x3d
iput-byte v0, p0, Lb/a/a/a/a/b;->b:B
const/4 v0, 0x3
iput v0, p0, Lb/a/a/a/a/b;->a:I
const/4 v0, 0x4
iput v0, p0, Lb/a/a/a/a/b;->i:I
if-lez p1, :cond_1a
if-lez p2, :cond_1a
div-int/lit8 v0, p1, 0x4
mul-int/lit8 v0, v0, 0x4
:goto_15
iput v0, p0, Lb/a/a/a/a/b;->c:I
iput p2, p0, Lb/a/a/a/a/b;->j:I
return-void
:cond_1a
const/4 v0, 0x0
goto :goto_15
.end method
.method private a()I
.registers 3
iget-object v0, p0, Lb/a/a/a/a/b;->d:[B
if-eqz v0, :cond_a
iget v0, p0, Lb/a/a/a/a/b;->e:I
iget v1, p0, Lb/a/a/a/a/b;->k:I
sub-int/2addr v0, v1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method private a([BI)I
.registers 7
const/4 v1, 0x0
iget-object v0, p0, Lb/a/a/a/a/b;->d:[B
if-eqz v0, :cond_23
invoke-direct {p0}, Lb/a/a/a/a/b;->a()I
move-result v0
invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I
move-result v0
iget-object v2, p0, Lb/a/a/a/a/b;->d:[B
iget v3, p0, Lb/a/a/a/a/b;->k:I
invoke-static {v2, v3, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v1, p0, Lb/a/a/a/a/b;->k:I
add-int/2addr v1, v0
iput v1, p0, Lb/a/a/a/a/b;->k:I
iget v1, p0, Lb/a/a/a/a/b;->k:I
iget v2, p0, Lb/a/a/a/a/b;->e:I
if-lt v1, v2, :cond_22
const/4 v1, 0x0
iput-object v1, p0, Lb/a/a/a/a/b;->d:[B
:cond_22
:goto_22
return v0
:cond_23
iget-boolean v0, p0, Lb/a/a/a/a/b;->f:Z
if-eqz v0, :cond_29
const/4 v0, -0x1
goto :goto_22
:cond_29
move v0, v1
goto :goto_22
.end method
.method private b()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lb/a/a/a/a/b;->d:[B
if-nez v0, :cond_10
const/16 v0, 0x2000
new-array v0, v0, [B
iput-object v0, p0, Lb/a/a/a/a/b;->d:[B
iput v3, p0, Lb/a/a/a/a/b;->e:I
iput v3, p0, Lb/a/a/a/a/b;->k:I
:goto_f
return-void
:cond_10
iget-object v0, p0, Lb/a/a/a/a/b;->d:[B
array-length v0, v0
mul-int/lit8 v0, v0, 0x2
new-array v0, v0, [B
iget-object v1, p0, Lb/a/a/a/a/b;->d:[B
iget-object v2, p0, Lb/a/a/a/a/b;->d:[B
array-length v2, v2
invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v0, p0, Lb/a/a/a/a/b;->d:[B
goto :goto_f
.end method
.method private c()V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x0
iput-object v0, p0, Lb/a/a/a/a/b;->d:[B
iput v1, p0, Lb/a/a/a/a/b;->e:I
iput v1, p0, Lb/a/a/a/a/b;->k:I
iput v1, p0, Lb/a/a/a/a/b;->g:I
iput v1, p0, Lb/a/a/a/a/b;->h:I
iput-boolean v1, p0, Lb/a/a/a/a/b;->f:Z
return-void
.end method
.method protected final a(I)V
.registers 4
iget-object v0, p0, Lb/a/a/a/a/b;->d:[B
if-eqz v0, :cond_c
iget-object v0, p0, Lb/a/a/a/a/b;->d:[B
array-length v0, v0
iget v1, p0, Lb/a/a/a/a/b;->e:I
add-int/2addr v1, p1
if-ge v0, v1, :cond_f
:cond_c
invoke-direct {p0}, Lb/a/a/a/a/b;->b()V
:cond_f
return-void
.end method
.method abstract a([BII)V
.end method
.method protected abstract a(B)Z
.end method
.method public final a([B)[B
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Lb/a/a/a/a/b;->c()V
if-eqz p1, :cond_9
array-length v0, p1
if-nez v0, :cond_a
:cond_9
:goto_9
return-object p1
:cond_a
array-length v0, p1
invoke-virtual {p0, p1, v1, v0}, Lb/a/a/a/a/b;->b([BII)V
const/4 v0, -0x1
invoke-virtual {p0, p1, v1, v0}, Lb/a/a/a/a/b;->b([BII)V
iget v0, p0, Lb/a/a/a/a/b;->e:I
new-array p1, v0, [B
array-length v0, p1
invoke-direct {p0, p1, v0}, Lb/a/a/a/a/b;->a([BI)I
goto :goto_9
.end method
.method abstract b([BII)V
.end method
.method public final b([B)[B
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Lb/a/a/a/a/b;->c()V
if-eqz p1, :cond_9
array-length v0, p1
if-nez v0, :cond_a
:cond_9
:goto_9
return-object p1
:cond_a
array-length v0, p1
invoke-virtual {p0, p1, v1, v0}, Lb/a/a/a/a/b;->a([BII)V
const/4 v0, -0x1
invoke-virtual {p0, p1, v1, v0}, Lb/a/a/a/a/b;->a([BII)V
iget v0, p0, Lb/a/a/a/a/b;->e:I
iget v1, p0, Lb/a/a/a/a/b;->k:I
sub-int/2addr v0, v1
new-array p1, v0, [B
array-length v0, p1
invoke-direct {p0, p1, v0}, Lb/a/a/a/a/b;->a([BI)I
goto :goto_9
.end method
.method protected final c([B)Z
.registers 7
const/4 v0, 0x0
if-nez p1, :cond_4
:goto_3
:cond_3
return v0
:cond_4
array-length v2, p1
move v1, v0
:goto_6
if-ge v1, v2, :cond_3
aget-byte v3, p1, v1
const/16 v4, 0x3d
if-eq v4, v3, :cond_14
invoke-virtual {p0, v3}, Lb/a/a/a/a/b;->a(B)Z
move-result v3
if-eqz v3, :cond_16
:cond_14
const/4 v0, 0x1
goto :goto_3
:cond_16
add-int/lit8 v1, v1, 0x1
goto :goto_6
.end method