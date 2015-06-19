.class public final Lorg/codehaus/jackson/sym/NameN;
.super Lorg/codehaus/jackson/sym/Name;
.field final mQuadLen:I
.field final mQuads:[I
.method constructor <init>(Ljava/lang/String;I[II)V
.registers 7
invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/sym/Name;-><init>(Ljava/lang/String;I)V
const/4 v0, 0x3
if-ge p4, v0, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Qlen must >= 3"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
iput-object p3, p0, Lorg/codehaus/jackson/sym/NameN;->mQuads:[I
iput p4, p0, Lorg/codehaus/jackson/sym/NameN;->mQuadLen:I
return-void
.end method
.method public equals(I)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public equals(II)Z
.registers 4
const/4 v0, 0x0
return v0
.end method
.method public equals([II)Z
.registers 7
const/4 v3, 0x0
iget v0, p0, Lorg/codehaus/jackson/sym/NameN;->mQuadLen:I
if-eq p2, v0, :cond_7
move v0, v3
:goto_6
return v0
:cond_7
move v0, v3
:goto_8
if-ge v0, p2, :cond_17
aget v1, p1, v0
iget-object v2, p0, Lorg/codehaus/jackson/sym/NameN;->mQuads:[I
aget v2, v2, v0
if-eq v1, v2, :cond_14
move v0, v3
goto :goto_6
:cond_14
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_17
const/4 v0, 0x1
goto :goto_6
.end method