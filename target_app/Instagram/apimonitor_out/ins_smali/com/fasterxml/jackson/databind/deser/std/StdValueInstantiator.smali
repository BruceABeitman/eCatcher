.class public Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;
.super Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
.source "StdValueInstantiator.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x1L
.field protected final _cfgEmptyStringsAsObjects:Z
.field protected _constructorArguments:[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
.field protected _defaultCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
.field protected _delegateArguments:[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
.field protected _delegateCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
.field protected _delegateType:Lcom/fasterxml/jackson/databind/JavaType;
.field protected _fromBooleanCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
.field protected _fromDoubleCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
.field protected _fromIntCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
.field protected _fromLongCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
.field protected _fromStringCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
.field protected _incompleteParameter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
.field protected final _valueTypeDesc:Ljava/lang/String;
.field protected _withArgsCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)V
.registers 4
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;-><init>()V
if-nez p1, :cond_f
const/4 v0, 0x0
:goto_6
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_cfgEmptyStringsAsObjects:Z
if-nez p2, :cond_16
const-string v0, "UNKNOWN TYPE"
:goto_c
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_valueTypeDesc:Ljava/lang/String;
return-void
:cond_f
sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
move-result v0
goto :goto_6
:cond_16
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_c
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)V
.registers 4
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;-><init>()V
if-nez p1, :cond_f
const/4 v0, 0x0
:goto_6
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_cfgEmptyStringsAsObjects:Z
if-nez p2, :cond_16
const-string v0, "UNKNOWN TYPE"
:goto_c
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_valueTypeDesc:Ljava/lang/String;
return-void
:cond_f
sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
move-result v0
goto :goto_6
:cond_16
invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
goto :goto_c
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;)V
.registers 3
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;-><init>()V
iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_cfgEmptyStringsAsObjects:Z
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_cfgEmptyStringsAsObjects:Z
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_valueTypeDesc:Ljava/lang/String;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_valueTypeDesc:Ljava/lang/String;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_defaultCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_defaultCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_constructorArguments:[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_constructorArguments:[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_withArgsCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_withArgsCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_delegateType:Lcom/fasterxml/jackson/databind/JavaType;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_delegateType:Lcom/fasterxml/jackson/databind/JavaType;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_delegateCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_delegateCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_delegateArguments:[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_delegateArguments:[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromStringCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromStringCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromIntCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromIntCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromLongCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromLongCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromDoubleCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromDoubleCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromBooleanCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromBooleanCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
return-void
.end method
.method protected _createFromStringFallbacks(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Ljava/lang/Object;
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromBooleanCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
if-eqz v0, :cond_24
invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
const-string v1, "true"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_16
const/4 v0, 0x1
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->createFromBoolean(Lcom/fasterxml/jackson/databind/DeserializationContext;Z)Ljava/lang/Object;
move-result-object v0
:goto_15
return-object v0
:cond_16
const-string v1, "false"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_24
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->createFromBoolean(Lcom/fasterxml/jackson/databind/DeserializationContext;Z)Ljava/lang/Object;
move-result-object v0
goto :goto_15
:cond_24
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_cfgEmptyStringsAsObjects:Z
if-eqz v0, :cond_30
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_30
const/4 v0, 0x0
goto :goto_15
:cond_30
new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Can not instantiate value of type "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " from String value; no single-String constructor/factory method"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public canCreateFromBoolean()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromBooleanCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public canCreateFromDouble()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromDoubleCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public canCreateFromInt()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromIntCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public canCreateFromLong()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromLongCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public canCreateFromObjectWith()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_withArgsCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public canCreateFromString()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromStringCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public canCreateUsingDefault()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_defaultCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public canCreateUsingDelegate()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_delegateType:Lcom/fasterxml/jackson/databind/JavaType;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public configureFromBooleanCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
.registers 2
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromBooleanCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
return-void
.end method
.method public configureFromDoubleCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
.registers 2
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromDoubleCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
return-void
.end method
.method public configureFromIntCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
.registers 2
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromIntCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
return-void
.end method
.method public configureFromLongCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
.registers 2
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromLongCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
return-void
.end method
.method public configureFromObjectSettings(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;)V
.registers 7
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_defaultCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_delegateCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_delegateType:Lcom/fasterxml/jackson/databind/JavaType;
iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_delegateArguments:[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_withArgsCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
iput-object p6, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_constructorArguments:[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
return-void
.end method
.method public configureFromStringCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
.registers 2
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromStringCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
return-void
.end method
.method public configureIncompleteParameter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)V
.registers 2
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_incompleteParameter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
return-void
.end method
.method public createFromBoolean(Lcom/fasterxml/jackson/databind/DeserializationContext;Z)Ljava/lang/Object;
.registers 6
:try_start_0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromBooleanCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromBooleanCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->call1(Ljava/lang/Object;)Ljava/lang/Object;
:try_end_d
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f
.catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_d} :catch_15
move-result-object v0
return-object v0
:catch_f
move-exception v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:catch_15
move-exception v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_1b
new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Can not instantiate value of type "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " from Boolean value; no single-boolean/Boolean-arg constructor/factory method"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public createFromDouble(Lcom/fasterxml/jackson/databind/DeserializationContext;D)Ljava/lang/Object;
.registers 7
:try_start_0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromDoubleCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromDoubleCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->call1(Ljava/lang/Object;)Ljava/lang/Object;
:try_end_d
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f
.catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_d} :catch_15
move-result-object v0
return-object v0
:catch_f
move-exception v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:catch_15
move-exception v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_1b
new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Can not instantiate value of type "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " from Floating-point number; no one-double/Double-arg constructor/factory method"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public createFromInt(Lcom/fasterxml/jackson/databind/DeserializationContext;I)Ljava/lang/Object;
.registers 6
:try_start_0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromIntCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromIntCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->call1(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
:goto_e
return-object v0
:cond_f
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromLongCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromLongCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
int-to-long v1, p2
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->call1(Ljava/lang/Object;)Ljava/lang/Object;
:try_end_1d
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1f
.catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_1d} :catch_25
move-result-object v0
goto :goto_e
:catch_1f
move-exception v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:catch_25
move-exception v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_2b
new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Can not instantiate value of type "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " from Integral number; no single-int-arg constructor/factory method"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public createFromLong(Lcom/fasterxml/jackson/databind/DeserializationContext;J)Ljava/lang/Object;
.registers 7
:try_start_0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromLongCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromLongCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->call1(Ljava/lang/Object;)Ljava/lang/Object;
:try_end_d
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f
.catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_d} :catch_15
move-result-object v0
return-object v0
:catch_f
move-exception v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:catch_15
move-exception v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_1b
new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Can not instantiate value of type "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " from Long integral number; no single-long-arg constructor/factory method"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public createFromObjectWith(Lcom/fasterxml/jackson/databind/DeserializationContext;[Ljava/lang/Object;)Ljava/lang/Object;
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_withArgsCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
if-nez v0, :cond_1d
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "No with-args constructor for "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:try_start_1d
:cond_1d
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_withArgsCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->call([Ljava/lang/Object;)Ljava/lang/Object;
:try_end_22
.catch Ljava/lang/ExceptionInInitializerError; {:try_start_1d .. :try_end_22} :catch_24
.catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_2a
move-result-object v0
return-object v0
:catch_24
move-exception v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:catch_2a
move-exception v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method
.method public createFromString(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromStringCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
if-eqz v0, :cond_17
:try_start_4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromStringCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->call1(Ljava/lang/Object;)Ljava/lang/Object;
:try_end_9
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_b
.catch Ljava/lang/ExceptionInInitializerError; {:try_start_4 .. :try_end_9} :catch_11
move-result-object v0
:goto_a
return-object v0
:catch_b
move-exception v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:catch_11
move-exception v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_17
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_createFromStringFallbacks(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
goto :goto_a
.end method
.method public createUsingDefault(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_defaultCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
if-nez v0, :cond_1d
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "No default constructor for "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:try_start_1d
:cond_1d
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_defaultCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->call()Ljava/lang/Object;
:try_end_22
.catch Ljava/lang/ExceptionInInitializerError; {:try_start_1d .. :try_end_22} :catch_24
.catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_2a
move-result-object v0
return-object v0
:catch_24
move-exception v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:catch_2a
move-exception v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method
.method public createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
.registers 9
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_delegateCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
if-nez v0, :cond_1d
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "No delegate constructor for "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1d
:try_start_1d
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_delegateArguments:[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
if-nez v0, :cond_28
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_delegateCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->call1(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
:goto_27
return-object v0
:cond_28
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_delegateArguments:[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
array-length v1, v0
new-array v2, v1, [Ljava/lang/Object;
const/4 v0, 0x0
:goto_2e
if-ge v0, v1, :cond_4d
iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_delegateArguments:[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
aget-object v3, v3, v0
if-nez v3, :cond_3b
aput-object p2, v2, v0
:goto_38
add-int/lit8 v0, v0, 0x1
goto :goto_2e
:cond_3b
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->getInjectableValueId()Ljava/lang/Object;
move-result-object v4
const/4 v5, 0x0
invoke-virtual {p1, v4, v3, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findInjectableValue(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
aput-object v3, v2, v0
:try_end_46
.catch Ljava/lang/ExceptionInInitializerError; {:try_start_1d .. :try_end_46} :catch_47
.catch Ljava/lang/Exception; {:try_start_1d .. :try_end_46} :catch_54
goto :goto_38
:catch_47
move-exception v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_4d
:try_start_4d
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_delegateCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->call([Ljava/lang/Object;)Ljava/lang/Object;
:try_end_52
.catch Ljava/lang/ExceptionInInitializerError; {:try_start_4d .. :try_end_52} :catch_47
.catch Ljava/lang/Exception; {:try_start_4d .. :try_end_52} :catch_54
move-result-object v0
goto :goto_27
:catch_54
move-exception v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method
.method public getDefaultCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_defaultCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
return-object v0
.end method
.method public getDelegateCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_delegateCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
return-object v0
.end method
.method public getDelegateType(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_delegateType:Lcom/fasterxml/jackson/databind/JavaType;
return-object v0
.end method
.method public getFromObjectArguments(Lcom/fasterxml/jackson/databind/DeserializationConfig;)[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_constructorArguments:[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
return-object v0
.end method
.method public getIncompleteParameter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_incompleteParameter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
return-object v0
.end method
.method public getValueTypeDesc()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_valueTypeDesc:Ljava/lang/String;
return-object v0
.end method
.method public getWithArgsCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_withArgsCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
return-object v0
.end method
.method protected wrapException(Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;
.registers 5
:goto_0
invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v0
if-eqz v0, :cond_b
invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object p1
goto :goto_0
:cond_b
instance-of v0, p1, Lcom/fasterxml/jackson/databind/JsonMappingException;
if-eqz v0, :cond_12
check-cast p1, Lcom/fasterxml/jackson/databind/JsonMappingException;
:goto_11
return-object p1
:cond_12
new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Instantiation of "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " value failed: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
move-object p1, v0
goto :goto_11
.end method