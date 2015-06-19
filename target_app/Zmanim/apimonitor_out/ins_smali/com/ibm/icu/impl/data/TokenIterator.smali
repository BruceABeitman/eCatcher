.class public Lcom/ibm/icu/impl/data/TokenIterator;
.super Ljava/lang/Object;
.source "TokenIterator.java"
.field private buf:Ljava/lang/StringBuffer;
.field private done:Z
.field private lastpos:I
.field private line:Ljava/lang/String;
.field private pos:I
.field private reader:Lcom/ibm/icu/impl/data/ResourceReader;
.method public constructor <init>(Lcom/ibm/icu/impl/data/ResourceReader;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/ibm/icu/impl/data/TokenIterator;->reader:Lcom/ibm/icu/impl/data/ResourceReader;
const/4 v0, 0x0
iput-object v0, p0, Lcom/ibm/icu/impl/data/TokenIterator;->line:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/ibm/icu/impl/data/TokenIterator;->done:Z
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;
const/4 v0, -0x1
iput v0, p0, Lcom/ibm/icu/impl/data/TokenIterator;->lastpos:I
iput v0, p0, Lcom/ibm/icu/impl/data/TokenIterator;->pos:I
return-void
.end method
.method private nextToken(I)I
.registers 12
const/16 v9, 0x3a
const/4 v8, 0x0
const/4 v7, -0x1
iget-object v6, p0, Lcom/ibm/icu/impl/data/TokenIterator;->line:Ljava/lang/String;
invoke-static {v6, p1}, Lcom/ibm/icu/impl/Utility;->skipWhitespace(Ljava/lang/String;I)I
move-result p1
iget-object v6, p0, Lcom/ibm/icu/impl/data/TokenIterator;->line:Ljava/lang/String;
invoke-virtual {v6}, Ljava/lang/String;->length()I
move-result v6
if-ne p1, v6, :cond_14
move v6, v7
:goto_13
return v6
:cond_14
move v5, p1
iget-object v6, p0, Lcom/ibm/icu/impl/data/TokenIterator;->line:Ljava/lang/String;
add-int/lit8 v2, p1, 0x1
invoke-virtual {v6, p1}, Ljava/lang/String;->charAt(I)C
move-result v0
const/4 v4, 0x0
packed-switch v0, :pswitch_data_cc
:pswitch_21
iget-object v6, p0, Lcom/ibm/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;
invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:goto_26
const/4 v3, 0x0
move p1, v2
:goto_28
iget-object v6, p0, Lcom/ibm/icu/impl/data/TokenIterator;->line:Ljava/lang/String;
invoke-virtual {v6}, Ljava/lang/String;->length()I
move-result v6
if-ge p1, v6, :cond_a0
iget-object v6, p0, Lcom/ibm/icu/impl/data/TokenIterator;->line:Ljava/lang/String;
invoke-virtual {v6, p1}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v6, 0x5c
if-ne v0, v6, :cond_7f
if-nez v3, :cond_3f
const/4 v6, 0x1
new-array v3, v6, [I
:cond_3f
add-int/lit8 v6, p1, 0x1
aput v6, v3, v8
iget-object v6, p0, Lcom/ibm/icu/impl/data/TokenIterator;->line:Ljava/lang/String;
invoke-static {v6, v3}, Lcom/ibm/icu/impl/Utility;->unescapeAt(Ljava/lang/String;[I)I
move-result v1
if-gez v1, :cond_77
new-instance v6, Ljava/lang/RuntimeException;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Invalid escape at "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
iget-object v8, p0, Lcom/ibm/icu/impl/data/TokenIterator;->reader:Lcom/ibm/icu/impl/data/ResourceReader;
invoke-virtual {v8}, Lcom/ibm/icu/impl/data/ResourceReader;->describePosition()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v6
:pswitch_72
move v4, v0
goto :goto_26
:pswitch_74
move p1, v2
move v6, v7
goto :goto_13
:cond_77
iget-object v6, p0, Lcom/ibm/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;
invoke-static {v6, v1}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
aget p1, v3, v8
goto :goto_28
:cond_7f
if-eqz v4, :cond_83
if-eq v0, v4, :cond_8b
:cond_83
if-nez v4, :cond_8f
invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->isRuleWhiteSpace(I)Z
move-result v6
if-eqz v6, :cond_8f
:cond_8b
add-int/lit8 p1, p1, 0x1
move v6, p1
goto :goto_13
:cond_8f
if-nez v4, :cond_98
const/16 v6, 0x23
if-ne v0, v6, :cond_98
move v6, p1
goto/16 :goto_13
:cond_98
iget-object v6, p0, Lcom/ibm/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;
invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
add-int/lit8 p1, p1, 0x1
goto :goto_28
:cond_a0
if-eqz v4, :cond_c9
new-instance v6, Ljava/lang/RuntimeException;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Unterminated quote at "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
iget-object v8, p0, Lcom/ibm/icu/impl/data/TokenIterator;->reader:Lcom/ibm/icu/impl/data/ResourceReader;
invoke-virtual {v8}, Lcom/ibm/icu/impl/data/ResourceReader;->describePosition()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v6
:cond_c9
move v6, p1
goto/16 :goto_13
:pswitch_data_cc
.packed-switch 0x22
:pswitch_72
:pswitch_74
:pswitch_21
:pswitch_21
:pswitch_21
:pswitch_72
.end packed-switch
.end method
.method public describePosition()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/ibm/icu/impl/data/TokenIterator;->reader:Lcom/ibm/icu/impl/data/ResourceReader;
invoke-virtual {v1}, Lcom/ibm/icu/impl/data/ResourceReader;->describePosition()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x3a
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/ibm/icu/impl/data/TokenIterator;->lastpos:I
add-int/lit8 v1, v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getLineNumber()I
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/data/TokenIterator;->reader:Lcom/ibm/icu/impl/data/ResourceReader;
invoke-virtual {v0}, Lcom/ibm/icu/impl/data/ResourceReader;->getLineNumber()I
move-result v0
return v0
.end method
.method public next()Ljava/lang/String;
.registers 4
const/4 v2, 0x0
const/4 v1, 0x0
iget-boolean v0, p0, Lcom/ibm/icu/impl/data/TokenIterator;->done:Z
if-eqz v0, :cond_21
move-object v0, v1
:goto_7
return-object v0
:cond_8
iput v2, p0, Lcom/ibm/icu/impl/data/TokenIterator;->pos:I
:cond_a
iget-object v0, p0, Lcom/ibm/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V
iget v0, p0, Lcom/ibm/icu/impl/data/TokenIterator;->pos:I
iput v0, p0, Lcom/ibm/icu/impl/data/TokenIterator;->lastpos:I
iget v0, p0, Lcom/ibm/icu/impl/data/TokenIterator;->pos:I
invoke-direct {p0, v0}, Lcom/ibm/icu/impl/data/TokenIterator;->nextToken(I)I
move-result v0
iput v0, p0, Lcom/ibm/icu/impl/data/TokenIterator;->pos:I
iget v0, p0, Lcom/ibm/icu/impl/data/TokenIterator;->pos:I
if-gez v0, :cond_36
iput-object v1, p0, Lcom/ibm/icu/impl/data/TokenIterator;->line:Ljava/lang/String;
:cond_21
iget-object v0, p0, Lcom/ibm/icu/impl/data/TokenIterator;->line:Ljava/lang/String;
if-nez v0, :cond_a
iget-object v0, p0, Lcom/ibm/icu/impl/data/TokenIterator;->reader:Lcom/ibm/icu/impl/data/ResourceReader;
invoke-virtual {v0}, Lcom/ibm/icu/impl/data/ResourceReader;->readLineSkippingComments()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/impl/data/TokenIterator;->line:Ljava/lang/String;
iget-object v0, p0, Lcom/ibm/icu/impl/data/TokenIterator;->line:Ljava/lang/String;
if-nez v0, :cond_8
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/ibm/icu/impl/data/TokenIterator;->done:Z
move-object v0, v1
goto :goto_7
:cond_36
iget-object v0, p0, Lcom/ibm/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_7
.end method