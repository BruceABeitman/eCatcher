.class public final Lorg/codehaus/jackson/sym/Name2;
.super Lorg/codehaus/jackson/sym/Name;
.field final mQuad1:I
.field final mQuad2:I
.method constructor <init>(Ljava/lang/String;III)V
.registers 5
invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/sym/Name;-><init>(Ljava/lang/String;I)V
iput p3, p0, Lorg/codehaus/jackson/sym/Name2;->mQuad1:I
iput p4, p0, Lorg/codehaus/jackson/sym/Name2;->mQuad2:I
return-void
.end method
.method public equals(I)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public equals(II)Z
.registers 4
iget v0, p0, Lorg/codehaus/jackson/sym/Name2;->mQuad1:I
if-ne p1, v0, :cond_a
iget v0, p0, Lorg/codehaus/jackson/sym/Name2;->mQuad2:I
if-ne p2, v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public equals([II)Z
.registers 7
const/4 v3, 0x1
const/4 v2, 0x0
const/4 v0, 0x2
if-ne p2, v0, :cond_13
aget v0, p1, v2
iget v1, p0, Lorg/codehaus/jackson/sym/Name2;->mQuad1:I
if-ne v0, v1, :cond_13
aget v0, p1, v3
iget v1, p0, Lorg/codehaus/jackson/sym/Name2;->mQuad2:I
if-ne v0, v1, :cond_13
move v0, v3
:goto_12
return v0
:cond_13
move v0, v2
goto :goto_12
.end method