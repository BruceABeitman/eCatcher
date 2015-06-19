.class public Lcom/ibm/icu/impl/UCharacterIteratorWrapper;
.super Ljava/lang/Object;
.source "UCharacterIteratorWrapper.java"
.implements Ljava/text/CharacterIterator;
.field private iterator:Lcom/ibm/icu/text/UCharacterIterator;
.method public constructor <init>(Lcom/ibm/icu/text/UCharacterIterator;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;->iterator:Lcom/ibm/icu/text/UCharacterIterator;
return-void
.end method
.method public clone()Ljava/lang/Object;
.registers 4
:try_start_0
invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;
iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;->iterator:Lcom/ibm/icu/text/UCharacterIterator;
invoke-virtual {v2}, Lcom/ibm/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/ibm/icu/text/UCharacterIterator;
iput-object p0, v1, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;->iterator:Lcom/ibm/icu/text/UCharacterIterator;
:try_end_10
.catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_10} :catch_12
move-object v2, v1
:goto_11
return-object v2
:catch_12
move-exception v2
move-object v0, v2
const/4 v2, 0x0
goto :goto_11
.end method
.method public current()C
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;->iterator:Lcom/ibm/icu/text/UCharacterIterator;
invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->current()I
move-result v0
int-to-char v0, v0
return v0
.end method
.method public first()C
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;->iterator:Lcom/ibm/icu/text/UCharacterIterator;
invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->setToStart()V
iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;->iterator:Lcom/ibm/icu/text/UCharacterIterator;
invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->current()I
move-result v0
int-to-char v0, v0
return v0
.end method
.method public getBeginIndex()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getEndIndex()I
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;->iterator:Lcom/ibm/icu/text/UCharacterIterator;
invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->getLength()I
move-result v0
return v0
.end method
.method public getIndex()I
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;->iterator:Lcom/ibm/icu/text/UCharacterIterator;
invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I
move-result v0
return v0
.end method
.method public last()C
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;->iterator:Lcom/ibm/icu/text/UCharacterIterator;
invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->setToLimit()V
iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;->iterator:Lcom/ibm/icu/text/UCharacterIterator;
invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I
move-result v0
int-to-char v0, v0
return v0
.end method
.method public next()C
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;->iterator:Lcom/ibm/icu/text/UCharacterIterator;
invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->next()I
iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;->iterator:Lcom/ibm/icu/text/UCharacterIterator;
invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->current()I
move-result v0
int-to-char v0, v0
return v0
.end method
.method public previous()C
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;->iterator:Lcom/ibm/icu/text/UCharacterIterator;
invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I
move-result v0
int-to-char v0, v0
return v0
.end method
.method public setIndex(I)C
.registers 3
iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;->iterator:Lcom/ibm/icu/text/UCharacterIterator;
invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V
iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;->iterator:Lcom/ibm/icu/text/UCharacterIterator;
invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->current()I
move-result v0
int-to-char v0, v0
return v0
.end method