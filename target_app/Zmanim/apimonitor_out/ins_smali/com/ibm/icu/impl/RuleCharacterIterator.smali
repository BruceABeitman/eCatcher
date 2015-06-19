.class public Lcom/ibm/icu/impl/RuleCharacterIterator;
.super Ljava/lang/Object;
.source "RuleCharacterIterator.java"
.field public static final DONE:I = -0x1
.field public static final PARSE_ESCAPES:I = 0x2
.field public static final PARSE_VARIABLES:I = 0x1
.field public static final SKIP_WHITESPACE:I = 0x4
.field private buf:[C
.field private bufPos:I
.field private isEscaped:Z
.field private pos:Ljava/text/ParsePosition;
.field private sym:Lcom/ibm/icu/text/SymbolTable;
.field private text:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/SymbolTable;Ljava/text/ParsePosition;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-eqz p1, :cond_f
invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I
move-result v0
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
if-le v0, v1, :cond_15
:cond_f
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:cond_15
iput-object p1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;
iput-object p2, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->sym:Lcom/ibm/icu/text/SymbolTable;
iput-object p3, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;
const/4 v0, 0x0
iput-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C
return-void
.end method
.method private _advance(I)V
.registers 4
iget-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C
if-eqz v0, :cond_14
iget v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->bufPos:I
add-int/2addr v0, p1
iput v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->bufPos:I
iget v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->bufPos:I
iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C
array-length v1, v1
if-ne v0, v1, :cond_13
const/4 v0, 0x0
iput-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C
:cond_13
:goto_13
return-void
:cond_14
iget-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;
iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;
invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I
move-result v1
add-int/2addr v1, p1
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V
iget-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;
invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I
move-result v0
iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-le v0, v1, :cond_13
iget-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;
iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V
goto :goto_13
.end method
.method private _current()I
.registers 6
iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C
if-eqz v1, :cond_11
iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C
const/4 v2, 0x0
iget-object v3, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C
array-length v3, v3
iget v4, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->bufPos:I
invoke-static {v1, v2, v3, v4}, Lcom/ibm/icu/text/UTF16;->charAt([CIII)I
move-result v1
:goto_10
return v1
:cond_11
iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;
invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I
move-result v0
iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-ge v0, v1, :cond_26
iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v1
goto :goto_10
:cond_26
const/4 v1, -0x1
goto :goto_10
.end method
.method public atEnd()Z
.registers 3
iget-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C
if-nez v0, :cond_14
iget-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;
invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I
move-result v0
iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-ne v0, v1, :cond_14
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method public getPos(Ljava/lang/Object;)Ljava/lang/Object;
.registers 10
const/4 v5, 0x2
const/4 v7, 0x1
const/4 v6, 0x0
if-nez p1, :cond_1c
new-array v3, v5, [Ljava/lang/Object;
iget-object v4, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C
aput-object v4, v3, v6
new-array v4, v5, [I
iget-object v5, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;
invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I
move-result v5
aput v5, v4, v6
iget v5, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->bufPos:I
aput v5, v4, v7
aput-object v4, v3, v7
:goto_1b
return-object v3
:cond_1c
move-object v0, p1
check-cast v0, [Ljava/lang/Object;
move-object v3, v0
move-object v0, v3
check-cast v0, [Ljava/lang/Object;
move-object v1, v0
iget-object v3, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C
aput-object v3, v1, v6
aget-object v3, v1, v7
check-cast v3, [I
move-object v0, v3
check-cast v0, [I
move-object v2, v0
iget-object v3, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;
invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I
move-result v3
aput v3, v2, v6
iget v3, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->bufPos:I
aput v3, v2, v7
move-object v3, p1
goto :goto_1b
.end method
.method public inVariable()Z
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public isEscaped()Z
.registers 2
iget-boolean v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->isEscaped:Z
return v0
.end method
.method public jumpahead(I)V
.registers 5
if-gez p1, :cond_8
new-instance v1, Ljava/lang/IllegalArgumentException;
invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v1
:cond_8
iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C
if-eqz v1, :cond_29
iget v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->bufPos:I
add-int/2addr v1, p1
iput v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->bufPos:I
iget v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->bufPos:I
iget-object v2, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C
array-length v2, v2
if-le v1, v2, :cond_1e
new-instance v1, Ljava/lang/IllegalArgumentException;
invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v1
:cond_1e
iget v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->bufPos:I
iget-object v2, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C
array-length v2, v2
if-ne v1, v2, :cond_28
const/4 v1, 0x0
iput-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C
:cond_28
return-void
:cond_29
iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;
invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I
move-result v1
add-int v0, v1, p1
iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;
invoke-virtual {v1, v0}, Ljava/text/ParsePosition;->setIndex(I)V
iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-le v0, v1, :cond_28
new-instance v1, Ljava/lang/IllegalArgumentException;
invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v1
.end method
.method public lookahead()Ljava/lang/String;
.registers 6
iget-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C
if-eqz v0, :cond_14
new-instance v0, Ljava/lang/String;
iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C
iget v2, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->bufPos:I
iget-object v3, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C
array-length v3, v3
iget v4, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->bufPos:I
sub-int/2addr v3, v4
invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V
:goto_13
return-object v0
:cond_14
iget-object v0, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;
iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;
invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
goto :goto_13
.end method
.method public next(I)I
.registers 11
const/4 v8, 0x1
const/4 v7, 0x0
const/4 v0, -0x1
iput-boolean v7, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->isEscaped:Z
:goto_5
:cond_5
invoke-direct {p0}, Lcom/ibm/icu/impl/RuleCharacterIterator;->_current()I
move-result v0
invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v3
invoke-direct {p0, v3}, Lcom/ibm/icu/impl/RuleCharacterIterator;->_advance(I)V
const/16 v3, 0x24
if-ne v0, v3, :cond_63
iget-object v3, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C
if-nez v3, :cond_63
and-int/lit8 v3, p1, 0x1
if-eqz v3, :cond_63
iget-object v3, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->sym:Lcom/ibm/icu/text/SymbolTable;
if-eqz v3, :cond_63
iget-object v3, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->sym:Lcom/ibm/icu/text/SymbolTable;
iget-object v4, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;
iget-object v5, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;
iget-object v6, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;
invoke-virtual {v6}, Ljava/lang/String;->length()I
move-result v6
invoke-interface {v3, v4, v5, v6}, Lcom/ibm/icu/text/SymbolTable;->parseReference(Ljava/lang/String;Ljava/text/ParsePosition;I)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_33
:cond_32
return v0
:cond_33
iput v7, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->bufPos:I
iget-object v3, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->sym:Lcom/ibm/icu/text/SymbolTable;
invoke-interface {v3, v1}, Lcom/ibm/icu/text/SymbolTable;->lookup(Ljava/lang/String;)[C
move-result-object v3
iput-object v3, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C
iget-object v3, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C
if-nez v3, :cond_5a
new-instance v3, Ljava/lang/IllegalArgumentException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Undefined variable: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
:cond_5a
iget-object v3, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C
array-length v3, v3
if-nez v3, :cond_5
const/4 v3, 0x0
iput-object v3, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C
goto :goto_5
:cond_63
and-int/lit8 v3, p1, 0x4
if-eqz v3, :cond_6d
invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->isRuleWhiteSpace(I)Z
move-result v3
if-nez v3, :cond_5
:cond_6d
const/16 v3, 0x5c
if-ne v0, v3, :cond_32
and-int/lit8 v3, p1, 0x2
if-eqz v3, :cond_32
new-array v2, v8, [I
aput v7, v2, v7
invoke-virtual {p0}, Lcom/ibm/icu/impl/RuleCharacterIterator;->lookahead()Ljava/lang/String;
move-result-object v3
invoke-static {v3, v2}, Lcom/ibm/icu/impl/Utility;->unescapeAt(Ljava/lang/String;[I)I
move-result v0
aget v3, v2, v7
invoke-virtual {p0, v3}, Lcom/ibm/icu/impl/RuleCharacterIterator;->jumpahead(I)V
iput-boolean v8, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->isEscaped:Z
if-gez v0, :cond_32
new-instance v3, Ljava/lang/IllegalArgumentException;
const-string v4, "Invalid escape"
invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
.end method
.method public setPos(Ljava/lang/Object;)V
.registers 8
const/4 v5, 0x1
const/4 v4, 0x0
check-cast p1, [Ljava/lang/Object;
move-object v0, p1
check-cast v0, [Ljava/lang/Object;
move-object v1, v0
aget-object v3, v1, v4
check-cast v3, [C
check-cast v3, [C
iput-object v3, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->buf:[C
aget-object v3, v1, v5
check-cast v3, [I
move-object v0, v3
check-cast v0, [I
move-object v2, v0
iget-object v3, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;
aget v4, v2, v4
invoke-virtual {v3, v4}, Ljava/text/ParsePosition;->setIndex(I)V
aget v3, v2, v5
iput v3, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->bufPos:I
return-void
.end method
.method public skipIgnored(I)V
.registers 4
and-int/lit8 v1, p1, 0x4
if-eqz v1, :cond_e
:goto_4
invoke-direct {p0}, Lcom/ibm/icu/impl/RuleCharacterIterator;->_current()I
move-result v0
invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->isRuleWhiteSpace(I)Z
move-result v1
if-nez v1, :cond_f
:cond_e
return-void
:cond_f
invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v1
invoke-direct {p0, v1}, Lcom/ibm/icu/impl/RuleCharacterIterator;->_advance(I)V
goto :goto_4
.end method
.method public toString()Ljava/lang/String;
.registers 5
iget-object v1, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;
invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I
move-result v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;
const/4 v3, 0x0
invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const/16 v2, 0x7c
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/ibm/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method