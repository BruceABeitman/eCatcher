.class public abstract Lorg/codehaus/jackson/map/AnnotationIntrospector;
.super Ljava/lang/Object;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public abstract findCachability(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
.end method
.method public abstract findCreatorAutoDetection(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
.end method
.method public abstract findDeserializablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
.end method
.method public abstract findDeserializationContentType(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
.end method
.method public abstract findDeserializationKeyType(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
.end method
.method public abstract findDeserializationType(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
.end method
.method public abstract findDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;
.end method
.method public abstract findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;
.end method
.method public abstract findFieldAutoDetection(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
.end method
.method public abstract findGettablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
.end method
.method public abstract findGetterAutoDetection(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
.end method
.method public abstract findSerializablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
.end method
.method public abstract findSerializationInclusion(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
.end method
.method public abstract findSerializationType(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
.end method
.method public abstract findSerializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;
.end method
.method public abstract findSettablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
.end method
.method public abstract findSetterAutoDetection(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
.end method
.method public abstract hasAnySetterAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
.end method
.method public abstract hasAsValueAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
.end method
.method public abstract hasCreatorAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
.end method
.method public abstract isHandled(Ljava/lang/annotation/Annotation;)Z
.end method
.method public abstract isIgnorableField(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Z
.end method
.method public abstract isIgnorableMethod(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
.end method