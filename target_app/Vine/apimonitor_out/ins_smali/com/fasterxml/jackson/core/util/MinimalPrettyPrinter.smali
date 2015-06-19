.class public Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;
.super Ljava/lang/Object;
.source "MinimalPrettyPrinter.java"
.implements Lcom/fasterxml/jackson/core/PrettyPrinter;
.implements Ljava/io/Serializable;
.field public static final DEFAULT_ROOT_VALUE_SEPARATOR:Ljava/lang/String; = " "
.field private static final serialVersionUID:J = -0x7cf57e08715650aL
.field protected _rootValueSeparator:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
const-string v0, " "
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, " "
iput-object v0, p0, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;->_rootValueSeparator:Ljava/lang/String;
iput-object p1, p0, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;->_rootValueSeparator:Ljava/lang/String;
return-void
.end method
.method public beforeArrayValues(Lcom/fasterxml/jackson/core/JsonGenerator;)V
.registers 2
return-void
.end method
.method public beforeObjectEntries(Lcom/fasterxml/jackson/core/JsonGenerator;)V
.registers 2
return-void
.end method
.method public setRootValueSeparator(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;->_rootValueSeparator:Ljava/lang/String;
return-void
.end method
.method public writeArrayValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V
.registers 3
const/16 v0, 0x2c
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V
return-void
.end method
.method public writeEndArray(Lcom/fasterxml/jackson/core/JsonGenerator;I)V
.registers 4
const/16 v0, 0x5d
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V
return-void
.end method
.method public writeEndObject(Lcom/fasterxml/jackson/core/JsonGenerator;I)V
.registers 4
const/16 v0, 0x7d
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V
return-void
.end method
.method public writeObjectEntrySeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V
.registers 3
const/16 v0, 0x2c
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V
return-void
.end method
.method public writeObjectFieldValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V
.registers 3
const/16 v0, 0x3a
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V
return-void
.end method
.method public writeRootValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;->_rootValueSeparator:Ljava/lang/String;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;->_rootValueSeparator:Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(Ljava/lang/String;)V
:cond_9
return-void
.end method
.method public writeStartArray(Lcom/fasterxml/jackson/core/JsonGenerator;)V
.registers 3
const/16 v0, 0x5b
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V
return-void
.end method
.method public writeStartObject(Lcom/fasterxml/jackson/core/JsonGenerator;)V
.registers 3
const/16 v0, 0x7b
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V
return-void
.end method