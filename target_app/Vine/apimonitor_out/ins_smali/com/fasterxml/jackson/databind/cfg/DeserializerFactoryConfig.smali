.class public Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
.super Ljava/lang/Object;
.source "DeserializerFactoryConfig.java"
.implements Ljava/io/Serializable;
.field protected static final DEFAULT_KEY_DESERIALIZERS:[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers; = null
.field protected static final NO_ABSTRACT_TYPE_RESOLVERS:[Lcom/fasterxml/jackson/databind/AbstractTypeResolver; = null
.field protected static final NO_DESERIALIZERS:[Lcom/fasterxml/jackson/databind/deser/Deserializers; = null
.field protected static final NO_MODIFIERS:[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier; = null
.field protected static final NO_VALUE_INSTANTIATORS:[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators; = null
.field private static final serialVersionUID:J = 0x331e912922fbc6b8L
.field protected final _abstractTypeResolvers:[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;
.field protected final _additionalDeserializers:[Lcom/fasterxml/jackson/databind/deser/Deserializers;
.field protected final _additionalKeyDeserializers:[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;
.field protected final _modifiers:[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
.field protected final _valueInstantiators:[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;
.method static constructor <clinit>()V
.registers 3
const/4 v2, 0x0
new-array v0, v2, [Lcom/fasterxml/jackson/databind/deser/Deserializers;
sput-object v0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->NO_DESERIALIZERS:[Lcom/fasterxml/jackson/databind/deser/Deserializers;
new-array v0, v2, [Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
sput-object v0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->NO_MODIFIERS:[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
new-array v0, v2, [Lcom/fasterxml/jackson/databind/AbstractTypeResolver;
sput-object v0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->NO_ABSTRACT_TYPE_RESOLVERS:[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;
new-array v0, v2, [Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;
sput-object v0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->NO_VALUE_INSTANTIATORS:[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;
const/4 v0, 0x1
new-array v0, v0, [Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;
new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;
invoke-direct {v1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;-><init>()V
aput-object v1, v0, v2
sput-object v0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->DEFAULT_KEY_DESERIALIZERS:[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;
return-void
.end method
.method public constructor <init>()V
.registers 7
const/4 v1, 0x0
move-object v0, p0
move-object v2, v1
move-object v3, v1
move-object v4, v1
move-object v5, v1
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/deser/Deserializers;[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;)V
return-void
.end method
.method protected constructor <init>([Lcom/fasterxml/jackson/databind/deser/Deserializers;[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_7
sget-object p1, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->NO_DESERIALIZERS:[Lcom/fasterxml/jackson/databind/deser/Deserializers;
:cond_7
iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalDeserializers:[Lcom/fasterxml/jackson/databind/deser/Deserializers;
if-nez p2, :cond_d
sget-object p2, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->DEFAULT_KEY_DESERIALIZERS:[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;
:cond_d
iput-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalKeyDeserializers:[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;
if-nez p3, :cond_13
sget-object p3, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->NO_MODIFIERS:[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
:cond_13
iput-object p3, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
if-nez p4, :cond_19
sget-object p4, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->NO_ABSTRACT_TYPE_RESOLVERS:[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;
:cond_19
iput-object p4, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_abstractTypeResolvers:[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;
if-nez p5, :cond_1f
sget-object p5, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->NO_VALUE_INSTANTIATORS:[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;
:cond_1f
iput-object p5, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_valueInstantiators:[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;
return-void
.end method
.method public abstractTypeResolvers()Ljava/lang/Iterable;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_abstractTypeResolvers:[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;
invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;
move-result-object v0
return-object v0
.end method
.method public deserializerModifiers()Ljava/lang/Iterable;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;
move-result-object v0
return-object v0
.end method
.method public deserializers()Ljava/lang/Iterable;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalDeserializers:[Lcom/fasterxml/jackson/databind/deser/Deserializers;
invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;
move-result-object v0
return-object v0
.end method
.method public hasAbstractTypeResolvers()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_abstractTypeResolvers:[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;
array-length v0, v0
if-lez v0, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public hasDeserializerModifiers()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
array-length v0, v0
if-lez v0, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public hasDeserializers()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalDeserializers:[Lcom/fasterxml/jackson/databind/deser/Deserializers;
array-length v0, v0
if-lez v0, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public hasKeyDeserializers()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalKeyDeserializers:[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;
array-length v0, v0
if-lez v0, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public hasValueInstantiators()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_valueInstantiators:[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;
array-length v0, v0
if-lez v0, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public keyDeserializers()Ljava/lang/Iterable;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalKeyDeserializers:[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;
invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;
move-result-object v0
return-object v0
.end method
.method public valueInstantiators()Ljava/lang/Iterable;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_valueInstantiators:[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;
invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;
move-result-object v0
return-object v0
.end method
.method public withAbstractTypeResolver(Lcom/fasterxml/jackson/databind/AbstractTypeResolver;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
.registers 8
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Can not pass null resolver"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_abstractTypeResolvers:[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;
invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v4
check-cast v4, [Lcom/fasterxml/jackson/databind/AbstractTypeResolver;
new-instance v0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalDeserializers:[Lcom/fasterxml/jackson/databind/deser/Deserializers;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalKeyDeserializers:[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_valueInstantiators:[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/deser/Deserializers;[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;)V
return-object v0
.end method
.method public withAdditionalDeserializers(Lcom/fasterxml/jackson/databind/deser/Deserializers;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
.registers 8
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Can not pass null Deserializers"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalDeserializers:[Lcom/fasterxml/jackson/databind/deser/Deserializers;
invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v1
check-cast v1, [Lcom/fasterxml/jackson/databind/deser/Deserializers;
new-instance v0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalKeyDeserializers:[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_abstractTypeResolvers:[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_valueInstantiators:[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/deser/Deserializers;[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;)V
return-object v0
.end method
.method public withAdditionalKeyDeserializers(Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
.registers 8
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Can not pass null KeyDeserializers"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalKeyDeserializers:[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;
invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v2
check-cast v2, [Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;
new-instance v0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalDeserializers:[Lcom/fasterxml/jackson/databind/deser/Deserializers;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_abstractTypeResolvers:[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_valueInstantiators:[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/deser/Deserializers;[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;)V
return-object v0
.end method
.method public withDeserializerModifier(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
.registers 8
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Can not pass null modifier"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v3
check-cast v3, [Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
new-instance v0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalDeserializers:[Lcom/fasterxml/jackson/databind/deser/Deserializers;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalKeyDeserializers:[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_abstractTypeResolvers:[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_valueInstantiators:[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/deser/Deserializers;[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;)V
return-object v0
.end method
.method public withValueInstantiators(Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
.registers 8
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Can not pass null resolver"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_valueInstantiators:[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;
invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v5
check-cast v5, [Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;
new-instance v0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalDeserializers:[Lcom/fasterxml/jackson/databind/deser/Deserializers;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalKeyDeserializers:[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_abstractTypeResolvers:[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/deser/Deserializers;[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;)V
return-object v0
.end method