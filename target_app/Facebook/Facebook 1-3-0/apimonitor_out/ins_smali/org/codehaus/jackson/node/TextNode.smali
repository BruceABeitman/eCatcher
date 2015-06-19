.class public final Lorg/codehaus/jackson/node/TextNode;
.super Lorg/codehaus/jackson/node/ValueNode;
.field static final EMPTY_STRING_NODE:Lorg/codehaus/jackson/node/TextNode;
.field final _value:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lorg/codehaus/jackson/node/TextNode;
const-string v1, ""
invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/TextNode;-><init>(Ljava/lang/String;)V
sput-object v0, Lorg/codehaus/jackson/node/TextNode;->EMPTY_STRING_NODE:Lorg/codehaus/jackson/node/TextNode;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Lorg/codehaus/jackson/node/ValueNode;-><init>()V
iput-object p1, p0, Lorg/codehaus/jackson/node/TextNode;->_value:Ljava/lang/String;
return-void
.end method
.method protected static appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V
.registers 3
const/16 v0, 0x22
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-static {p0, p1}, Lorg/codehaus/jackson/util/CharTypes;->appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lorg/codehaus/jackson/node/TextNode;
.registers 2
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_d
sget-object v0, Lorg/codehaus/jackson/node/TextNode;->EMPTY_STRING_NODE:Lorg/codehaus/jackson/node/TextNode;
goto :goto_3
:cond_d
new-instance v0, Lorg/codehaus/jackson/node/TextNode;
invoke-direct {v0, p0}, Lorg/codehaus/jackson/node/TextNode;-><init>(Ljava/lang/String;)V
goto :goto_3
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 5
const/4 v2, 0x0
if-ne p1, p0, :cond_5
const/4 v0, 0x1
:goto_4
return v0
:cond_5
if-nez p1, :cond_9
move v0, v2
goto :goto_4
:cond_9
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
if-eq v0, v1, :cond_15
move v0, v2
goto :goto_4
:cond_15
check-cast p1, Lorg/codehaus/jackson/node/TextNode;
iget-object v0, p1, Lorg/codehaus/jackson/node/TextNode;->_value:Ljava/lang/String;
iget-object v1, p0, Lorg/codehaus/jackson/node/TextNode;->_value:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_4
.end method
.method public getTextValue()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/node/TextNode;->_value:Ljava/lang/String;
return-object v0
.end method
.method public getValueAsText()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/node/TextNode;->_value:Ljava/lang/String;
return-object v0
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/node/TextNode;->_value:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
return v0
.end method
.method public isTextual()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final serialize(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
.registers 4
iget-object v0, p0, Lorg/codehaus/jackson/node/TextNode;->_value:Ljava/lang/String;
if-nez v0, :cond_8
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeNull()V
:goto_7
return-void
:cond_8
iget-object v0, p0, Lorg/codehaus/jackson/node/TextNode;->_value:Ljava/lang/String;
invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V
goto :goto_7
.end method
.method public toString()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lorg/codehaus/jackson/node/TextNode;->_value:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
add-int/lit8 v1, v0, 0x2
shr-int/lit8 v0, v0, 0x4
add-int/2addr v0, v1
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V
iget-object v0, p0, Lorg/codehaus/jackson/node/TextNode;->_value:Ljava/lang/String;
invoke-static {v1, v0}, Lorg/codehaus/jackson/node/TextNode;->appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method