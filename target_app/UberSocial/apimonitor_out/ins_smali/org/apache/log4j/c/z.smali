.class abstract Lorg/apache/log4j/c/z;
.super Lorg/apache/log4j/c/q;
.source "SourceFile"
.field  f:I
.method constructor <init>(Lorg/apache/log4j/c/i;I)V
.registers 3
invoke-direct {p0, p1}, Lorg/apache/log4j/c/q;-><init>(Lorg/apache/log4j/c/i;)V
iput p2, p0, Lorg/apache/log4j/c/z;->f:I
return-void
.end method
.method public a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
.registers 7
invoke-virtual {p0, p1}, Lorg/apache/log4j/c/z;->b(Lorg/apache/log4j/k/k;)Ljava/lang/String;
move-result-object v0
iget v1, p0, Lorg/apache/log4j/c/z;->f:I
if-gtz v1, :cond_9
:goto_8
:cond_8
return-object v0
:cond_9
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v3
add-int/lit8 v2, v3, -0x1
iget v1, p0, Lorg/apache/log4j/c/z;->f:I
:goto_11
if-lez v1, :cond_21
const/16 v4, 0x2e
add-int/lit8 v2, v2, -0x1
invoke-virtual {v0, v4, v2}, Ljava/lang/String;->lastIndexOf(II)I
move-result v2
const/4 v4, -0x1
if-eq v2, v4, :cond_8
add-int/lit8 v1, v1, -0x1
goto :goto_11
:cond_21
add-int/lit8 v1, v2, 0x1
invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
goto :goto_8
.end method
.method abstract b(Lorg/apache/log4j/k/k;)Ljava/lang/String;
.end method