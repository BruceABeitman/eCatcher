.class public abstract Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;
.super Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;
.source "DateTimeSerializerBase.java"
.implements Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;
.field protected final _customFormat:Ljava/text/DateFormat;
.field protected final _useTimestamp:Z
.method protected constructor <init>(Ljava/lang/Class;ZLjava/text/DateFormat;)V
.registers 4
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;-><init>(Ljava/lang/Class;)V
iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->_useTimestamp:Z
iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->_customFormat:Ljava/text/DateFormat;
return-void
.end method
.method protected abstract _timestamp(Ljava/lang/Object;)J
.end method
.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
.registers 5
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->_useTimestamp:Z
if-nez v0, :cond_12
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->_customFormat:Ljava/text/DateFormat;
if-nez v1, :cond_12
invoke-interface {p1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->getProvider()Lcom/fasterxml/jackson/databind/SerializerProvider;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
move-result v0
:cond_12
if-eqz v0, :cond_25
invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectIntegerFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonIntegerFormatVisitor;
move-result-object v0
if-eqz v0, :cond_24
sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->LONG:Lcom/fasterxml/jackson/core/JsonParser$NumberType;
invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonIntegerFormatVisitor;->numberType(Lcom/fasterxml/jackson/core/JsonParser$NumberType;)V
sget-object v1, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->UTC_MILLISEC:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;
invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonIntegerFormatVisitor;->format(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;)V
:goto_24
:cond_24
return-void
:cond_25
invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectStringFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonStringFormatVisitor;
move-result-object v0
if-eqz v0, :cond_24
sget-object v1, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->DATE_TIME:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;
invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonStringFormatVisitor;->format(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;)V
goto :goto_24
.end method
.method public createContextual(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 8
const/4 v4, 0x0
if-eqz p2, :cond_21
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v0
invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findFormat(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
move-result-object v0
if-eqz v0, :cond_21
invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->isNumeric()Z
move-result v1
if-eqz v1, :cond_22
const/4 v0, 0x1
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->withFormat(ZLjava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;
move-result-object p0
:goto_21
:cond_21
return-object p0
:cond_22
invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getTimeZone()Ljava/util/TimeZone;
move-result-object v1
invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getPattern()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v3
if-lez v3, :cond_4d
invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getLocale()Ljava/util/Locale;
move-result-object v0
if-nez v0, :cond_3a
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getLocale()Ljava/util/Locale;
move-result-object v0
:cond_3a
new-instance v3, Ljava/text/SimpleDateFormat;
invoke-direct {v3, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
if-nez v1, :cond_72
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getTimeZone()Ljava/util/TimeZone;
move-result-object v0
:goto_45
invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V
invoke-virtual {p0, v4, v3}, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->withFormat(ZLjava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;
move-result-object p0
goto :goto_21
:cond_4d
if-eqz v1, :cond_21
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getDateFormat()Ljava/text/DateFormat;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
const-class v3, Lcom/fasterxml/jackson/databind/util/StdDateFormat;
if-ne v2, v3, :cond_68
invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->getISO8601Format(Ljava/util/TimeZone;)Ljava/text/DateFormat;
move-result-object v0
:goto_63
invoke-virtual {p0, v4, v0}, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->withFormat(ZLjava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;
move-result-object p0
goto :goto_21
:cond_68
invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/text/DateFormat;
invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V
goto :goto_63
:cond_72
move-object v0, v1
goto :goto_45
.end method
.method public getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 5
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->_useTimestamp:Z
if-nez v0, :cond_e
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->_customFormat:Ljava/text/DateFormat;
if-nez v1, :cond_e
sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
move-result v0
:cond_e
if-eqz v0, :cond_18
const-string v0, "number"
:goto_12
const/4 v1, 0x1
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->createSchemaNode(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;
move-result-object v0
return-object v0
:cond_18
const-string v0, "string"
goto :goto_12
.end method
.method public isEmpty(Ljava/lang/Object;)Z
.registers 6
if-eqz p1, :cond_c
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->_timestamp(Ljava/lang/Object;)J
move-result-wide v0
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-nez v0, :cond_e
:cond_c
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public abstract serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.end method
.method public abstract withFormat(ZLjava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;
.end method