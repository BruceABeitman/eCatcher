.class public final Lorg/apache/b/a/g/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:[B
.field private b:I
.method public constructor <init>(I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-gez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Buffer capacity may not be negative"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
new-array v0, p1, [B
iput-object v0, p0, Lorg/apache/b/a/g/a;->a:[B
return-void
.end method
.method private d(I)V
.registers 6
const/4 v3, 0x0
iget-object v0, p0, Lorg/apache/b/a/g/a;->a:[B
array-length v0, v0
shl-int/lit8 v0, v0, 0x1
invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I
move-result v0
new-array v0, v0, [B
iget-object v1, p0, Lorg/apache/b/a/g/a;->a:[B
iget v2, p0, Lorg/apache/b/a/g/a;->b:I
invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v0, p0, Lorg/apache/b/a/g/a;->a:[B
return-void
.end method
.method public a()V
.registers 2
const/4 v0, 0x0
iput v0, p0, Lorg/apache/b/a/g/a;->b:I
return-void
.end method
.method public a(I)V
.registers 6
iget v0, p0, Lorg/apache/b/a/g/a;->b:I
add-int/lit8 v0, v0, 0x1
iget-object v1, p0, Lorg/apache/b/a/g/a;->a:[B
array-length v1, v1
if-le v0, v1, :cond_c
invoke-direct {p0, v0}, Lorg/apache/b/a/g/a;->d(I)V
:cond_c
iget-object v1, p0, Lorg/apache/b/a/g/a;->a:[B
iget v2, p0, Lorg/apache/b/a/g/a;->b:I
int-to-byte v3, p1
aput-byte v3, v1, v2
iput v0, p0, Lorg/apache/b/a/g/a;->b:I
return-void
.end method
.method public a([BII)V
.registers 7
if-nez p1, :cond_3
:goto_2
:cond_2
return-void
:cond_3
if-ltz p2, :cond_13
array-length v0, p1
if-gt p2, v0, :cond_13
if-ltz p3, :cond_13
add-int v0, p2, p3
if-ltz v0, :cond_13
add-int v0, p2, p3
array-length v1, p1
if-le v0, v1, :cond_19
:cond_13
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V
throw v0
:cond_19
if-eqz p3, :cond_2
iget v0, p0, Lorg/apache/b/a/g/a;->b:I
add-int/2addr v0, p3
iget-object v1, p0, Lorg/apache/b/a/g/a;->a:[B
array-length v1, v1
if-le v0, v1, :cond_26
invoke-direct {p0, v0}, Lorg/apache/b/a/g/a;->d(I)V
:cond_26
iget-object v1, p0, Lorg/apache/b/a/g/a;->a:[B
iget v2, p0, Lorg/apache/b/a/g/a;->b:I
invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput v0, p0, Lorg/apache/b/a/g/a;->b:I
goto :goto_2
.end method
.method public a([CII)V
.registers 8
if-nez p1, :cond_3
:goto_2
:cond_2
return-void
:cond_3
if-ltz p2, :cond_13
array-length v0, p1
if-gt p2, v0, :cond_13
if-ltz p3, :cond_13
add-int v0, p2, p3
if-ltz v0, :cond_13
add-int v0, p2, p3
array-length v1, p1
if-le v0, v1, :cond_19
:cond_13
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V
throw v0
:cond_19
if-eqz p3, :cond_2
iget v0, p0, Lorg/apache/b/a/g/a;->b:I
add-int v1, v0, p3
iget-object v2, p0, Lorg/apache/b/a/g/a;->a:[B
array-length v2, v2
if-le v1, v2, :cond_27
invoke-direct {p0, v1}, Lorg/apache/b/a/g/a;->d(I)V
:goto_27
:cond_27
if-ge v0, v1, :cond_35
iget-object v2, p0, Lorg/apache/b/a/g/a;->a:[B
aget-char v3, p1, p2
int-to-byte v3, v3
aput-byte v3, v2, v0
add-int/lit8 p2, p2, 0x1
add-int/lit8 v0, v0, 0x1
goto :goto_27
:cond_35
iput v1, p0, Lorg/apache/b/a/g/a;->b:I
goto :goto_2
.end method
.method public b(I)I
.registers 3
iget-object v0, p0, Lorg/apache/b/a/g/a;->a:[B
aget-byte v0, v0, p1
return v0
.end method
.method public b()[B
.registers 5
const/4 v3, 0x0
iget v0, p0, Lorg/apache/b/a/g/a;->b:I
new-array v0, v0, [B
iget v1, p0, Lorg/apache/b/a/g/a;->b:I
if-lez v1, :cond_10
iget-object v1, p0, Lorg/apache/b/a/g/a;->a:[B
iget v2, p0, Lorg/apache/b/a/g/a;->b:I
invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_10
return-object v0
.end method
.method public c()I
.registers 2
iget-object v0, p0, Lorg/apache/b/a/g/a;->a:[B
array-length v0, v0
return v0
.end method
.method public c(I)V
.registers 3
if-ltz p1, :cond_7
iget-object v0, p0, Lorg/apache/b/a/g/a;->a:[B
array-length v0, v0
if-le p1, v0, :cond_d
:cond_7
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V
throw v0
:cond_d
iput p1, p0, Lorg/apache/b/a/g/a;->b:I
return-void
.end method
.method public d()I
.registers 2
iget v0, p0, Lorg/apache/b/a/g/a;->b:I
return v0
.end method
.method public e()[B
.registers 2
iget-object v0, p0, Lorg/apache/b/a/g/a;->a:[B
return-object v0
.end method
.method public f()Z
.registers 2
iget v0, p0, Lorg/apache/b/a/g/a;->b:I
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public g()Z
.registers 3
iget v0, p0, Lorg/apache/b/a/g/a;->b:I
iget-object v1, p0, Lorg/apache/b/a/g/a;->a:[B
array-length v1, v1
if-ne v0, v1, :cond_9
const/4 v0, 0x1
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/String;
invoke-virtual {p0}, Lorg/apache/b/a/g/a;->b()[B
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
return-object v0
.end method