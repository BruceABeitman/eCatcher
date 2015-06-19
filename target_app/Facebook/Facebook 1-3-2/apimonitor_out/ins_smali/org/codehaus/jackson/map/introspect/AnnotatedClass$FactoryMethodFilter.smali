.class public final Lorg/codehaus/jackson/map/introspect/AnnotatedClass$FactoryMethodFilter;
.super Ljava/lang/Object;
.implements Lorg/codehaus/jackson/map/introspect/MethodFilter;
.field public static final instance:Lorg/codehaus/jackson/map/introspect/AnnotatedClass$FactoryMethodFilter;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass$FactoryMethodFilter;
invoke-direct {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass$FactoryMethodFilter;-><init>()V
sput-object v0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass$FactoryMethodFilter;->instance:Lorg/codehaus/jackson/map/introspect/AnnotatedClass$FactoryMethodFilter;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public includeMethod(Ljava/lang/reflect/Method;)Z
.registers 6
const/4 v3, 0x1
const/4 v2, 0x0
invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I
move-result v0
invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
move-result v0
if-nez v0, :cond_e
move v0, v2
:goto_d
return v0
:cond_e
invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
move-result-object v0
array-length v0, v0
if-eq v0, v3, :cond_17
move v0, v2
goto :goto_d
:cond_17
invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
move-result-object v0
sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
if-ne v0, v1, :cond_21
move v0, v2
goto :goto_d
:cond_21
move v0, v3
goto :goto_d
.end method