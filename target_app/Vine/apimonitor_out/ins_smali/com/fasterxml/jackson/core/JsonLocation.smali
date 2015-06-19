.class public Lcom/fasterxml/jackson/core/JsonLocation;
.super Ljava/lang/Object;
.source "JsonLocation.java"
.implements Ljava/io/Serializable;
.field public static final NA:Lcom/fasterxml/jackson/core/JsonLocation; = null
.field private static final serialVersionUID:J = 0x1L
.field final _columnNr:I
.field final _lineNr:I
.field final transient _sourceRef:Ljava/lang/Object;
.field final _totalBytes:J
.field final _totalChars:J
.method static constructor <clinit>()V
.registers 8
const-wide/16 v2, -0x1
const/4 v6, -0x1
new-instance v0, Lcom/fasterxml/jackson/core/JsonLocation;
const-string v1, "N/A"
move-wide v4, v2
move v7, v6
invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Ljava/lang/Object;JJII)V
sput-object v0, Lcom/fasterxml/jackson/core/JsonLocation;->NA:Lcom/fasterxml/jackson/core/JsonLocation;
return-void
.end method
.method public constructor <init>(Ljava/lang/Object;JII)V
.registers 14
const-wide/16 v2, -0x1
move-object v0, p0
move-object v1, p1
move-wide v4, p2
move v6, p4
move v7, p5
invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Ljava/lang/Object;JJII)V
return-void
.end method
.method public constructor <init>(Ljava/lang/Object;JJII)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;
iput-wide p2, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_totalBytes:J
iput-wide p4, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_totalChars:J
iput p6, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_lineNr:I
iput p7, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_columnNr:I
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 8
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p1, p0, :cond_6
move v1, v0
:goto_5
:cond_5
return v1
:cond_6
if-eqz p1, :cond_5
instance-of v2, p1, Lcom/fasterxml/jackson/core/JsonLocation;
if-eqz v2, :cond_5
check-cast p1, Lcom/fasterxml/jackson/core/JsonLocation;
iget-object v2, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;
if-nez v2, :cond_38
iget-object v2, p1, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;
if-nez v2, :cond_5
:cond_16
iget v2, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_lineNr:I
iget v3, p1, Lcom/fasterxml/jackson/core/JsonLocation;->_lineNr:I
if-ne v2, v3, :cond_43
iget v2, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_columnNr:I
iget v3, p1, Lcom/fasterxml/jackson/core/JsonLocation;->_columnNr:I
if-ne v2, v3, :cond_43
iget-wide v2, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_totalChars:J
iget-wide v4, p1, Lcom/fasterxml/jackson/core/JsonLocation;->_totalChars:J
cmp-long v2, v2, v4
if-nez v2, :cond_43
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonLocation;->getByteOffset()J
move-result-wide v2
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonLocation;->getByteOffset()J
move-result-wide v4
cmp-long v2, v2, v4
if-nez v2, :cond_43
:goto_36
move v1, v0
goto :goto_5
:cond_38
iget-object v2, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;
iget-object v3, p1, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;
invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_16
goto :goto_5
:cond_43
move v0, v1
goto :goto_36
.end method
.method public getByteOffset()J
.registers 3
iget-wide v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_totalBytes:J
return-wide v0
.end method
.method public getCharOffset()J
.registers 3
iget-wide v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_totalChars:J
return-wide v0
.end method
.method public getColumnNr()I
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_columnNr:I
return v0
.end method
.method public getLineNr()I
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_lineNr:I
return v0
.end method
.method public getSourceRef()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;
return-object v0
.end method
.method public hashCode()I
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;
if-nez v0, :cond_14
const/4 v0, 0x1
:goto_5
iget v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_lineNr:I
xor-int/2addr v0, v1
iget v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_columnNr:I
add-int/2addr v0, v1
iget-wide v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_totalChars:J
long-to-int v1, v1
xor-int/2addr v0, v1
iget-wide v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_totalBytes:J
long-to-int v1, v1
add-int/2addr v0, v1
return v0
:cond_14
iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
goto :goto_5
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x50
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
const-string v1, "[Source: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;
if-nez v1, :cond_33
const-string v1, "UNKNOWN"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_15
const-string v1, "; line: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_lineNr:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v1, ", column: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_columnNr:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const/16 v1, 0x5d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_33
iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_15
.end method