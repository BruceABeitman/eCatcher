.class public final Lcom/google/zxing/g/b;
.super Ljava/lang/Object;
.source "QRCodeWriter.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Lcom/google/zxing/g/c/g;II)Lcom/google/zxing/b/b;
.registers 16
const/4 v3, 0x0
iget-object v6, p0, Lcom/google/zxing/g/c/g;->e:Lcom/google/zxing/g/c/b;
if-nez v6, :cond_b
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
:cond_b
iget v7, v6, Lcom/google/zxing/g/c/b;->b:I
iget v8, v6, Lcom/google/zxing/g/c/b;->c:I
add-int/lit8 v0, v7, 0x8
add-int/lit8 v1, v8, 0x8
invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I
move-result v2
invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I
move-result v4
div-int v0, v2, v0
div-int v1, v4, v1
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v9
mul-int v0, v7, v9
sub-int v0, v2, v0
div-int/lit8 v1, v0, 0x2
mul-int v0, v8, v9
sub-int v0, v4, v0
div-int/lit8 v0, v0, 0x2
new-instance v10, Lcom/google/zxing/b/b;
invoke-direct {v10, v2, v4}, Lcom/google/zxing/b/b;-><init>(II)V
move v4, v0
move v5, v3
:goto_36
if-ge v5, v8, :cond_51
move v0, v1
move v2, v3
:goto_3a
if-ge v2, v7, :cond_4a
invoke-virtual {v6, v2, v5}, Lcom/google/zxing/g/c/b;->a(II)B
move-result v11
const/4 v12, 0x1
if-ne v11, v12, :cond_46
invoke-virtual {v10, v0, v4, v9, v9}, Lcom/google/zxing/b/b;->a(IIII)V
:cond_46
add-int/lit8 v2, v2, 0x1
add-int/2addr v0, v9
goto :goto_3a
:cond_4a
add-int/lit8 v2, v5, 0x1
add-int v0, v4, v9
move v4, v0
move v5, v2
goto :goto_36
:cond_51
return-object v10
.end method
.method public static a(Ljava/lang/String;Lcom/google/zxing/a;II)Lcom/google/zxing/b/b;
.registers 7
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Found empty contents"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
sget-object v0, Lcom/google/zxing/a;->l:Lcom/google/zxing/a;
if-eq p1, v0, :cond_27
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Can only encode QR_CODE, but got "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_27
if-ltz p2, :cond_2b
if-gez p3, :cond_4a
:cond_2b
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Requested dimensions are too small: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const/16 v2, 0x78
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_4a
sget-object v0, Lcom/google/zxing/g/a/n;->a:Lcom/google/zxing/g/a/n;
invoke-static {p0, v0}, Lcom/google/zxing/g/c/c;->a(Ljava/lang/String;Lcom/google/zxing/g/a/n;)Lcom/google/zxing/g/c/g;
move-result-object v0
invoke-static {v0, p2, p3}, Lcom/google/zxing/g/b;->a(Lcom/google/zxing/g/c/g;II)Lcom/google/zxing/b/b;
move-result-object v0
return-object v0
.end method