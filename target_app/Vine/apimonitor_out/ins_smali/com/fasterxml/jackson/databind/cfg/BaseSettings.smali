.class public final Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
.super Ljava/lang/Object;
.source "BaseSettings.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x448d3f549d79fc0eL
.field protected final _annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
.field protected final _classIntrospector:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;
.field protected final _dateFormat:Ljava/text/DateFormat;
.field protected final _defaultBase64:Lcom/fasterxml/jackson/core/Base64Variant;
.field protected final _handlerInstantiator:Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
.field protected final _locale:Ljava/util/Locale;
.field protected final _propertyNamingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
.field protected final _timeZone:Ljava/util/TimeZone;
.field protected final _typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;
.field protected final _typeResolverBuilder:Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
.field protected final _visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/core/Base64Variant;)V
.registers 12
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_classIntrospector:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
iput-object p4, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_propertyNamingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
iput-object p5, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;
iput-object p6, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeResolverBuilder:Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
iput-object p7, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_dateFormat:Ljava/text/DateFormat;
iput-object p8, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_handlerInstantiator:Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
iput-object p9, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_locale:Ljava/util/Locale;
iput-object p10, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_timeZone:Ljava/util/TimeZone;
iput-object p11, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_defaultBase64:Lcom/fasterxml/jackson/core/Base64Variant;
return-void
.end method
.method public getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
return-object v0
.end method
.method public getBase64Variant()Lcom/fasterxml/jackson/core/Base64Variant;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_defaultBase64:Lcom/fasterxml/jackson/core/Base64Variant;
return-object v0
.end method
.method public getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_classIntrospector:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;
return-object v0
.end method
.method public getDateFormat()Ljava/text/DateFormat;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_dateFormat:Ljava/text/DateFormat;
return-object v0
.end method
.method public getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_handlerInstantiator:Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
return-object v0
.end method
.method public getLocale()Ljava/util/Locale;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_locale:Ljava/util/Locale;
return-object v0
.end method
.method public getPropertyNamingStrategy()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_propertyNamingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
return-object v0
.end method
.method public getTimeZone()Ljava/util/TimeZone;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_timeZone:Ljava/util/TimeZone;
return-object v0
.end method
.method public getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;
return-object v0
.end method
.method public getTypeResolverBuilder()Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeResolverBuilder:Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
return-object v0
.end method
.method public getVisibilityChecker()Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
return-object v0
.end method
.method public with(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
.registers 14
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_defaultBase64:Lcom/fasterxml/jackson/core/Base64Variant;
if-ne p1, v0, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_classIntrospector:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_propertyNamingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;
iget-object v6, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeResolverBuilder:Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
iget-object v7, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_dateFormat:Ljava/text/DateFormat;
iget-object v8, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_handlerInstantiator:Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
iget-object v9, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_locale:Ljava/util/Locale;
iget-object v10, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_timeZone:Ljava/util/TimeZone;
move-object v11, p1
invoke-direct/range {v0 .. v11}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;-><init>(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/core/Base64Variant;)V
move-object p0, v0
goto :goto_4
.end method
.method public with(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
.registers 14
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_locale:Ljava/util/Locale;
if-ne v0, p1, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_classIntrospector:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_propertyNamingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;
iget-object v6, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeResolverBuilder:Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
iget-object v7, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_dateFormat:Ljava/text/DateFormat;
iget-object v8, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_handlerInstantiator:Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
iget-object v10, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_timeZone:Ljava/util/TimeZone;
iget-object v11, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_defaultBase64:Lcom/fasterxml/jackson/core/Base64Variant;
move-object v9, p1
invoke-direct/range {v0 .. v11}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;-><init>(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/core/Base64Variant;)V
move-object p0, v0
goto :goto_4
.end method
.method public with(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
.registers 14
if-nez p1, :cond_8
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:cond_8
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_dateFormat:Ljava/text/DateFormat;
instance-of v1, v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;
if-eqz v1, :cond_2d
check-cast v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->withTimeZone(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/util/StdDateFormat;
move-result-object v7
:goto_14
new-instance v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_classIntrospector:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_propertyNamingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;
iget-object v6, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeResolverBuilder:Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
iget-object v8, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_handlerInstantiator:Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
iget-object v9, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_locale:Ljava/util/Locale;
iget-object v11, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_defaultBase64:Lcom/fasterxml/jackson/core/Base64Variant;
move-object v10, p1
invoke-direct/range {v0 .. v11}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;-><init>(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/core/Base64Variant;)V
return-object v0
:cond_2d
invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/text/DateFormat;
invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V
move-object v7, v0
goto :goto_14
.end method
.method public withAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
.registers 14
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
if-ne v0, p1, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_classIntrospector:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_propertyNamingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;
iget-object v6, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeResolverBuilder:Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
iget-object v7, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_dateFormat:Ljava/text/DateFormat;
iget-object v8, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_handlerInstantiator:Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
iget-object v9, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_locale:Ljava/util/Locale;
iget-object v10, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_timeZone:Ljava/util/TimeZone;
iget-object v11, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_defaultBase64:Lcom/fasterxml/jackson/core/Base64Variant;
move-object v2, p1
invoke-direct/range {v0 .. v11}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;-><init>(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/core/Base64Variant;)V
move-object p0, v0
goto :goto_4
.end method
.method public withAppendedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->create(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
move-result-object v0
return-object v0
.end method
.method public withClassIntrospector(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
.registers 14
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_classIntrospector:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;
if-ne v0, p1, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_propertyNamingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;
iget-object v6, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeResolverBuilder:Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
iget-object v7, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_dateFormat:Ljava/text/DateFormat;
iget-object v8, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_handlerInstantiator:Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
iget-object v9, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_locale:Ljava/util/Locale;
iget-object v10, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_timeZone:Ljava/util/TimeZone;
iget-object v11, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_defaultBase64:Lcom/fasterxml/jackson/core/Base64Variant;
move-object v1, p1
invoke-direct/range {v0 .. v11}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;-><init>(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/core/Base64Variant;)V
move-object p0, v0
goto :goto_4
.end method
.method public withDateFormat(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
.registers 14
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_dateFormat:Ljava/text/DateFormat;
if-ne v0, p1, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_classIntrospector:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_propertyNamingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;
iget-object v6, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeResolverBuilder:Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
iget-object v8, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_handlerInstantiator:Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
iget-object v9, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_locale:Ljava/util/Locale;
iget-object v10, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_timeZone:Ljava/util/TimeZone;
iget-object v11, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_defaultBase64:Lcom/fasterxml/jackson/core/Base64Variant;
move-object v7, p1
invoke-direct/range {v0 .. v11}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;-><init>(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/core/Base64Variant;)V
move-object p0, v0
goto :goto_4
.end method
.method public withHandlerInstantiator(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
.registers 14
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_handlerInstantiator:Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
if-ne v0, p1, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_classIntrospector:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_propertyNamingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;
iget-object v6, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeResolverBuilder:Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
iget-object v7, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_dateFormat:Ljava/text/DateFormat;
iget-object v9, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_locale:Ljava/util/Locale;
iget-object v10, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_timeZone:Ljava/util/TimeZone;
iget-object v11, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_defaultBase64:Lcom/fasterxml/jackson/core/Base64Variant;
move-object v8, p1
invoke-direct/range {v0 .. v11}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;-><init>(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/core/Base64Variant;)V
move-object p0, v0
goto :goto_4
.end method
.method public withInsertedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->create(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
move-result-object v0
return-object v0
.end method
.method public withPropertyNamingStrategy(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
.registers 14
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_propertyNamingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
if-ne v0, p1, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_classIntrospector:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;
iget-object v6, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeResolverBuilder:Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
iget-object v7, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_dateFormat:Ljava/text/DateFormat;
iget-object v8, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_handlerInstantiator:Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
iget-object v9, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_locale:Ljava/util/Locale;
iget-object v10, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_timeZone:Ljava/util/TimeZone;
iget-object v11, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_defaultBase64:Lcom/fasterxml/jackson/core/Base64Variant;
move-object v4, p1
invoke-direct/range {v0 .. v11}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;-><init>(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/core/Base64Variant;)V
move-object p0, v0
goto :goto_4
.end method
.method public withTypeFactory(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
.registers 14
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;
if-ne v0, p1, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_classIntrospector:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_propertyNamingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
iget-object v6, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeResolverBuilder:Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
iget-object v7, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_dateFormat:Ljava/text/DateFormat;
iget-object v8, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_handlerInstantiator:Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
iget-object v9, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_locale:Ljava/util/Locale;
iget-object v10, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_timeZone:Ljava/util/TimeZone;
iget-object v11, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_defaultBase64:Lcom/fasterxml/jackson/core/Base64Variant;
move-object v5, p1
invoke-direct/range {v0 .. v11}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;-><init>(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/core/Base64Variant;)V
move-object p0, v0
goto :goto_4
.end method
.method public withTypeResolverBuilder(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
.registers 14
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeResolverBuilder:Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
if-ne v0, p1, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_classIntrospector:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_propertyNamingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;
iget-object v7, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_dateFormat:Ljava/text/DateFormat;
iget-object v8, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_handlerInstantiator:Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
iget-object v9, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_locale:Ljava/util/Locale;
iget-object v10, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_timeZone:Ljava/util/TimeZone;
iget-object v11, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_defaultBase64:Lcom/fasterxml/jackson/core/Base64Variant;
move-object v6, p1
invoke-direct/range {v0 .. v11}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;-><init>(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/core/Base64Variant;)V
move-object p0, v0
goto :goto_4
.end method
.method public withVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
.registers 15
new-instance v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_classIntrospector:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
invoke-interface {v3, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->withVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
move-result-object v3
iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_propertyNamingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;
iget-object v6, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeResolverBuilder:Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
iget-object v7, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_dateFormat:Ljava/text/DateFormat;
iget-object v8, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_handlerInstantiator:Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
iget-object v9, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_locale:Ljava/util/Locale;
iget-object v10, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_timeZone:Ljava/util/TimeZone;
iget-object v11, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_defaultBase64:Lcom/fasterxml/jackson/core/Base64Variant;
invoke-direct/range {v0 .. v11}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;-><init>(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/core/Base64Variant;)V
return-object v0
.end method
.method public withVisibilityChecker(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
.registers 14
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
if-ne v0, p1, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_classIntrospector:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_propertyNamingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;
iget-object v6, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeResolverBuilder:Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
iget-object v7, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_dateFormat:Ljava/text/DateFormat;
iget-object v8, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_handlerInstantiator:Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
iget-object v9, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_locale:Ljava/util/Locale;
iget-object v10, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_timeZone:Ljava/util/TimeZone;
iget-object v11, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_defaultBase64:Lcom/fasterxml/jackson/core/Base64Variant;
move-object v3, p1
invoke-direct/range {v0 .. v11}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;-><init>(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/core/Base64Variant;)V
move-object p0, v0
goto :goto_4
.end method