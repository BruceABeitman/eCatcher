.class public final Lorg/codehaus/jackson/node/BooleanNode;
.super Lorg/codehaus/jackson/node/ValueNode;
.field public static final FALSE:Lorg/codehaus/jackson/node/BooleanNode;
.field public static final TRUE:Lorg/codehaus/jackson/node/BooleanNode;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lorg/codehaus/jackson/node/BooleanNode;
invoke-direct {v0}, Lorg/codehaus/jackson/node/BooleanNode;-><init>()V
sput-object v0, Lorg/codehaus/jackson/node/BooleanNode;->TRUE:Lorg/codehaus/jackson/node/BooleanNode;
new-instance v0, Lorg/codehaus/jackson/node/BooleanNode;
invoke-direct {v0}, Lorg/codehaus/jackson/node/BooleanNode;-><init>()V
sput-object v0, Lorg/codehaus/jackson/node/BooleanNode;->FALSE:Lorg/codehaus/jackson/node/BooleanNode;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lorg/codehaus/jackson/node/ValueNode;-><init>()V
return-void
.end method
.method public static getFalse()Lorg/codehaus/jackson/node/BooleanNode;
.registers 1
sget-object v0, Lorg/codehaus/jackson/node/BooleanNode;->FALSE:Lorg/codehaus/jackson/node/BooleanNode;
return-object v0
.end method
.method public static getTrue()Lorg/codehaus/jackson/node/BooleanNode;
.registers 1
sget-object v0, Lorg/codehaus/jackson/node/BooleanNode;->TRUE:Lorg/codehaus/jackson/node/BooleanNode;
return-object v0
.end method
.method public static valueOf(Z)Lorg/codehaus/jackson/node/BooleanNode;
.registers 2
if-eqz p0, :cond_5
sget-object v0, Lorg/codehaus/jackson/node/BooleanNode;->TRUE:Lorg/codehaus/jackson/node/BooleanNode;
:goto_4
return-object v0
:cond_5
sget-object v0, Lorg/codehaus/jackson/node/BooleanNode;->FALSE:Lorg/codehaus/jackson/node/BooleanNode;
goto :goto_4
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
.method public getBooleanValue()Z
.registers 2
sget-object v0, Lorg/codehaus/jackson/node/BooleanNode;->TRUE:Lorg/codehaus/jackson/node/BooleanNode;
if-ne p0, v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public getValueAsText()Ljava/lang/String;
.registers 2
sget-object v0, Lorg/codehaus/jackson/node/BooleanNode;->TRUE:Lorg/codehaus/jackson/node/BooleanNode;
if-ne p0, v0, :cond_7
const-string v0, "true"
:goto_6
return-object v0
:cond_7
const-string v0, "false"
goto :goto_6
.end method
.method public isBoolean()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final serialize(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
.registers 4
sget-object v0, Lorg/codehaus/jackson/node/BooleanNode;->TRUE:Lorg/codehaus/jackson/node/BooleanNode;
if-ne p0, v0, :cond_9
const/4 v0, 0x1
:goto_5
invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeBoolean(Z)V
return-void
:cond_9
const/4 v0, 0x0
goto :goto_5
.end method