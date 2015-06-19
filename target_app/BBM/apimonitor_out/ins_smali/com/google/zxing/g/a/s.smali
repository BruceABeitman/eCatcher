.class public final Lcom/google/zxing/g/a/s;
.super Ljava/lang/Object;
.source "Version.java"
.field final a:I
.field final b:[Lcom/google/zxing/g/a/r;
.method varargs constructor <init>(I[Lcom/google/zxing/g/a/r;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/zxing/g/a/s;->a:I
iput-object p2, p0, Lcom/google/zxing/g/a/s;->b:[Lcom/google/zxing/g/a/r;
return-void
.end method
.method public final a()I
.registers 6
const/4 v0, 0x0
iget-object v2, p0, Lcom/google/zxing/g/a/s;->b:[Lcom/google/zxing/g/a/r;
array-length v3, v2
move v1, v0
:goto_5
if-ge v0, v3, :cond_f
aget-object v4, v2, v0
iget v4, v4, Lcom/google/zxing/g/a/r;->a:I
add-int/2addr v1, v4
add-int/lit8 v0, v0, 0x1
goto :goto_5
:cond_f
return v1
.end method
.method public final b()I
.registers 3
iget v0, p0, Lcom/google/zxing/g/a/s;->a:I
invoke-virtual {p0}, Lcom/google/zxing/g/a/s;->a()I
move-result v1
mul-int/2addr v0, v1
return v0
.end method