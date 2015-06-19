.class public final Lcom/fasterxml/jackson/core/json/JsonReadContext;
.super Lcom/fasterxml/jackson/core/JsonStreamContext;
.source "JsonReadContext.java"
.field protected _child:Lcom/fasterxml/jackson/core/json/JsonReadContext;
.field protected _columnNr:I
.field protected _currentName:Ljava/lang/String;
.field protected final _dups:Lcom/fasterxml/jackson/core/json/DupDetector;
.field protected _lineNr:I
.field protected final _parent:Lcom/fasterxml/jackson/core/json/JsonReadContext;
.method public constructor <init>(Lcom/fasterxml/jackson/core/json/JsonReadContext;Lcom/fasterxml/jackson/core/json/DupDetector;III)V
.registers 7
invoke-direct {p0}, Lcom/fasterxml/jackson/core/JsonStreamContext;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_child:Lcom/fasterxml/jackson/core/json/JsonReadContext;
iput-object p1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_parent:Lcom/fasterxml/jackson/core/json/JsonReadContext;
iput-object p2, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;
iput p3, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_type:I
iput p4, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_lineNr:I
iput p5, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_columnNr:I
const/4 v0, -0x1
iput v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_index:I
return-void
.end method
.method private _checkDup(Lcom/fasterxml/jackson/core/json/DupDetector;Ljava/lang/String;)V
.registers 6
invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/json/DupDetector;->isDup(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_29
new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Duplicate field \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/DupDetector;->findLocation()Lcom/fasterxml/jackson/core/JsonLocation;
move-result-object v2
invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V
throw v0
:cond_29
return-void
.end method
.method public static createRootContext()Lcom/fasterxml/jackson/core/json/JsonReadContext;
.registers 1
const/4 v0, 0x0
invoke-static {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createRootContext(Lcom/fasterxml/jackson/core/json/DupDetector;)Lcom/fasterxml/jackson/core/json/JsonReadContext;
move-result-object v0
return-object v0
.end method
.method public static createRootContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createRootContext(IILcom/fasterxml/jackson/core/json/DupDetector;)Lcom/fasterxml/jackson/core/json/JsonReadContext;
move-result-object v0
return-object v0
.end method
.method public static createRootContext(IILcom/fasterxml/jackson/core/json/DupDetector;)Lcom/fasterxml/jackson/core/json/JsonReadContext;
.registers 9
new-instance v0, Lcom/fasterxml/jackson/core/json/JsonReadContext;
const/4 v1, 0x0
const/4 v3, 0x0
move-object v2, p2
move v4, p0
move v5, p1
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/JsonReadContext;-><init>(Lcom/fasterxml/jackson/core/json/JsonReadContext;Lcom/fasterxml/jackson/core/json/DupDetector;III)V
return-object v0
.end method
.method public static createRootContext(Lcom/fasterxml/jackson/core/json/DupDetector;)Lcom/fasterxml/jackson/core/json/JsonReadContext;
.registers 7
const/4 v3, 0x0
new-instance v0, Lcom/fasterxml/jackson/core/json/JsonReadContext;
const/4 v1, 0x0
const/4 v4, 0x1
move-object v2, p0
move v5, v3
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/JsonReadContext;-><init>(Lcom/fasterxml/jackson/core/json/JsonReadContext;Lcom/fasterxml/jackson/core/json/DupDetector;III)V
return-object v0
.end method
.method public createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;
.registers 9
const/4 v3, 0x1
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_child:Lcom/fasterxml/jackson/core/json/JsonReadContext;
if-nez v0, :cond_1c
new-instance v0, Lcom/fasterxml/jackson/core/json/JsonReadContext;
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;
if-nez v1, :cond_15
const/4 v2, 0x0
:goto_c
move-object v1, p0
move v4, p1
move v5, p2
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/JsonReadContext;-><init>(Lcom/fasterxml/jackson/core/json/JsonReadContext;Lcom/fasterxml/jackson/core/json/DupDetector;III)V
iput-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_child:Lcom/fasterxml/jackson/core/json/JsonReadContext;
:goto_14
return-object v0
:cond_15
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/DupDetector;->child()Lcom/fasterxml/jackson/core/json/DupDetector;
move-result-object v2
goto :goto_c
:cond_1c
invoke-virtual {v0, v3, p1, p2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->reset(III)V
goto :goto_14
.end method
.method public createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;
.registers 9
const/4 v3, 0x2
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_child:Lcom/fasterxml/jackson/core/json/JsonReadContext;
if-nez v0, :cond_1c
new-instance v0, Lcom/fasterxml/jackson/core/json/JsonReadContext;
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;
if-nez v1, :cond_15
const/4 v2, 0x0
:goto_c
move-object v1, p0
move v4, p1
move v5, p2
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/JsonReadContext;-><init>(Lcom/fasterxml/jackson/core/json/JsonReadContext;Lcom/fasterxml/jackson/core/json/DupDetector;III)V
iput-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_child:Lcom/fasterxml/jackson/core/json/JsonReadContext;
:goto_14
return-object v0
:cond_15
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/DupDetector;->child()Lcom/fasterxml/jackson/core/json/DupDetector;
move-result-object v2
goto :goto_c
:cond_1c
invoke-virtual {v0, v3, p1, p2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->reset(III)V
goto :goto_14
.end method
.method public expectComma()Z
.registers 3
iget v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_index:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_index:I
iget v1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_type:I
if-eqz v1, :cond_e
if-lez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public getCurrentName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_currentName:Ljava/lang/String;
return-object v0
.end method
.method public bridge synthetic getParent()Lcom/fasterxml/jackson/core/JsonStreamContext;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;
move-result-object v0
return-object v0
.end method
.method public getParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_parent:Lcom/fasterxml/jackson/core/json/JsonReadContext;
return-object v0
.end method
.method public getStartLocation(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/JsonLocation;
.registers 8
const-wide/16 v2, -0x1
new-instance v0, Lcom/fasterxml/jackson/core/JsonLocation;
iget v4, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_lineNr:I
iget v5, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_columnNr:I
move-object v1, p1
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Ljava/lang/Object;JII)V
return-object v0
.end method
.method protected reset(III)V
.registers 5
iput p1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_type:I
const/4 v0, -0x1
iput v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_index:I
iput p2, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_lineNr:I
iput p3, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_columnNr:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_currentName:Ljava/lang/String;
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/DupDetector;->reset()V
:cond_15
return-void
.end method
.method public setCurrentName(Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_currentName:Ljava/lang/String;
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;
invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_checkDup(Lcom/fasterxml/jackson/core/json/DupDetector;Ljava/lang/String;)V
:cond_b
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 4
const/16 v2, 0x22
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x40
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
iget v1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_type:I
packed-switch v1, :pswitch_data_4c
:goto_e
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:pswitch_13
const-string v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_e
:pswitch_19
const/16 v1, 0x5b
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentIndex()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const/16 v1, 0x5d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_e
:pswitch_2b
const/16 v1, 0x7b
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_currentName:Ljava/lang/String;
if-eqz v1, :cond_45
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_currentName:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/fasterxml/jackson/core/io/CharTypes;->appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:goto_3f
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_e
:cond_45
const/16 v1, 0x3f
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_3f
nop
:pswitch_data_4c
.packed-switch 0x0
:pswitch_13
:pswitch_19
:pswitch_2b
.end packed-switch
.end method