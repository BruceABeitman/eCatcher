.class public final Lorg/codehaus/jackson/node/NullNode;
.super Lorg/codehaus/jackson/node/ValueNode;
.field public static final instance:Lorg/codehaus/jackson/node/NullNode;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lorg/codehaus/jackson/node/NullNode;
invoke-direct {v0}, Lorg/codehaus/jackson/node/NullNode;-><init>()V
sput-object v0, Lorg/codehaus/jackson/node/NullNode;->instance:Lorg/codehaus/jackson/node/NullNode;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lorg/codehaus/jackson/node/ValueNode;-><init>()V
return-void
.end method
.method public static getInstance()Lorg/codehaus/jackson/node/NullNode;
.registers 1
sget-object v0, Lorg/codehaus/jackson/node/NullNode;->instance:Lorg/codehaus/jackson/node/NullNode;
return-object v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 3
if-ne p1, p0, :cond_4
const/4 v0, 0x1
:goto_3
return v0
:cond_4
const/4 v0, 0x0
goto :goto_3
.end method
.method public getValueAsText()Ljava/lang/String;
.registers 2
const-string v0, "null"
return-object v0
.end method
.method public isNull()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final serialize(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
.registers 3
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeNull()V
return-void
.end method