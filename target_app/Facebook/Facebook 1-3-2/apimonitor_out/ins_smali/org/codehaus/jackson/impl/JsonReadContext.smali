.class public final Lorg/codehaus/jackson/impl/JsonReadContext;
.super Lorg/codehaus/jackson/JsonStreamContext;
.field  _child:Lorg/codehaus/jackson/impl/JsonReadContext;
.field protected _columnNr:I
.field protected _currentName:Ljava/lang/String;
.field protected _lineNr:I
.field protected final _parent:Lorg/codehaus/jackson/impl/JsonReadContext;
.method public constructor <init>(Lorg/codehaus/jackson/impl/JsonReadContext;III)V
.registers 6
invoke-direct {p0, p2}, Lorg/codehaus/jackson/JsonStreamContext;-><init>(I)V
const/4 v0, 0x0
iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_child:Lorg/codehaus/jackson/impl/JsonReadContext;
iput-object p1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_parent:Lorg/codehaus/jackson/impl/JsonReadContext;
iput p3, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_lineNr:I
iput p4, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_columnNr:I
return-void
.end method
.method public static createRootContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;
.registers 5
new-instance v0, Lorg/codehaus/jackson/impl/JsonReadContext;
const/4 v1, 0x0
const/4 v2, 0x0
invoke-direct {v0, v1, v2, p0, p1}, Lorg/codehaus/jackson/impl/JsonReadContext;-><init>(Lorg/codehaus/jackson/impl/JsonReadContext;III)V
return-object v0
.end method
.method public final createChildArrayContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;
.registers 5
const/4 v1, 0x1
iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_child:Lorg/codehaus/jackson/impl/JsonReadContext;
if-nez v0, :cond_d
new-instance v0, Lorg/codehaus/jackson/impl/JsonReadContext;
invoke-direct {v0, p0, v1, p1, p2}, Lorg/codehaus/jackson/impl/JsonReadContext;-><init>(Lorg/codehaus/jackson/impl/JsonReadContext;III)V
iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_child:Lorg/codehaus/jackson/impl/JsonReadContext;
:goto_c
return-object v0
:cond_d
invoke-virtual {v0, v1, p1, p2}, Lorg/codehaus/jackson/impl/JsonReadContext;->reset(III)V
goto :goto_c
.end method
.method public final createChildObjectContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;
.registers 5
const/4 v1, 0x2
iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_child:Lorg/codehaus/jackson/impl/JsonReadContext;
if-nez v0, :cond_d
new-instance v0, Lorg/codehaus/jackson/impl/JsonReadContext;
invoke-direct {v0, p0, v1, p1, p2}, Lorg/codehaus/jackson/impl/JsonReadContext;-><init>(Lorg/codehaus/jackson/impl/JsonReadContext;III)V
iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_child:Lorg/codehaus/jackson/impl/JsonReadContext;
:goto_c
return-object v0
:cond_d
invoke-virtual {v0, v1, p1, p2}, Lorg/codehaus/jackson/impl/JsonReadContext;->reset(III)V
goto :goto_c
.end method
.method public final expectComma()Z
.registers 3
iget v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_index:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_index:I
iget v1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_type:I
if-eqz v1, :cond_e
if-lez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public final getCurrentName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;
return-object v0
.end method
.method public bridge synthetic getParent()Lorg/codehaus/jackson/JsonStreamContext;
.registers 2
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonReadContext;->getParent()Lorg/codehaus/jackson/impl/JsonReadContext;
move-result-object v0
return-object v0
.end method
.method public final getParent()Lorg/codehaus/jackson/impl/JsonReadContext;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_parent:Lorg/codehaus/jackson/impl/JsonReadContext;
return-object v0
.end method
.method public final getStartLocation(Ljava/lang/Object;)Lorg/codehaus/jackson/JsonLocation;
.registers 8
const-wide/16 v2, -0x1
new-instance v0, Lorg/codehaus/jackson/JsonLocation;
iget v4, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_lineNr:I
iget v5, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_columnNr:I
move-object v1, p1
invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JII)V
return-object v0
.end method
.method protected final reset(III)V
.registers 5
iput p1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_type:I
const/4 v0, -0x1
iput v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_index:I
iput p2, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_lineNr:I
iput p3, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_columnNr:I
const/4 v0, 0x0
iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;
return-void
.end method
.method public setCurrentName(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;
return-void
.end method
.method public final toString()Ljava/lang/String;
.registers 5
const/16 v3, 0x5d
const/16 v2, 0x22
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x40
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
iget v1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_type:I
packed-switch v1, :pswitch_data_4a
:goto_10
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:pswitch_15
const-string v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_10
:pswitch_1b
const/16 v1, 0x5b
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonReadContext;->getCurrentIndex()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_10
:pswitch_2b
const/16 v1, 0x7b
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;
if-eqz v1, :cond_43
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;
invoke-static {v0, v1}, Lorg/codehaus/jackson/util/CharTypes;->appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:goto_3f
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_10
:cond_43
const/16 v1, 0x3f
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_3f
nop
:pswitch_data_4a
.packed-switch 0x0
:pswitch_15
:pswitch_1b
:pswitch_2b
.end packed-switch
.end method