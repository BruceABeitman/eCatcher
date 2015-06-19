.class public final Lorg/codehaus/jackson/map/introspect/MethodKey;
.super Ljava/lang/Object;
.field static final NO_CLASSES:[Ljava/lang/Class;
.field final _argTypes:[Ljava/lang/Class;
.field final _name:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
new-array v0, v0, [Ljava/lang/Class;
sput-object v0, Lorg/codehaus/jackson/map/introspect/MethodKey;->NO_CLASSES:[Ljava/lang/Class;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Class;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lorg/codehaus/jackson/map/introspect/MethodKey;->_name:Ljava/lang/String;
if-nez p2, :cond_c
sget-object v0, Lorg/codehaus/jackson/map/introspect/MethodKey;->NO_CLASSES:[Ljava/lang/Class;
:goto_9
iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/MethodKey;->_argTypes:[Ljava/lang/Class;
return-void
:cond_c
move-object v0, p2
goto :goto_9
.end method
.method public constructor <init>(Ljava/lang/reflect/Method;)V
.registers 4
invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
move-result-object v1
invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/introspect/MethodKey;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 10
const/4 v7, 0x1
const/4 v6, 0x0
if-ne p1, p0, :cond_6
move v0, v7
:goto_5
return v0
:cond_6
if-nez p1, :cond_a
move v0, v6
goto :goto_5
:cond_a
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
if-eq v0, v1, :cond_16
move v0, v6
goto :goto_5
:cond_16
check-cast p1, Lorg/codehaus/jackson/map/introspect/MethodKey;
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/MethodKey;->_name:Ljava/lang/String;
iget-object v1, p1, Lorg/codehaus/jackson/map/introspect/MethodKey;->_name:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_24
move v0, v6
goto :goto_5
:cond_24
iget-object v0, p1, Lorg/codehaus/jackson/map/introspect/MethodKey;->_argTypes:[Ljava/lang/Class;
iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/MethodKey;->_argTypes:[Ljava/lang/Class;
array-length v1, v1
array-length v2, v0
if-eq v2, v1, :cond_2e
move v0, v6
goto :goto_5
:cond_2e
move v2, v6
:goto_2f
if-ge v2, v1, :cond_4a
aget-object v3, v0, v2
iget-object v4, p0, Lorg/codehaus/jackson/map/introspect/MethodKey;->_argTypes:[Ljava/lang/Class;
aget-object v4, v4, v2
if-ne v3, v4, :cond_3c
:cond_39
add-int/lit8 v2, v2, 0x1
goto :goto_2f
:cond_3c
invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v5
if-nez v5, :cond_39
invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v3
if-nez v3, :cond_39
move v0, v6
goto :goto_5
:cond_4a
move v0, v7
goto :goto_5
.end method
.method public hashCode()I
.registers 3
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/MethodKey;->_name:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/MethodKey;->_argTypes:[Ljava/lang/Class;
array-length v1, v1
add-int/2addr v0, v1
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/MethodKey;->_name:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "("
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/MethodKey;->_argTypes:[Ljava/lang/Class;
array-length v1, v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "-args)"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method