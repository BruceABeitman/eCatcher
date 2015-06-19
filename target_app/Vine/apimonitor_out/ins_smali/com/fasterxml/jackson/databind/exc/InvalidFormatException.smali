.class public Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;
.super Lcom/fasterxml/jackson/databind/JsonMappingException;
.source "InvalidFormatException.java"
.field private static final serialVersionUID:J = 0x1L
.field protected final _targetType:Ljava/lang/Class;
.field protected final _value:Ljava/lang/Object;
.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Object;Ljava/lang/Class;)V
.registers 5
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V
iput-object p3, p0, Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;->_value:Ljava/lang/Object;
iput-object p4, p0, Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;->_targetType:Ljava/lang/Class;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
.registers 4
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V
iput-object p2, p0, Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;->_value:Ljava/lang/Object;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;->_targetType:Ljava/lang/Class;
return-void
.end method
.method public static from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;
.registers 6
new-instance v0, Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;
move-result-object v1
invoke-direct {v0, p1, v1, p2, p3}, Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Object;Ljava/lang/Class;)V
return-object v0
.end method
.method public getTargetType()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;->_targetType:Ljava/lang/Class;
return-object v0
.end method
.method public getValue()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;->_value:Ljava/lang/Object;
return-object v0
.end method