.class public Lcom/fasterxml/jackson/core/json/JsonWriteContext;
.super Lcom/fasterxml/jackson/core/JsonStreamContext;
.source "JsonWriteContext.java"
.field public static final STATUS_EXPECT_NAME:I = 0x5
.field public static final STATUS_EXPECT_VALUE:I = 0x4
.field public static final STATUS_OK_AFTER_COLON:I = 0x2
.field public static final STATUS_OK_AFTER_COMMA:I = 0x1
.field public static final STATUS_OK_AFTER_SPACE:I = 0x3
.field public static final STATUS_OK_AS_IS:I
.field protected _child:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
.field protected _currentName:Ljava/lang/String;
.field protected final _dups:Lcom/fasterxml/jackson/core/json/DupDetector;
.field protected _gotName:Z
.field protected final _parent:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
.method protected constructor <init>(ILcom/fasterxml/jackson/core/json/JsonWriteContext;Lcom/fasterxml/jackson/core/json/DupDetector;)V
.registers 5
invoke-direct {p0}, Lcom/fasterxml/jackson/core/JsonStreamContext;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_child:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
iput p1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_type:I
iput-object p2, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_parent:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
iput-object p3, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;
const/4 v0, -0x1
iput v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I
return-void
.end method
.method private _checkDup(Lcom/fasterxml/jackson/core/json/DupDetector;Ljava/lang/String;)V
.registers 6
invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/json/DupDetector;->isDup(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_25
new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerationException;
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
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_25
return-void
.end method
.method public static createRootContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;
.registers 1
const/4 v0, 0x0
invoke-static {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->createRootContext(Lcom/fasterxml/jackson/core/json/DupDetector;)Lcom/fasterxml/jackson/core/json/JsonWriteContext;
move-result-object v0
return-object v0
.end method
.method public static createRootContext(Lcom/fasterxml/jackson/core/json/DupDetector;)Lcom/fasterxml/jackson/core/json/JsonWriteContext;
.registers 4
new-instance v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;
const/4 v1, 0x0
const/4 v2, 0x0
invoke-direct {v0, v1, v2, p0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;-><init>(ILcom/fasterxml/jackson/core/json/JsonWriteContext;Lcom/fasterxml/jackson/core/json/DupDetector;)V
return-object v0
.end method
.method protected final appendDesc(Ljava/lang/StringBuilder;)V
.registers 5
const/16 v2, 0x22
iget v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_type:I
const/4 v1, 0x2
if-ne v0, v1, :cond_27
const/16 v0, 0x7b
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_currentName:Ljava/lang/String;
if-eqz v0, :cond_21
invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_currentName:Ljava/lang/String;
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:goto_1b
const/16 v0, 0x7d
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:goto_20
return-void
:cond_21
const/16 v0, 0x3f
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_1b
:cond_27
iget v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_type:I
const/4 v1, 0x1
if-ne v0, v1, :cond_3e
const/16 v0, 0x5b
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getCurrentIndex()I
move-result v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const/16 v0, 0x5d
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_20
:cond_3e
const-string v0, "/"
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_20
.end method
.method public createChildArrayContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;
.registers 4
const/4 v2, 0x1
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_child:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
if-nez v0, :cond_1a
new-instance v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;
if-nez v0, :cond_13
const/4 v0, 0x0
:goto_c
invoke-direct {v1, v2, p0, v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;-><init>(ILcom/fasterxml/jackson/core/json/JsonWriteContext;Lcom/fasterxml/jackson/core/json/DupDetector;)V
iput-object v1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_child:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
move-object v0, v1
:goto_12
return-object v0
:cond_13
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/DupDetector;->child()Lcom/fasterxml/jackson/core/json/DupDetector;
move-result-object v0
goto :goto_c
:cond_1a
invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->reset(I)Lcom/fasterxml/jackson/core/json/JsonWriteContext;
move-result-object v0
goto :goto_12
.end method
.method public createChildObjectContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;
.registers 4
const/4 v2, 0x2
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_child:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
if-nez v0, :cond_1a
new-instance v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;
if-nez v0, :cond_13
const/4 v0, 0x0
:goto_c
invoke-direct {v1, v2, p0, v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;-><init>(ILcom/fasterxml/jackson/core/json/JsonWriteContext;Lcom/fasterxml/jackson/core/json/DupDetector;)V
iput-object v1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_child:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
move-object v0, v1
:goto_12
return-object v0
:cond_13
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/DupDetector;->child()Lcom/fasterxml/jackson/core/json/DupDetector;
move-result-object v0
goto :goto_c
:cond_1a
invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->reset(I)Lcom/fasterxml/jackson/core/json/JsonWriteContext;
move-result-object v0
goto :goto_12
.end method
.method public final getCurrentName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_currentName:Ljava/lang/String;
return-object v0
.end method
.method public bridge synthetic getParent()Lcom/fasterxml/jackson/core/JsonStreamContext;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonWriteContext;
move-result-object v0
return-object v0
.end method
.method public final getParent()Lcom/fasterxml/jackson/core/json/JsonWriteContext;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_parent:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
return-object v0
.end method
.method protected reset(I)Lcom/fasterxml/jackson/core/json/JsonWriteContext;
.registers 3
iput p1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_type:I
const/4 v0, -0x1
iput v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_currentName:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_gotName:Z
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/DupDetector;->reset()V
:cond_14
return-object p0
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x40
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->appendDesc(Ljava/lang/StringBuilder;)V
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final writeFieldName(Ljava/lang/String;)I
.registers 4
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_gotName:Z
iput-object p1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_currentName:Ljava/lang/String;
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;
if-eqz v1, :cond_e
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;
invoke-direct {p0, v1, p1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_checkDup(Lcom/fasterxml/jackson/core/json/DupDetector;Ljava/lang/String;)V
:cond_e
iget v1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I
if-gez v1, :cond_13
const/4 v0, 0x0
:cond_13
return v0
.end method
.method public final writeValue()I
.registers 5
const/4 v2, 0x2
const/4 v1, 0x1
const/4 v0, 0x0
iget v3, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_type:I
if-ne v3, v2, :cond_11
iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_gotName:Z
iget v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I
move v0, v2
:goto_10
:cond_10
return v0
:cond_11
iget v2, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_type:I
if-ne v2, v1, :cond_21
iget v2, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I
iget v3, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I
add-int/lit8 v3, v3, 0x1
iput v3, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I
if-ltz v2, :cond_10
move v0, v1
goto :goto_10
:cond_21
iget v1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I
iget v1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I
if-eqz v1, :cond_10
const/4 v0, 0x3
goto :goto_10
.end method