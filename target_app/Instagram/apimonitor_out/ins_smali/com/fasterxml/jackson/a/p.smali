.class public Lcom/fasterxml/jackson/a/p;
.super Ljava/io/IOException;
.source "JsonProcessingException.java"
.field static final serialVersionUID:J = 0x7bL
.field protected _location:Lcom/fasterxml/jackson/a/j;
.method protected constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
return-void
.end method
.method protected constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/j;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/a/p;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/j;Ljava/lang/Throwable;)V
return-void
.end method
.method protected constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/j;Ljava/lang/Throwable;)V
.registers 4
invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
if-eqz p3, :cond_8
invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/a/p;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
:cond_8
iput-object p2, p0, Lcom/fasterxml/jackson/a/p;->_location:Lcom/fasterxml/jackson/a/j;
return-void
.end method
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, v0, p2}, Lcom/fasterxml/jackson/a/p;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/j;Ljava/lang/Throwable;)V
return-void
.end method
.method protected constructor <init>(Ljava/lang/Throwable;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, v0, v0, p1}, Lcom/fasterxml/jackson/a/p;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/j;Ljava/lang/Throwable;)V
return-void
.end method
.method public getLocation()Lcom/fasterxml/jackson/a/j;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/p;->_location:Lcom/fasterxml/jackson/a/j;
return-object v0
.end method
.method public getMessage()Ljava/lang/String;
.registers 6
invoke-super {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_8
const-string v0, "N/A"
:cond_8
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/p;->getLocation()Lcom/fasterxml/jackson/a/j;
move-result-object v1
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/p;->getMessageSuffix()Ljava/lang/String;
move-result-object v2
if-nez v1, :cond_14
if-eqz v2, :cond_3a
:cond_14
new-instance v3, Ljava/lang/StringBuilder;
const/16 v4, 0x64
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
if-eqz v2, :cond_23
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_23
if-eqz v1, :cond_36
const/16 v0, 0xa
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v0, " at "
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/j;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_36
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_3a
return-object v0
.end method
.method protected getMessageSuffix()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getOriginalMessage()Ljava/lang/String;
.registers 2
invoke-super {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ": "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/p;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method