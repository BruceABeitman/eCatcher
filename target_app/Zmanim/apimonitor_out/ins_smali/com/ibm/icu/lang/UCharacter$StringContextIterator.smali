.class  Lcom/ibm/icu/lang/UCharacter$StringContextIterator;
.super Ljava/lang/Object;
.source "UCharacter.java"
.implements Lcom/ibm/icu/impl/UCaseProps$ContextIterator;
.field protected cpLimit:I
.field protected cpStart:I
.field protected dir:I
.field protected index:I
.field protected limit:I
.field protected s:Ljava/lang/String;
.method constructor <init>(Ljava/lang/String;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->s:Ljava/lang/String;
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
iput v0, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->limit:I
iput v1, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->index:I
iput v1, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->cpLimit:I
iput v1, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->cpStart:I
iput v1, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->dir:I
return-void
.end method
.method public getCPLimit()I
.registers 2
iget v0, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->cpLimit:I
return v0
.end method
.method public getCPStart()I
.registers 2
iget v0, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->cpStart:I
return v0
.end method
.method public moveToLimit()V
.registers 2
iget v0, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->limit:I
iput v0, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->cpLimit:I
iput v0, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->cpStart:I
return-void
.end method
.method public next()I
.registers 5
iget v1, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->dir:I
if-lez v1, :cond_21
iget v1, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->index:I
iget-object v2, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->s:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-ge v1, v2, :cond_21
iget-object v1, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->s:Ljava/lang/String;
iget v2, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->index:I
invoke-static {v1, v2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v0
iget v1, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->index:I
invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v2
add-int/2addr v1, v2
iput v1, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->index:I
move v1, v0
:goto_20
return v1
:cond_21
iget v1, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->dir:I
if-gez v1, :cond_3e
iget v1, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->index:I
if-lez v1, :cond_3e
iget-object v1, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->s:Ljava/lang/String;
iget v2, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->index:I
const/4 v3, 0x1
sub-int/2addr v2, v3
invoke-static {v1, v2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v0
iget v1, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->index:I
invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v2
sub-int/2addr v1, v2
iput v1, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->index:I
move v1, v0
goto :goto_20
:cond_3e
const/4 v1, -0x1
goto :goto_20
.end method
.method public nextCaseMapCP()I
.registers 7
const v5, 0xdfff
iget v2, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->cpLimit:I
iput v2, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->cpStart:I
iget v2, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->cpLimit:I
iget v3, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->limit:I
if-ge v2, v3, :cond_47
iget-object v2, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->s:Ljava/lang/String;
iget v3, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->cpLimit:I
add-int/lit8 v4, v3, 0x1
iput v4, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->cpLimit:I
invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C
move-result v0
const v2, 0xd800
if-le v2, v0, :cond_20
if-gt v0, v5, :cond_45
:cond_20
const v2, 0xdbff
if-gt v0, v2, :cond_45
iget v2, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->cpLimit:I
iget v3, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->limit:I
if-ge v2, v3, :cond_45
const v2, 0xdc00
iget-object v3, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->s:Ljava/lang/String;
iget v4, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->cpLimit:I
invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C
move-result v1
if-gt v2, v1, :cond_45
if-gt v1, v5, :cond_45
iget v2, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->cpLimit:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->cpLimit:I
int-to-char v2, v0
invoke-static {v2, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I
move-result v0
:cond_45
move v2, v0
:goto_46
return v2
:cond_47
const/4 v2, -0x1
goto :goto_46
.end method
.method public reset(I)V
.registers 3
const/4 v0, 0x0
if-lez p1, :cond_b
const/4 v0, 0x1
iput v0, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->dir:I
iget v0, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->cpLimit:I
iput v0, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->index:I
:goto_a
return-void
:cond_b
if-gez p1, :cond_15
const/4 v0, -0x1
iput v0, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->dir:I
iget v0, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->cpStart:I
iput v0, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->index:I
goto :goto_a
:cond_15
iput v0, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->dir:I
iput v0, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->index:I
goto :goto_a
.end method
.method public setLimit(I)V
.registers 3
if-ltz p1, :cond_d
iget-object v0, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->s:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-gt p1, v0, :cond_d
iput p1, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->limit:I
:goto_c
return-void
:cond_d
iget-object v0, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->s:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
iput v0, p0, Lcom/ibm/icu/lang/UCharacter$StringContextIterator;->limit:I
goto :goto_c
.end method