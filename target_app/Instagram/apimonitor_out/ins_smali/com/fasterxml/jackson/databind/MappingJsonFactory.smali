.class public Lcom/fasterxml/jackson/databind/MappingJsonFactory;
.super Lcom/fasterxml/jackson/a/e;
.source "MappingJsonFactory.java"
.field private static final serialVersionUID:J = -0x5d97de9aee334979L
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/MappingJsonFactory;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V
.registers 3
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/e;-><init>(Lcom/fasterxml/jackson/a/s;)V
if-nez p1, :cond_d
new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;
invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>(Lcom/fasterxml/jackson/a/e;)V
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/MappingJsonFactory;->setCodec(Lcom/fasterxml/jackson/a/s;)Lcom/fasterxml/jackson/a/e;
:cond_d
return-void
.end method
.method public copy()Lcom/fasterxml/jackson/a/e;
.registers 3
const-class v0, Lcom/fasterxml/jackson/databind/MappingJsonFactory;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/MappingJsonFactory;->_checkInvalidCopy(Ljava/lang/Class;)V
new-instance v0, Lcom/fasterxml/jackson/databind/MappingJsonFactory;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/MappingJsonFactory;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V
return-object v0
.end method
.method public bridge synthetic getCodec()Lcom/fasterxml/jackson/a/s;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/MappingJsonFactory;->getCodec()Lcom/fasterxml/jackson/databind/ObjectMapper;
move-result-object v0
return-object v0
.end method
.method public final getCodec()Lcom/fasterxml/jackson/databind/ObjectMapper;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/MappingJsonFactory;->_objectCodec:Lcom/fasterxml/jackson/a/s;
check-cast v0, Lcom/fasterxml/jackson/databind/ObjectMapper;
return-object v0
.end method
.method public getFormatName()Ljava/lang/String;
.registers 2
const-string v0, "JSON"
return-object v0
.end method
.method public hasFormat$2764b24c(Lcom/fasterxml/jackson/a/b/b;)I
.registers 4
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
const-class v1, Lcom/fasterxml/jackson/databind/MappingJsonFactory;
if-ne v0, v1, :cond_d
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/MappingJsonFactory;->hasJSONFormat$2764b24c(Lcom/fasterxml/jackson/a/b/b;)I
move-result v0
:goto_c
return v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method