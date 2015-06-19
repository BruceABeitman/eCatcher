.class public abstract Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field public static final CAMEL_CASE_TO_LOWER_CASE_WITH_UNDERSCORES:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
.field public static final PASCAL_CASE_TO_CAMEL_CASE:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$LowerCaseWithUnderscoresStrategy;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$LowerCaseWithUnderscoresStrategy;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->CAMEL_CASE_TO_LOWER_CASE_WITH_UNDERSCORES:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
new-instance v0, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$PascalCaseStrategy;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$PascalCaseStrategy;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->PASCAL_CASE_TO_CAMEL_CASE:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public nameForConstructorParameter(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Ljava/lang/String;)Ljava/lang/String;
.registers 4
return-object p3
.end method
.method public nameForField(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;Ljava/lang/String;)Ljava/lang/String;
.registers 4
return-object p3
.end method
.method public nameForGetterMethod(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
.registers 4
return-object p3
.end method
.method public nameForSetterMethod(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
.registers 4
return-object p3
.end method