.class public Lcom/ibm/icu/impl/CharacterIteratorWrapper;
.super Lcom/ibm/icu/text/UCharacterIterator;
.source "CharacterIteratorWrapper.java"
.field private iterator:Ljava/text/CharacterIterator;
.method public constructor <init>(Ljava/text/CharacterIterator;)V
.registers 3
invoke-direct {p0}, Lcom/ibm/icu/text/UCharacterIterator;-><init>()V
if-nez p1, :cond_b
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:cond_b
iput-object p1, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;
return-void
.end method
.method public clone()Ljava/lang/Object;
.registers 4
:try_start_0
invoke-super {p0}, Lcom/ibm/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/ibm/icu/impl/CharacterIteratorWrapper;
iget-object v2, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;
invoke-interface {v2}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/text/CharacterIterator;
iput-object p0, v1, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;
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
.method public current()I
.registers 3
iget-object v1, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;
invoke-interface {v1}, Ljava/text/CharacterIterator;->current()C
move-result v0
const v1, 0xffff
if-ne v0, v1, :cond_d
const/4 v1, -0x1
:goto_c
return v1
:cond_d
move v1, v0
goto :goto_c
.end method
.method public getCharacterIterator()Ljava/text/CharacterIterator;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;
invoke-interface {v0}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/text/CharacterIterator;
return-object p0
.end method
.method public getIndex()I
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;
invoke-interface {v0}, Ljava/text/CharacterIterator;->getIndex()I
move-result v0
return v0
.end method
.method public getLength()I
.registers 3
iget-object v0, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;
invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I
move-result v0
iget-object v1, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;
invoke-interface {v1}, Ljava/text/CharacterIterator;->getBeginIndex()I
move-result v1
sub-int/2addr v0, v1
return v0
.end method
.method public getText([CI)I
.registers 9
iget-object v4, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;
invoke-interface {v4}, Ljava/text/CharacterIterator;->getEndIndex()I
move-result v4
iget-object v5, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;
invoke-interface {v5}, Ljava/text/CharacterIterator;->getBeginIndex()I
move-result v5
sub-int v2, v4, v5
iget-object v4, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;
invoke-interface {v4}, Ljava/text/CharacterIterator;->getIndex()I
move-result v1
if-ltz p2, :cond_1b
add-int v4, p2, v2
array-length v5, p1
if-le v4, v5, :cond_25
:cond_1b
new-instance v4, Ljava/lang/IndexOutOfBoundsException;
invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v4
:cond_25
iget-object v4, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;
invoke-interface {v4}, Ljava/text/CharacterIterator;->first()C
move-result v0
move v3, p2
:goto_2c
const v4, 0xffff
if-eq v0, v4, :cond_3d
add-int/lit8 p2, v3, 0x1
aput-char v0, p1, v3
iget-object v4, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;
invoke-interface {v4}, Ljava/text/CharacterIterator;->next()C
move-result v0
move v3, p2
goto :goto_2c
:cond_3d
iget-object v4, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;
invoke-interface {v4, v1}, Ljava/text/CharacterIterator;->setIndex(I)C
return v2
.end method
.method public moveIndex(I)I
.registers 6
iget-object v2, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;
invoke-interface {v2}, Ljava/text/CharacterIterator;->getEndIndex()I
move-result v2
iget-object v3, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;
invoke-interface {v3}, Ljava/text/CharacterIterator;->getBeginIndex()I
move-result v3
sub-int v1, v2, v3
iget-object v2, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;
invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I
move-result v2
add-int v0, v2, p1
if-gez v0, :cond_20
const/4 v0, 0x0
:goto_19
:cond_19
iget-object v2, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;
invoke-interface {v2, v0}, Ljava/text/CharacterIterator;->setIndex(I)C
move-result v2
return v2
:cond_20
if-le v0, v1, :cond_19
move v0, v1
goto :goto_19
.end method
.method public next()I
.registers 3
iget-object v1, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;
invoke-interface {v1}, Ljava/text/CharacterIterator;->current()C
move-result v0
iget-object v1, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;
invoke-interface {v1}, Ljava/text/CharacterIterator;->next()C
const v1, 0xffff
if-ne v0, v1, :cond_12
const/4 v1, -0x1
:goto_11
return v1
:cond_12
move v1, v0
goto :goto_11
.end method
.method public previous()I
.registers 3
iget-object v1, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;
invoke-interface {v1}, Ljava/text/CharacterIterator;->previous()C
move-result v0
const v1, 0xffff
if-ne v0, v1, :cond_d
const/4 v1, -0x1
:goto_c
return v1
:cond_d
move v1, v0
goto :goto_c
.end method
.method public setIndex(I)V
.registers 4
:try_start_0
iget-object v1, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;
invoke-interface {v1, p1}, Ljava/text/CharacterIterator;->setIndex(I)C
:try_end_5
.catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v1
move-object v0, v1
new-instance v1, Ljava/lang/IndexOutOfBoundsException;
invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V
throw v1
.end method
.method public setToLimit()V
.registers 3
iget-object v0, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;
iget-object v1, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;
invoke-interface {v1}, Ljava/text/CharacterIterator;->getEndIndex()I
move-result v1
invoke-interface {v0, v1}, Ljava/text/CharacterIterator;->setIndex(I)C
return-void
.end method