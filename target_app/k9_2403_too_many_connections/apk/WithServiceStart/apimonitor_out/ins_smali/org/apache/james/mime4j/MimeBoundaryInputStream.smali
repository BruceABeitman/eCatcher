.class public Lorg/apache/james/mime4j/MimeBoundaryInputStream;
.super Ljava/io/InputStream;
.source "MimeBoundaryInputStream.java"
.field private boundary:[B
.field private eof:Z
.field private first:Z
.field private moreParts:Z
.field private parenteof:Z
.field private s:Ljava/io/PushbackInputStream;
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
.registers 8
const/4 v4, 0x0
const/4 v3, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Ljava/io/InputStream;-><init>()V
iput-object v4, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;
iput-object v4, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B
iput-boolean v3, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->first:Z
iput-boolean v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->eof:Z
iput-boolean v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->parenteof:Z
iput-boolean v3, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->moreParts:Z
new-instance v2, Ljava/io/PushbackInputStream;
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v3
add-int/lit8 v3, v3, 0x4
invoke-direct {v2, p1, v3}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V
iput-object v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "--"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p2
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v2
new-array v2, v2, [B
iput-object v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B
const/4 v1, 0x0
:goto_3b
iget-object v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B
array-length v2, v2
if-ge v1, v2, :cond_4c
iget-object v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B
invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C
move-result v3
int-to-byte v3, v3
aput-byte v3, v2, v1
add-int/lit8 v1, v1, 0x1
goto :goto_3b
:cond_4c
invoke-virtual {p0}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->read()I
move-result v0
const/4 v2, -0x1
if-eq v0, v2, :cond_58
iget-object v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;
invoke-virtual {v2, v0}, Ljava/io/PushbackInputStream;->unread(I)V
:cond_58
return-void
.end method
.method private matchBoundary()Z
.registers 11
const/16 v9, 0x2d
const/4 v8, 0x0
const/4 v7, -0x1
const/4 v6, 0x1
const/4 v2, 0x0
:goto_6
iget-object v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B
array-length v5, v5
if-ge v2, v5, :cond_33
iget-object v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;
invoke-virtual {v5}, Ljava/io/PushbackInputStream;->read()I
move-result v0
iget-object v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B
aget-byte v5, v5, v2
if-eq v0, v5, :cond_30
if-eq v0, v7, :cond_1e
iget-object v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;
invoke-virtual {v5, v0}, Ljava/io/PushbackInputStream;->unread(I)V
:cond_1e
sub-int v3, v2, v6
:goto_20
if-ltz v3, :cond_2e
iget-object v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;
iget-object v6, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B
aget-byte v6, v6, v3
invoke-virtual {v5, v6}, Ljava/io/PushbackInputStream;->unread(I)V
add-int/lit8 v3, v3, -0x1
goto :goto_20
:cond_2e
move v5, v8
:goto_2f
return v5
:cond_30
add-int/lit8 v2, v2, 0x1
goto :goto_6
:cond_33
iget-object v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;
invoke-virtual {v5}, Ljava/io/PushbackInputStream;->read()I
move-result v4
iget-object v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;
invoke-virtual {v5}, Ljava/io/PushbackInputStream;->read()I
move-result v1
if-ne v4, v9, :cond_43
if-eq v1, v9, :cond_58
:cond_43
move v5, v6
:goto_44
iput-boolean v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->moreParts:Z
:cond_46
const/16 v5, 0xa
if-ne v1, v5, :cond_5a
const/16 v5, 0xd
if-ne v4, v5, :cond_5a
:goto_4e
if-ne v1, v7, :cond_54
iput-boolean v8, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->moreParts:Z
iput-boolean v6, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->parenteof:Z
:cond_54
iput-boolean v6, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->eof:Z
move v5, v6
goto :goto_2f
:cond_58
move v5, v8
goto :goto_44
:cond_5a
move v4, v1
iget-object v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;
invoke-virtual {v5}, Ljava/io/PushbackInputStream;->read()I
move-result v1
if-ne v1, v7, :cond_46
goto :goto_4e
.end method
.method public close()V
.registers 2
iget-object v0, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;
invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V
return-void
.end method
.method public consume()V
.registers 3
:cond_0
invoke-virtual {p0}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->read()I
move-result v0
const/4 v1, -0x1
if-ne v0, v1, :cond_0
return-void
.end method
.method public hasMoreParts()Z
.registers 2
iget-boolean v0, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->moreParts:Z
return v0
.end method
.method public parentEOF()Z
.registers 2
iget-boolean v0, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->parenteof:Z
return v0
.end method
.method public read()I
.registers 6
const/4 v4, 0x0
const/4 v3, -0x1
iget-boolean v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->eof:Z
if-eqz v2, :cond_8
move v2, v3
:goto_7
return v2
:cond_8
iget-boolean v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->first:Z
if-eqz v2, :cond_16
iput-boolean v4, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->first:Z
invoke-direct {p0}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->matchBoundary()Z
move-result v2
if-eqz v2, :cond_16
move v2, v3
goto :goto_7
:cond_16
iget-object v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;
invoke-virtual {v2}, Ljava/io/PushbackInputStream;->read()I
move-result v0
iget-object v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;
invoke-virtual {v2}, Ljava/io/PushbackInputStream;->read()I
move-result v1
const/16 v2, 0xd
if-ne v0, v2, :cond_32
const/16 v2, 0xa
if-ne v1, v2, :cond_32
invoke-direct {p0}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->matchBoundary()Z
move-result v2
if-eqz v2, :cond_32
move v2, v3
goto :goto_7
:cond_32
if-eq v1, v3, :cond_39
iget-object v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;
invoke-virtual {v2, v1}, Ljava/io/PushbackInputStream;->unread(I)V
:cond_39
if-ne v0, v3, :cond_44
const/4 v2, 0x1
:goto_3c
iput-boolean v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->parenteof:Z
iget-boolean v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->parenteof:Z
iput-boolean v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->eof:Z
move v2, v0
goto :goto_7
:cond_44
move v2, v4
goto :goto_3c
.end method