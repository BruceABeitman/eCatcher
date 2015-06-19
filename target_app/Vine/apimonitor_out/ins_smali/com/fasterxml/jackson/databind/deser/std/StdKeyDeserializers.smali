.class public Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;
.super Ljava/lang/Object;
.source "StdKeyDeserializers.java"
.implements Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0xcd01b6e7cfbcee7L
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static constructDelegatingKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
.registers 5
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v1
invoke-direct {v0, v1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
return-object v0
.end method
.method public static constructEnumKeyDeserializer(Lcom/fasterxml/jackson/databind/util/EnumResolver;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;-><init>(Lcom/fasterxml/jackson/databind/util/EnumResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V
return-object v0
.end method
.method public static constructEnumKeyDeserializer(Lcom/fasterxml/jackson/databind/util/EnumResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;-><init>(Lcom/fasterxml/jackson/databind/util/EnumResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V
return-object v0
.end method
.method public static constructStringKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
.registers 3
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringKD;->forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringKD;
move-result-object v0
return-object v0
.end method
.method public static findStringBasedKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
.registers 7
const/4 v4, 0x1
const/4 v3, 0x0
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;
move-result-object v0
new-array v1, v4, [Ljava/lang/Class;
const-class v2, Ljava/lang/String;
aput-object v2, v1, v3
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/BeanDescription;->findSingleArgConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
move-result-object v1
if-eqz v1, :cond_21
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z
move-result v0
if-eqz v0, :cond_1b
invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V
:cond_1b
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringCtorKeyDeserializer;
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringCtorKeyDeserializer;-><init>(Ljava/lang/reflect/Constructor;)V
:goto_20
return-object v0
:cond_21
new-array v1, v4, [Ljava/lang/Class;
const-class v2, Ljava/lang/String;
aput-object v2, v1, v3
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/BeanDescription;->findFactoryMethod([Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v1
if-eqz v1, :cond_3c
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z
move-result v0
if-eqz v0, :cond_36
invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V
:cond_36
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringFactoryKeyDeserializer;
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringFactoryKeyDeserializer;-><init>(Ljava/lang/reflect/Method;)V
goto :goto_20
:cond_3c
const/4 v0, 0x0
goto :goto_20
.end method
.method public findKeyDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
.registers 6
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
const-class v1, Ljava/lang/String;
if-eq v0, v1, :cond_c
const-class v1, Ljava/lang/Object;
if-ne v0, v1, :cond_11
:cond_c
invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringKD;->forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringKD;
move-result-object v0
:goto_10
return-object v0
:cond_11
const-class v1, Ljava/util/UUID;
if-ne v0, v1, :cond_1b
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$UuidKD;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$UuidKD;-><init>()V
goto :goto_10
:cond_1b
invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z
move-result v1
if-eqz v1, :cond_25
invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->wrapperType(Ljava/lang/Class;)Ljava/lang/Class;
move-result-object v0
:cond_25
const-class v1, Ljava/lang/Integer;
if-ne v0, v1, :cond_2f
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$IntKD;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$IntKD;-><init>()V
goto :goto_10
:cond_2f
const-class v1, Ljava/lang/Long;
if-ne v0, v1, :cond_39
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$LongKD;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$LongKD;-><init>()V
goto :goto_10
:cond_39
const-class v1, Ljava/util/Date;
if-ne v0, v1, :cond_43
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DateKD;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DateKD;-><init>()V
goto :goto_10
:cond_43
const-class v1, Ljava/util/Calendar;
if-ne v0, v1, :cond_4d
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$CalendarKD;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$CalendarKD;-><init>()V
goto :goto_10
:cond_4d
const-class v1, Ljava/lang/Boolean;
if-ne v0, v1, :cond_57
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$BoolKD;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$BoolKD;-><init>()V
goto :goto_10
:cond_57
const-class v1, Ljava/lang/Byte;
if-ne v0, v1, :cond_61
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$ByteKD;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$ByteKD;-><init>()V
goto :goto_10
:cond_61
const-class v1, Ljava/lang/Character;
if-ne v0, v1, :cond_6b
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$CharKD;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$CharKD;-><init>()V
goto :goto_10
:cond_6b
const-class v1, Ljava/lang/Short;
if-ne v0, v1, :cond_75
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$ShortKD;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$ShortKD;-><init>()V
goto :goto_10
:cond_75
const-class v1, Ljava/lang/Float;
if-ne v0, v1, :cond_7f
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$FloatKD;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$FloatKD;-><init>()V
goto :goto_10
:cond_7f
const-class v1, Ljava/lang/Double;
if-ne v0, v1, :cond_89
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DoubleKD;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DoubleKD;-><init>()V
goto :goto_10
:cond_89
const-class v1, Ljava/util/Locale;
if-ne v0, v1, :cond_94
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$LocaleKD;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$LocaleKD;-><init>()V
goto/16 :goto_10
:cond_94
const/4 v0, 0x0
goto/16 :goto_10
.end method