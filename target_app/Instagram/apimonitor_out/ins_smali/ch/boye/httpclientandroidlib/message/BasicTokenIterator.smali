.class public Lch/boye/httpclientandroidlib/message/BasicTokenIterator;
.super Ljava/lang/Object;
.source "BasicTokenIterator.java"
.implements Lch/boye/httpclientandroidlib/TokenIterator;
.field public static final HTTP_SEPARATORS:Ljava/lang/String; = " ,;=()<>@:\\\"/[]?{}\t"
.field protected currentHeader:Ljava/lang/String;
.field protected currentToken:Ljava/lang/String;
.field protected final headerIt:Lch/boye/httpclientandroidlib/HeaderIterator;
.field protected searchPos:I
.method public constructor <init>(Lch/boye/httpclientandroidlib/HeaderIterator;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Header iterator must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->headerIt:Lch/boye/httpclientandroidlib/HeaderIterator;
const/4 v0, -0x1
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->findNext(I)I
move-result v0
iput v0, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->searchPos:I
return-void
.end method
.method protected createToken(Ljava/lang/String;II)Ljava/lang/String;
.registers 5
invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected findNext(I)I
.registers 5
const/4 v0, -0x1
if-gez p1, :cond_23
iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->headerIt:Lch/boye/httpclientandroidlib/HeaderIterator;
invoke-interface {v1}, Lch/boye/httpclientandroidlib/HeaderIterator;->hasNext()Z
move-result v1
if-nez v1, :cond_c
:goto_b
return v0
:cond_c
iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->headerIt:Lch/boye/httpclientandroidlib/HeaderIterator;
invoke-interface {v1}, Lch/boye/httpclientandroidlib/HeaderIterator;->nextHeader()Lch/boye/httpclientandroidlib/Header;
move-result-object v1
invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;
const/4 p1, 0x0
:goto_19
invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->findTokenStart(I)I
move-result v1
if-gez v1, :cond_28
const/4 v1, 0x0
iput-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentToken:Ljava/lang/String;
goto :goto_b
:cond_23
invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->findTokenSeparator(I)I
move-result p1
goto :goto_19
:cond_28
invoke-virtual {p0, v1}, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->findTokenEnd(I)I
move-result v0
iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;
invoke-virtual {p0, v2, v1, v0}, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->createToken(Ljava/lang/String;II)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentToken:Ljava/lang/String;
goto :goto_b
.end method
.method protected findTokenEnd(I)I
.registers 5
if-gez p1, :cond_17
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Token start position must not be negative: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_17
iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
add-int/lit8 v0, p1, 0x1
:goto_1f
if-ge v0, v1, :cond_30
iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C
move-result v2
invoke-virtual {p0, v2}, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->isTokenChar(C)Z
move-result v2
if-eqz v2, :cond_30
add-int/lit8 v0, v0, 0x1
goto :goto_1f
:cond_30
return v0
.end method
.method protected findTokenSeparator(I)I
.registers 6
if-gez p1, :cond_17
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Search position must not be negative: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_17
const/4 v0, 0x0
iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
:goto_1e
if-nez v0, :cond_81
if-ge p1, v1, :cond_81
iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;
invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C
move-result v2
invoke-virtual {p0, v2}, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->isTokenSeparator(C)Z
move-result v3
if-eqz v3, :cond_30
const/4 v0, 0x1
goto :goto_1e
:cond_30
invoke-virtual {p0, v2}, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->isWhitespace(C)Z
move-result v3
if-eqz v3, :cond_39
add-int/lit8 p1, p1, 0x1
goto :goto_1e
:cond_39
invoke-virtual {p0, v2}, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->isTokenChar(C)Z
move-result v0
if-eqz v0, :cond_60
new-instance v0, Lch/boye/httpclientandroidlib/ParseException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Tokens without separator (pos "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "): "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ParseException;-><init>(Ljava/lang/String;)V
throw v0
:cond_60
new-instance v0, Lch/boye/httpclientandroidlib/ParseException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Invalid character after token (pos "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "): "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ParseException;-><init>(Ljava/lang/String;)V
throw v0
:cond_81
return p1
.end method
.method protected findTokenStart(I)I
.registers 6
if-gez p1, :cond_17
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Search position must not be negative: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_17
const/4 v0, 0x0
:cond_18
:goto_18
if-nez v0, :cond_88
iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;
if-eqz v1, :cond_88
iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
:goto_24
if-nez v0, :cond_6c
if-ge p1, v1, :cond_6c
iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;
invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C
move-result v2
invoke-virtual {p0, v2}, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->isTokenSeparator(C)Z
move-result v3
if-nez v3, :cond_3a
invoke-virtual {p0, v2}, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->isWhitespace(C)Z
move-result v2
if-eqz v2, :cond_3d
:cond_3a
add-int/lit8 p1, p1, 0x1
goto :goto_24
:cond_3d
iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;
invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C
move-result v0
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->isTokenChar(C)Z
move-result v0
if-eqz v0, :cond_4b
const/4 v0, 0x1
goto :goto_24
:cond_4b
new-instance v0, Lch/boye/httpclientandroidlib/ParseException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Invalid character before token (pos "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "): "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ParseException;-><init>(Ljava/lang/String;)V
throw v0
:cond_6c
if-nez v0, :cond_18
iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->headerIt:Lch/boye/httpclientandroidlib/HeaderIterator;
invoke-interface {v1}, Lch/boye/httpclientandroidlib/HeaderIterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_84
iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->headerIt:Lch/boye/httpclientandroidlib/HeaderIterator;
invoke-interface {v1}, Lch/boye/httpclientandroidlib/HeaderIterator;->nextHeader()Lch/boye/httpclientandroidlib/Header;
move-result-object v1
invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;
const/4 p1, 0x0
goto :goto_18
:cond_84
const/4 v1, 0x0
iput-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;
goto :goto_18
:cond_88
if-eqz v0, :cond_8b
:goto_8a
return p1
:cond_8b
const/4 p1, -0x1
goto :goto_8a
.end method
.method public hasNext()Z
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentToken:Ljava/lang/String;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method protected isHttpSeparator(C)Z
.registers 3
const-string v0, " ,;=()<>@:\\\"/[]?{}\t"
invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-ltz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method protected isTokenChar(C)Z
.registers 5
const/4 v0, 0x1
const/4 v1, 0x0
invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z
move-result v2
if-eqz v2, :cond_9
:goto_8
:cond_8
return v0
:cond_9
invoke-static {p1}, Ljava/lang/Character;->isISOControl(C)Z
move-result v2
if-eqz v2, :cond_11
move v0, v1
goto :goto_8
:cond_11
invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->isHttpSeparator(C)Z
move-result v2
if-eqz v2, :cond_8
move v0, v1
goto :goto_8
.end method
.method protected isTokenSeparator(C)Z
.registers 3
const/16 v0, 0x2c
if-ne p1, v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method protected isWhitespace(C)Z
.registers 3
const/16 v0, 0x9
if-eq p1, v0, :cond_a
invoke-static {p1}, Ljava/lang/Character;->isSpaceChar(C)Z
move-result v0
if-eqz v0, :cond_c
:cond_a
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public final next()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->nextToken()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public nextToken()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentToken:Ljava/lang/String;
if-nez v0, :cond_c
new-instance v0, Ljava/util/NoSuchElementException;
const-string v1, "Iteration already finished."
invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->currentToken:Ljava/lang/String;
iget v1, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->searchPos:I
invoke-virtual {p0, v1}, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->findNext(I)I
move-result v1
iput v1, p0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;->searchPos:I
return-object v0
.end method
.method public final remove()V
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Removing tokens is not supported."
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method