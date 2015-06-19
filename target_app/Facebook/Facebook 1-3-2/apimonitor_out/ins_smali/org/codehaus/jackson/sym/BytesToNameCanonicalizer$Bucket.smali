.class final Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
.super Ljava/lang/Object;
.field final mName:Lorg/codehaus/jackson/sym/Name;
.field final mNext:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
.method constructor <init>(Lorg/codehaus/jackson/sym/Name;Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lorg/codehaus/jackson/sym/Name;
iput-object p2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mNext:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
return-void
.end method
.method public find(III)Lorg/codehaus/jackson/sym/Name;
.registers 7
iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lorg/codehaus/jackson/sym/Name;
invoke-virtual {v0}, Lorg/codehaus/jackson/sym/Name;->hashCode()I
move-result v0
if-ne v0, p1, :cond_13
iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lorg/codehaus/jackson/sym/Name;
invoke-virtual {v0, p2, p3}, Lorg/codehaus/jackson/sym/Name;->equals(II)Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lorg/codehaus/jackson/sym/Name;
:goto_12
return-object v0
:cond_13
iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mNext:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
:goto_15
if-eqz v0, :cond_2a
iget-object v1, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lorg/codehaus/jackson/sym/Name;
invoke-virtual {v1}, Lorg/codehaus/jackson/sym/Name;->hashCode()I
move-result v2
if-ne v2, p1, :cond_27
invoke-virtual {v1, p2, p3}, Lorg/codehaus/jackson/sym/Name;->equals(II)Z
move-result v2
if-eqz v2, :cond_27
move-object v0, v1
goto :goto_12
:cond_27
iget-object v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mNext:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
goto :goto_15
:cond_2a
const/4 v0, 0x0
goto :goto_12
.end method
.method public find(I[II)Lorg/codehaus/jackson/sym/Name;
.registers 7
iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lorg/codehaus/jackson/sym/Name;
invoke-virtual {v0}, Lorg/codehaus/jackson/sym/Name;->hashCode()I
move-result v0
if-ne v0, p1, :cond_13
iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lorg/codehaus/jackson/sym/Name;
invoke-virtual {v0, p2, p3}, Lorg/codehaus/jackson/sym/Name;->equals([II)Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lorg/codehaus/jackson/sym/Name;
:goto_12
return-object v0
:cond_13
iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mNext:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
:goto_15
if-eqz v0, :cond_2a
iget-object v1, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lorg/codehaus/jackson/sym/Name;
invoke-virtual {v1}, Lorg/codehaus/jackson/sym/Name;->hashCode()I
move-result v2
if-ne v2, p1, :cond_27
invoke-virtual {v1, p2, p3}, Lorg/codehaus/jackson/sym/Name;->equals([II)Z
move-result v2
if-eqz v2, :cond_27
move-object v0, v1
goto :goto_12
:cond_27
iget-object v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mNext:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
goto :goto_15
:cond_2a
const/4 v0, 0x0
goto :goto_12
.end method
.method public length()I
.registers 4
const/4 v0, 0x1
iget-object v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mNext:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
move-object v2, v1
move v1, v0
move-object v0, v2
:goto_6
if-eqz v0, :cond_d
add-int/lit8 v1, v1, 0x1
iget-object v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mNext:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
goto :goto_6
:cond_d
return v1
.end method