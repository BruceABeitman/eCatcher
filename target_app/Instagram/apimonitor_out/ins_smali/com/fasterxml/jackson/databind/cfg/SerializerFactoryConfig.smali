.class public final Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;
.super Ljava/lang/Object;
.source "SerializerFactoryConfig.java"
.implements Ljava/io/Serializable;
.field protected static final NO_MODIFIERS:[Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier; = null
.field protected static final NO_SERIALIZERS:[Lcom/fasterxml/jackson/databind/ser/Serializers; = null
.field private static final serialVersionUID:J = 0x1L
.field protected final _additionalKeySerializers:[Lcom/fasterxml/jackson/databind/ser/Serializers;
.field protected final _additionalSerializers:[Lcom/fasterxml/jackson/databind/ser/Serializers;
.field protected final _modifiers:[Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x0
new-array v0, v1, [Lcom/fasterxml/jackson/databind/ser/Serializers;
sput-object v0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->NO_SERIALIZERS:[Lcom/fasterxml/jackson/databind/ser/Serializers;
new-array v0, v1, [Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
sput-object v0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->NO_MODIFIERS:[Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
return-void
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0, v0, v0}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/ser/Serializers;[Lcom/fasterxml/jackson/databind/ser/Serializers;[Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;)V
return-void
.end method
.method protected constructor <init>([Lcom/fasterxml/jackson/databind/ser/Serializers;[Lcom/fasterxml/jackson/databind/ser/Serializers;[Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_7
sget-object p1, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->NO_SERIALIZERS:[Lcom/fasterxml/jackson/databind/ser/Serializers;
:cond_7
iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_additionalSerializers:[Lcom/fasterxml/jackson/databind/ser/Serializers;
if-nez p2, :cond_d
sget-object p2, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->NO_SERIALIZERS:[Lcom/fasterxml/jackson/databind/ser/Serializers;
:cond_d
iput-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_additionalKeySerializers:[Lcom/fasterxml/jackson/databind/ser/Serializers;
if-nez p3, :cond_13
sget-object p3, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->NO_MODIFIERS:[Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
:cond_13
iput-object p3, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
return-void
.end method
.method public final hasKeySerializers()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_additionalKeySerializers:[Lcom/fasterxml/jackson/databind/ser/Serializers;
array-length v0, v0
if-lez v0, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public final hasSerializerModifiers()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
array-length v0, v0
if-lez v0, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public final hasSerializers()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_additionalSerializers:[Lcom/fasterxml/jackson/databind/ser/Serializers;
array-length v0, v0
if-lez v0, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public final keySerializers()Ljava/lang/Iterable;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_additionalKeySerializers:[Lcom/fasterxml/jackson/databind/ser/Serializers;
invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;
move-result-object v0
return-object v0
.end method
.method public final serializerModifiers()Ljava/lang/Iterable;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;
move-result-object v0
return-object v0
.end method
.method public final serializers()Ljava/lang/Iterable;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_additionalSerializers:[Lcom/fasterxml/jackson/databind/ser/Serializers;
invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;
move-result-object v0
return-object v0
.end method
.method public final withAdditionalKeySerializers(Lcom/fasterxml/jackson/databind/ser/Serializers;)Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;
.registers 6
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Can not pass null Serializers"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_additionalKeySerializers:[Lcom/fasterxml/jackson/databind/ser/Serializers;
invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/fasterxml/jackson/databind/ser/Serializers;
new-instance v1, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_additionalSerializers:[Lcom/fasterxml/jackson/databind/ser/Serializers;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
invoke-direct {v1, v2, v0, v3}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/ser/Serializers;[Lcom/fasterxml/jackson/databind/ser/Serializers;[Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;)V
return-object v1
.end method
.method public final withAdditionalSerializers(Lcom/fasterxml/jackson/databind/ser/Serializers;)Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;
.registers 6
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Can not pass null Serializers"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_additionalSerializers:[Lcom/fasterxml/jackson/databind/ser/Serializers;
invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/fasterxml/jackson/databind/ser/Serializers;
new-instance v1, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_additionalKeySerializers:[Lcom/fasterxml/jackson/databind/ser/Serializers;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
invoke-direct {v1, v0, v2, v3}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/ser/Serializers;[Lcom/fasterxml/jackson/databind/ser/Serializers;[Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;)V
return-object v1
.end method
.method public final withSerializerModifier(Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;)Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;
.registers 6
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Can not pass null modifier"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
new-instance v1, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_additionalSerializers:[Lcom/fasterxml/jackson/databind/ser/Serializers;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_additionalKeySerializers:[Lcom/fasterxml/jackson/databind/ser/Serializers;
invoke-direct {v1, v2, v3, v0}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/ser/Serializers;[Lcom/fasterxml/jackson/databind/ser/Serializers;[Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;)V
return-object v1
.end method