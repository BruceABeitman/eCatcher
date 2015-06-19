.class public final Lcom/ibm/icu/impl/UCharArrayIterator;
.super Lcom/ibm/icu/text/UCharacterIterator;
.source "UCharArrayIterator.java"
.field private final limit:I
.field private pos:I
.field private final start:I
.field private final text:[C
.method public constructor <init>([CII)V
.registers 7
invoke-direct {p0}, Lcom/ibm/icu/text/UCharacterIterator;-><init>()V
if-ltz p2, :cond_a
array-length v0, p1
if-gt p3, v0, :cond_a
if-le p2, p3, :cond_3e
:cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "start: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " or limit: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " out of range [0, "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
array-length v2, p1
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_3e
iput-object p1, p0, Lcom/ibm/icu/impl/UCharArrayIterator;->text:[C
iput p2, p0, Lcom/ibm/icu/impl/UCharArrayIterator;->start:I
iput p3, p0, Lcom/ibm/icu/impl/UCharArrayIterator;->limit:I
iput p2, p0, Lcom/ibm/icu/impl/UCharArrayIterator;->pos:I
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
iget v0, p0, Lcom/ibm/icu/impl/UCharArrayIterator;->pos:I
iget v1, p0, Lcom/ibm/icu/impl/UCharArrayIterator;->limit:I
if-ge v0, v1, :cond_d
iget-object v0, p0, Lcom/ibm/icu/impl/UCharArrayIterator;->text:[C
iget v1, p0, Lcom/ibm/icu/impl/UCharArrayIterator;->pos:I
aget-char v0, v0, v1
:goto_c
return v0
:cond_d
const/4 v0, -0x1
goto :goto_c
.end method
.method public getIndex()I
.registers 3
iget v0, p0, Lcom/ibm/icu/impl/UCharArrayIterator;->pos:I
iget v1, p0, Lcom/ibm/icu/impl/UCharArrayIterator;->start:I
sub-int/2addr v0, v1
return v0
.end method
.method public getLength()I
.registers 3
iget v0, p0, Lcom/ibm/icu/impl/UCharArrayIterator;->limit:I
iget v1, p0, Lcom/ibm/icu/impl/UCharArrayIterator;->start:I
sub-int/2addr v0, v1
return v0
.end method
.method public getText([CI)I
.registers 6
iget v1, p0, Lcom/ibm/icu/impl/UCharArrayIterator;->limit:I
iget v2, p0, Lcom/ibm/icu/impl/UCharArrayIterator;->start:I
sub-int v0, v1, v2
iget-object v1, p0, Lcom/ibm/icu/impl/UCharArrayIterator;->text:[C
iget v2, p0, Lcom/ibm/icu/impl/UCharArrayIterator;->start:I
invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return v0
.end method
.method public next()I
.registers 4
iget v0, p0, Lcom/ibm/icu/impl/UCharArrayIterator;->pos:I
iget v1, p0, Lcom/ibm/icu/impl/UCharArrayIterator;->limit:I
if-ge v0, v1, :cond_11
iget-object v0, p0, Lcom/ibm/icu/impl/UCharArrayIterator;->text:[C
iget v1, p0, Lcom/ibm/icu/impl/UCharArrayIterator;->pos:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/ibm/icu/impl/UCharArrayIterator;->pos:I
aget-char v0, v0, v1
:goto_10
return v0
:cond_11
const/4 v0, -0x1
goto :goto_10
.end method
.method public previous()I
.registers 4
iget v0, p0, Lcom/ibm/icu/impl/UCharArrayIterator;->pos:I
iget v1, p0, Lcom/ibm/icu/impl/UCharArrayIterator;->start:I
if-le v0, v1, :cond_11
iget-object v0, p0, Lcom/ibm/icu/impl/UCharArrayIterator;->text:[C
iget v1, p0, Lcom/ibm/icu/impl/UCharArrayIterator;->pos:I
const/4 v2, 0x1
sub-int/2addr v1, v2
iput v1, p0, Lcom/ibm/icu/impl/UCharArrayIterator;->pos:I
aget-char v0, v0, v1
:goto_10
return v0
:cond_11
const/4 v0, -0x1
goto :goto_10
.end method
.method public setIndex(I)V
.registers 6
if-ltz p1, :cond_9
iget v0, p0, Lcom/ibm/icu/impl/UCharArrayIterator;->limit:I
iget v1, p0, Lcom/ibm/icu/impl/UCharArrayIterator;->start:I
sub-int/2addr v0, v1
if-le p1, v0, :cond_37
:cond_9
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "index: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " out of range [0, "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/ibm/icu/impl/UCharArrayIterator;->limit:I
iget v3, p0, Lcom/ibm/icu/impl/UCharArrayIterator;->start:I
sub-int/2addr v2, v3
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
:cond_37
iget v0, p0, Lcom/ibm/icu/impl/UCharArrayIterator;->start:I
add-int/2addr v0, p1
iput v0, p0, Lcom/ibm/icu/impl/UCharArrayIterator;->pos:I
return-void
.end method