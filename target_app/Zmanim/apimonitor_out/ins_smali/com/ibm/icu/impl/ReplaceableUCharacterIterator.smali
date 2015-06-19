.class public Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;
.super Lcom/ibm/icu/text/UCharacterIterator;
.source "ReplaceableUCharacterIterator.java"
.field private currentIndex:I
.field private replaceable:Lcom/ibm/icu/text/Replaceable;
.method public constructor <init>(Lcom/ibm/icu/text/Replaceable;)V
.registers 3
invoke-direct {p0}, Lcom/ibm/icu/text/UCharacterIterator;-><init>()V
if-nez p1, :cond_b
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:cond_b
iput-object p1, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;
const/4 v0, 0x0
iput v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Lcom/ibm/icu/text/UCharacterIterator;-><init>()V
if-nez p1, :cond_b
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:cond_b
new-instance v0, Lcom/ibm/icu/text/ReplaceableString;
invoke-direct {v0, p1}, Lcom/ibm/icu/text/ReplaceableString;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;
const/4 v0, 0x0
iput v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I
return-void
.end method
.method public constructor <init>(Ljava/lang/StringBuffer;)V
.registers 3
invoke-direct {p0}, Lcom/ibm/icu/text/UCharacterIterator;-><init>()V
if-nez p1, :cond_b
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:cond_b
new-instance v0, Lcom/ibm/icu/text/ReplaceableString;
invoke-direct {v0, p1}, Lcom/ibm/icu/text/ReplaceableString;-><init>(Ljava/lang/StringBuffer;)V
iput-object v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;
const/4 v0, 0x0
iput v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I
return-void
.end method
.method public clone()Ljava/lang/Object;
.registers 3
:try_start_0
invoke-super {p0}, Lcom/ibm/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;
:try_end_3
.catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v1
:goto_4
return-object v1
:catch_5
move-exception v0
const/4 v1, 0x0
goto :goto_4
.end method
.method public current()I
.registers 3
iget v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I
iget-object v1, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;
invoke-interface {v1}, Lcom/ibm/icu/text/Replaceable;->length()I
move-result v1
if-ge v0, v1, :cond_13
iget-object v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;
iget v1, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I
invoke-interface {v0, v1}, Lcom/ibm/icu/text/Replaceable;->charAt(I)C
move-result v0
:goto_12
return v0
:cond_13
const/4 v0, -0x1
goto :goto_12
.end method
.method public currentCodePoint()I
.registers 5
invoke-virtual {p0}, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->current()I
move-result v0
int-to-char v2, v0
invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z
move-result v2
if-eqz v2, :cond_23
invoke-virtual {p0}, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->next()I
invoke-virtual {p0}, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->current()I
move-result v1
invoke-virtual {p0}, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->previous()I
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
.method public getIndex()I
.registers 2
iget v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I
return v0
.end method
.method public getLength()I
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;
invoke-interface {v0}, Lcom/ibm/icu/text/Replaceable;->length()I
move-result v0
return v0
.end method
.method public getText([CI)I
.registers 6
iget-object v1, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;
invoke-interface {v1}, Lcom/ibm/icu/text/Replaceable;->length()I
move-result v0
if-ltz p2, :cond_d
add-int v1, p2, v0
array-length v2, p1
if-le v1, v2, :cond_17
:cond_d
new-instance v1, Ljava/lang/IndexOutOfBoundsException;
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v1
:cond_17
iget-object v1, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;
const/4 v2, 0x0
invoke-interface {v1, v2, v0, p1, p2}, Lcom/ibm/icu/text/Replaceable;->getChars(II[CI)V
return v0
.end method
.method public next()I
.registers 4
iget v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I
iget-object v1, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;
invoke-interface {v1}, Lcom/ibm/icu/text/Replaceable;->length()I
move-result v1
if-ge v0, v1, :cond_17
iget-object v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;
iget v1, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I
invoke-interface {v0, v1}, Lcom/ibm/icu/text/Replaceable;->charAt(I)C
move-result v0
:goto_16
return v0
:cond_17
const/4 v0, -0x1
goto :goto_16
.end method
.method public previous()I
.registers 4
iget v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I
if-lez v0, :cond_11
iget-object v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;
iget v1, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I
const/4 v2, 0x1
sub-int/2addr v1, v2
iput v1, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I
invoke-interface {v0, v1}, Lcom/ibm/icu/text/Replaceable;->charAt(I)C
move-result v0
:goto_10
return v0
:cond_11
const/4 v0, -0x1
goto :goto_10
.end method
.method public setIndex(I)V
.registers 3
if-ltz p1, :cond_a
iget-object v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;
invoke-interface {v0}, Lcom/ibm/icu/text/Replaceable;->length()I
move-result v0
if-le p1, v0, :cond_10
:cond_a
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V
throw v0
:cond_10
iput p1, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I
return-void
.end method