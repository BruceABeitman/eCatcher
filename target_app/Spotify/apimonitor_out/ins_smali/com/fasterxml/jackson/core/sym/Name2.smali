.class public final Lcom/fasterxml/jackson/core/sym/Name2;
.super Lcom/fasterxml/jackson/core/sym/Name;
.source "SourceFile"
.field final mQuad1:I
.field final mQuad2:I
.method constructor <init>(Ljava/lang/String;III)V
.registers 5
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/sym/Name;-><init>(Ljava/lang/String;I)V
iput p3, p0, Lcom/fasterxml/jackson/core/sym/Name2;->mQuad1:I
iput p4, p0, Lcom/fasterxml/jackson/core/sym/Name2;->mQuad2:I
return-void
.end method
.method public final equals(I)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public final equals(II)Z
.registers 4
iget v0, p0, Lcom/fasterxml/jackson/core/sym/Name2;->mQuad1:I
if-ne p1, v0, :cond_a
iget v0, p0, Lcom/fasterxml/jackson/core/sym/Name2;->mQuad2:I
if-ne p2, v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final equals([II)Z
.registers 7
const/4 v0, 0x1
const/4 v1, 0x0
const/4 v2, 0x2
if-ne p2, v2, :cond_12
aget v2, p1, v1
iget v3, p0, Lcom/fasterxml/jackson/core/sym/Name2;->mQuad1:I
if-ne v2, v3, :cond_12
aget v2, p1, v0
iget v3, p0, Lcom/fasterxml/jackson/core/sym/Name2;->mQuad2:I
if-ne v2, v3, :cond_12
:goto_11
return v0
:cond_12
move v0, v1
goto :goto_11
.end method