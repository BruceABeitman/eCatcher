.class public Lcom/fasterxml/jackson/databind/ext/CoreXMLSerializers$XMLGregorianCalendarSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "CoreXMLSerializers.java"
.field public static final instance:Lcom/fasterxml/jackson/databind/ext/CoreXMLSerializers$XMLGregorianCalendarSerializer;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/databind/ext/CoreXMLSerializers$XMLGregorianCalendarSerializer;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ext/CoreXMLSerializers$XMLGregorianCalendarSerializer;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/ext/CoreXMLSerializers$XMLGregorianCalendarSerializer;->instance:Lcom/fasterxml/jackson/databind/ext/CoreXMLSerializers$XMLGregorianCalendarSerializer;
return-void
.end method
.method public constructor <init>()V
.registers 2
const-class v0, Ljavax/xml/datatype/XMLGregorianCalendar;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
.registers 5
sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
return-void
.end method
.method public getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 4
sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
check-cast p1, Ljavax/xml/datatype/XMLGregorianCalendar;
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ext/CoreXMLSerializers$XMLGregorianCalendarSerializer;->serialize(Ljavax/xml/datatype/XMLGregorianCalendar;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
return-void
.end method
.method public serialize(Ljavax/xml/datatype/XMLGregorianCalendar;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 6
sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;
invoke-virtual {p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->toGregorianCalendar()Ljava/util/GregorianCalendar;
move-result-object v1
invoke-virtual {v0, v1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->serialize(Ljava/util/Calendar;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
return-void
.end method