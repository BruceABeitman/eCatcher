.class public abstract Lcom/ibm/icu/text/UCharacterIterator;
.super Ljava/lang/Object;
.source "UCharacterIterator.java"
.implements Ljava/lang/Cloneable;
.implements Lcom/ibm/icu/text/UForwardCharacterIterator;
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static final getInstance(Lcom/ibm/icu/text/Replaceable;)Lcom/ibm/icu/text/UCharacterIterator;
.registers 2
new-instance v0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;
invoke-direct {v0, p0}, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;-><init>(Lcom/ibm/icu/text/Replaceable;)V
return-object v0
.end method
.method public static final getInstance(Ljava/lang/String;)Lcom/ibm/icu/text/UCharacterIterator;
.registers 2
new-instance v0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;
invoke-direct {v0, p0}, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;-><init>(Ljava/lang/String;)V
return-object v0
.end method
.method public static final getInstance(Ljava/lang/StringBuffer;)Lcom/ibm/icu/text/UCharacterIterator;
.registers 2
new-instance v0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;
invoke-direct {v0, p0}, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;-><init>(Ljava/lang/StringBuffer;)V
return-object v0
.end method
.method public static final getInstance(Ljava/text/CharacterIterator;)Lcom/ibm/icu/text/UCharacterIterator;
.registers 2
new-instance v0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;
invoke-direct {v0, p0}, Lcom/ibm/icu/impl/CharacterIteratorWrapper;-><init>(Ljava/text/CharacterIterator;)V
return-object v0
.end method
.method public static final getInstance([C)Lcom/ibm/icu/text/UCharacterIterator;
.registers 3
const/4 v0, 0x0
array-length v1, p0
invoke-static {p0, v0, v1}, Lcom/ibm/icu/text/UCharacterIterator;->getInstance([CII)Lcom/ibm/icu/text/UCharacterIterator;
move-result-object v0
return-object v0
.end method
.method public static final getInstance([CII)Lcom/ibm/icu/text/UCharacterIterator;
.registers 4
new-instance v0, Lcom/ibm/icu/impl/UCharArrayIterator;
invoke-direct {v0, p0, p1, p2}, Lcom/ibm/icu/impl/UCharArrayIterator;-><init>([CII)V
return-object v0
.end method
.method public clone()Ljava/lang/Object;
.registers 2
invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public abstract current()I
.end method
.method public currentCodePoint()I
.registers 5
invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->current()I
move-result v0
int-to-char v2, v0
invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z
move-result v2
if-eqz v2, :cond_23
invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->next()I
invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->current()I
move-result v1
invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I
int-to-char v2, v1
invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z
move-result v2
if-eqz v2, :cond_23
int-to-char v2, v0
int-to-char v3, v1
invoke-static {v2, v3}, Lcom/ibm/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I
move-result v2
:goto_22
return v2
:cond_23
move v2, v0
goto :goto_22
.end method
.method public getCharacterIterator()Ljava/text/CharacterIterator;
.registers 2
new-instance v0, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;
invoke-direct {v0, p0}, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;-><init>(Lcom/ibm/icu/text/UCharacterIterator;)V
return-object v0
.end method
.method public abstract getIndex()I
.end method
.method public abstract getLength()I
.end method
.method public final getText([C)I
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/UCharacterIterator;->getText([CI)I
move-result v0
return v0
.end method
.method public abstract getText([CI)I
.end method
.method public getText()Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->getLength()I
move-result v1
new-array v0, v1, [C
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UCharacterIterator;->getText([C)I
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
return-object v1
.end method
.method public moveCodePointIndex(I)I
.registers 4
const/4 v1, -0x1
if-lez p1, :cond_e
:goto_3
if-lez p1, :cond_19
invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->nextCodePoint()I
move-result v0
if-eq v0, v1, :cond_19
add-int/lit8 p1, p1, -0x1
goto :goto_3
:cond_e
:goto_e
if-gez p1, :cond_19
invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->previousCodePoint()I
move-result v0
if-eq v0, v1, :cond_19
add-int/lit8 p1, p1, 0x1
goto :goto_e
:cond_19
if-eqz p1, :cond_21
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V
throw v0
:cond_21
invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I
move-result v0
return v0
.end method
.method public moveIndex(I)I
.registers 6
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I
move-result v2
add-int/2addr v2, p1
invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->getLength()I
move-result v3
invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I
move-result v2
invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I
move-result v0
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V
return v0
.end method
.method public abstract next()I
.end method
.method public nextCodePoint()I
.registers 5
invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->next()I
move-result v0
int-to-char v2, v0
invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z
move-result v2
if-eqz v2, :cond_23
invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->next()I
move-result v1
int-to-char v2, v1
invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z
move-result v2
if-eqz v2, :cond_1d
int-to-char v2, v0
int-to-char v3, v1
invoke-static {v2, v3}, Lcom/ibm/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I
move-result v2
:goto_1c
return v2
:cond_1d
const/4 v2, -0x1
if-eq v1, v2, :cond_23
invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I
:cond_23
move v2, v0
goto :goto_1c
.end method
.method public abstract previous()I
.end method
.method public previousCodePoint()I
.registers 5
invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I
move-result v0
int-to-char v2, v0
invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z
move-result v2
if-eqz v2, :cond_23
invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I
move-result v1
int-to-char v2, v1
invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z
move-result v2
if-eqz v2, :cond_1d
int-to-char v2, v1
int-to-char v3, v0
invoke-static {v2, v3}, Lcom/ibm/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I
move-result v2
:goto_1c
return v2
:cond_1d
const/4 v2, -0x1
if-eq v1, v2, :cond_23
invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->next()I
:cond_23
move v2, v0
goto :goto_1c
.end method
.method public abstract setIndex(I)V
.end method
.method public setToLimit()V
.registers 2
invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->getLength()I
move-result v0
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V
return-void
.end method
.method public setToStart()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V
return-void
.end method