.class public abstract Lorg/codehaus/jackson/map/introspect/Annotated;
.super Ljava/lang/Object;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public abstract getAnnotated()Ljava/lang/reflect/AnnotatedElement;
.end method
.method public abstract getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
.end method
.method protected abstract getModifiers()I
.end method
.method public abstract getName()Ljava/lang/String;
.end method
.method public abstract getType()Ljava/lang/Class;
.end method
.method public final hasAnnotation(Ljava/lang/Class;)Z
.registers 3
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v0
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final isPublic()Z
.registers 2
invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/Annotated;->getModifiers()I
move-result v0
invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z
move-result v0
return v0
.end method