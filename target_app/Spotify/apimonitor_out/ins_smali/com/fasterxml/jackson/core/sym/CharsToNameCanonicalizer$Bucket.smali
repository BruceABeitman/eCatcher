.class final Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final _length:I
.field private final _next:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
.field private final _symbol:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->_symbol:Ljava/lang/String;
iput-object p2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->_next:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
if-nez p2, :cond_d
const/4 v0, 0x1
:goto_a
iput v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->_length:I
return-void
:cond_d
iget v0, p2, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->_length:I
add-int/lit8 v0, v0, 0x1
goto :goto_a
.end method
.method public final find([CII)Ljava/lang/String;
.registers 9
iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->_symbol:Ljava/lang/String;
iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->_next:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
:goto_4
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
if-ne v2, p3, :cond_1c
const/4 v2, 0x0
:cond_b
invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C
move-result v3
add-int v4, p2, v2
aget-char v4, p1, v4
if-ne v3, v4, :cond_19
add-int/lit8 v2, v2, 0x1
if-lt v2, p3, :cond_b
:cond_19
if-ne v2, p3, :cond_1c
:goto_1b
return-object v1
:cond_1c
if-eqz v0, :cond_27
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->getSymbol()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->getNext()Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
move-result-object v0
goto :goto_4
:cond_27
const/4 v1, 0x0
goto :goto_1b
.end method
.method public final getNext()Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->_next:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
return-object v0
.end method
.method public final getSymbol()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->_symbol:Ljava/lang/String;
return-object v0
.end method
.method public final length()I
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->_length:I
return v0
.end method