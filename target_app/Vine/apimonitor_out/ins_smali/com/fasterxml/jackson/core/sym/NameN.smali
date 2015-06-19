.class public final Lcom/fasterxml/jackson/core/sym/NameN;
.super Lcom/fasterxml/jackson/core/sym/Name;
.source "NameN.java"
.field final mQuadLen:I
.field final mQuads:[I
.method constructor <init>(Ljava/lang/String;I[II)V
.registers 7
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/sym/Name;-><init>(Ljava/lang/String;I)V
const/4 v0, 0x3
if-ge p4, v0, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Qlen must >= 3"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
iput-object p3, p0, Lcom/fasterxml/jackson/core/sym/NameN;->mQuads:[I
iput p4, p0, Lcom/fasterxml/jackson/core/sym/NameN;->mQuadLen:I
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
const/4 v0, 0x0
iget v1, p0, Lcom/fasterxml/jackson/core/sym/NameN;->mQuadLen:I
if-eq p2, v1, :cond_6
:goto_5
:cond_5
return v0
:cond_6
move v1, v0
:goto_7
if-ge v1, p2, :cond_14
aget v2, p1, v1
iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/NameN;->mQuads:[I
aget v3, v3, v1
if-ne v2, v3, :cond_5
add-int/lit8 v1, v1, 0x1
goto :goto_7
:cond_14
const/4 v0, 0x1
goto :goto_5
.end method