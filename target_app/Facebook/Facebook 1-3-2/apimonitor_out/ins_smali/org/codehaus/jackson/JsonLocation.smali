.class public Lorg/codehaus/jackson/JsonLocation;
.super Ljava/lang/Object;
.field final _columnNr:I
.field final _lineNr:I
.field final _sourceRef:Ljava/lang/Object;
.field final _totalChars:J
.method public constructor <init>(Ljava/lang/Object;JII)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p2, p0, Lorg/codehaus/jackson/JsonLocation;->_totalChars:J
iput p4, p0, Lorg/codehaus/jackson/JsonLocation;->_lineNr:I
iput p5, p0, Lorg/codehaus/jackson/JsonLocation;->_columnNr:I
iput-object p1, p0, Lorg/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;
return-void
.end method
.method public getByteOffset()J
.registers 3
const-wide/16 v0, -0x1
return-wide v0
.end method
.method public getCharOffset()J
.registers 3
iget-wide v0, p0, Lorg/codehaus/jackson/JsonLocation;->_totalChars:J
return-wide v0
.end method
.method public getColumnNr()I
.registers 2
iget v0, p0, Lorg/codehaus/jackson/JsonLocation;->_columnNr:I
return v0
.end method
.method public getLineNr()I
.registers 2
iget v0, p0, Lorg/codehaus/jackson/JsonLocation;->_lineNr:I
return v0
.end method
.method public getSourceRef()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x50
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
const-string v1, "[Source: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lorg/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;
if-nez v1, :cond_33
const-string v1, "UNKNOWN"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_15
const-string v1, "; line: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v1, p0, Lorg/codehaus/jackson/JsonLocation;->_lineNr:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v1, ", column: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v1, p0, Lorg/codehaus/jackson/JsonLocation;->_columnNr:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const/16 v1, 0x5d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_33
iget-object v1, p0, Lorg/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_15
.end method