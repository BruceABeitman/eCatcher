.class public Lcom/ibm/icu/text/ReplaceableString;
.super Ljava/lang/Object;
.source "ReplaceableString.java"
.implements Lcom/ibm/icu/text/Replaceable;
.field private buf:Ljava/lang/StringBuffer;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/ibm/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;
return-void
.end method
.method public constructor <init>(Ljava/lang/StringBuffer;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/ibm/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;
return-void
.end method
.method public char32At(I)I
.registers 3
iget-object v0, p0, Lcom/ibm/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;
invoke-static {v0, p1}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/StringBuffer;I)I
move-result v0
return v0
.end method
.method public charAt(I)C
.registers 3
iget-object v0, p0, Lcom/ibm/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;
invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->charAt(I)C
move-result v0
return v0
.end method
.method public copy(III)V
.registers 10
const/4 v4, 0x0
if-ne p1, p2, :cond_e
if-ltz p1, :cond_e
iget-object v0, p0, Lcom/ibm/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I
move-result v0
if-gt p1, v0, :cond_e
:goto_d
return-void
:cond_e
sub-int v0, p2, p1
new-array v3, v0, [C
invoke-virtual {p0, p1, p2, v3, v4}, Lcom/ibm/icu/text/ReplaceableString;->getChars(II[CI)V
sub-int v5, p2, p1
move-object v0, p0
move v1, p3
move v2, p3
invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/ReplaceableString;->replace(II[CII)V
goto :goto_d
.end method
.method public getChars(II[CI)V
.registers 6
iget-object v0, p0, Lcom/ibm/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;
invoke-static {v0, p1, p2, p3, p4}, Lcom/ibm/icu/impl/Utility;->getChars(Ljava/lang/StringBuffer;II[CI)V
return-void
.end method
.method public hasMetaData()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public length()I
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I
move-result v0
return v0
.end method
.method public replace(IILjava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/ibm/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;
invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;
return-void
.end method
.method public replace(II[CII)V
.registers 7
iget-object v0, p0, Lcom/ibm/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;
invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
iget-object v0, p0, Lcom/ibm/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;
invoke-virtual {v0, p1, p3, p4, p5}, Ljava/lang/StringBuffer;->insert(I[CII)Ljava/lang/StringBuffer;
return-void
.end method
.method public substring(II)Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/ibm/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;
invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method