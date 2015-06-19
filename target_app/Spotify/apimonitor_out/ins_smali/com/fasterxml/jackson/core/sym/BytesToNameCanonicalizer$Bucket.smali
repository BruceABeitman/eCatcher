.class final Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final _length:I
.field protected final _name:Lcom/fasterxml/jackson/core/sym/Name;
.field protected final _next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
.method constructor <init>(Lcom/fasterxml/jackson/core/sym/Name;Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/fasterxml/jackson/core/sym/Name;
iput-object p2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
if-nez p2, :cond_d
const/4 v0, 0x1
:goto_a
iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_length:I
return-void
:cond_d
iget v0, p2, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_length:I
add-int/lit8 v0, v0, 0x1
goto :goto_a
.end method
.method public final find(III)Lcom/fasterxml/jackson/core/sym/Name;
.registers 7
iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/fasterxml/jackson/core/sym/Name;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/sym/Name;->hashCode()I
move-result v0
if-ne v0, p1, :cond_13
iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/fasterxml/jackson/core/sym/Name;
invoke-virtual {v0, p2, p3}, Lcom/fasterxml/jackson/core/sym/Name;->equals(II)Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/fasterxml/jackson/core/sym/Name;
:cond_12
:goto_12
return-object v0
:cond_13
iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
move-object v1, v0
:goto_16
if-eqz v1, :cond_2a
iget-object v0, v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/fasterxml/jackson/core/sym/Name;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/sym/Name;->hashCode()I
move-result v2
if-ne v2, p1, :cond_26
invoke-virtual {v0, p2, p3}, Lcom/fasterxml/jackson/core/sym/Name;->equals(II)Z
move-result v2
if-nez v2, :cond_12
:cond_26
iget-object v0, v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
move-object v1, v0
goto :goto_16
:cond_2a
const/4 v0, 0x0
goto :goto_12
.end method
.method public final find(I[II)Lcom/fasterxml/jackson/core/sym/Name;
.registers 7
iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/fasterxml/jackson/core/sym/Name;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/sym/Name;->hashCode()I
move-result v0
if-ne v0, p1, :cond_13
iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/fasterxml/jackson/core/sym/Name;
invoke-virtual {v0, p2, p3}, Lcom/fasterxml/jackson/core/sym/Name;->equals([II)Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/fasterxml/jackson/core/sym/Name;
:cond_12
:goto_12
return-object v0
:cond_13
iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
move-object v1, v0
:goto_16
if-eqz v1, :cond_2a
iget-object v0, v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/fasterxml/jackson/core/sym/Name;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/sym/Name;->hashCode()I
move-result v2
if-ne v2, p1, :cond_26
invoke-virtual {v0, p2, p3}, Lcom/fasterxml/jackson/core/sym/Name;->equals([II)Z
move-result v2
if-nez v2, :cond_12
:cond_26
iget-object v0, v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
move-object v1, v0
goto :goto_16
:cond_2a
const/4 v0, 0x0
goto :goto_12
.end method
.method public final length()I
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_length:I
return v0
.end method