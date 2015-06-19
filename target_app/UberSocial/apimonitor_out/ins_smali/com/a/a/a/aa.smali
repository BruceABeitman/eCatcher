.class final Lcom/a/a/a/aa;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/util/Map;
.field private static final b:Ljava/util/Map;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/a/a/a/aa;->a:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/a/a/a/aa;->b:Ljava/util/Map;
return-void
.end method
.method static a(Ljava/lang/Object;)Ljava/util/Map;
.registers 6
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
sget-object v1, Lcom/a/a/a/aa;->a:Ljava/util/Map;
invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_14
invoke-static {v0}, Lcom/a/a/a/aa;->a(Ljava/lang/Class;)V
:cond_14
sget-object v1, Lcom/a/a/a/aa;->a:Ljava/util/Map;
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
move-result v1
if-nez v1, :cond_49
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_2a
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_49
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
new-instance v4, Lcom/a/a/a/ci;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/reflect/Method;
invoke-direct {v4, p0, v1}, Lcom/a/a/a/ci;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_2a
:cond_49
return-object v2
.end method
.method private static a(Ljava/lang/Class;)V
.registers 11
const/4 v2, 0x0
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
new-instance v4, Ljava/util/HashMap;
invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
move-result-object v5
array-length v6, v5
move v1, v2
:goto_11
if-ge v1, v6, :cond_1ba
aget-object v7, v5, v1
const-class v0, Lcom/a/a/a/cm;
invoke-virtual {v7, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_bd
invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
move-result-object v0
array-length v8, v0
const/4 v9, 0x1
if-eq v8, v9, :cond_4b
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Method "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " has @Subscribe annotation but requires "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
array-length v0, v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, " arguments.  Methods must require a single argument."
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_4b
aget-object v8, v0, v2
invoke-virtual {v8}, Ljava/lang/Class;->isInterface()Z
move-result v0
if-eqz v0, :cond_78
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Method "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " has @Subscribe annotation on "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " which is an interface.  Subscription must be on a concrete class type."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_78
invoke-virtual {v7}, Ljava/lang/reflect/Method;->getModifiers()I
move-result v0
and-int/lit8 v0, v0, 0x1
if-nez v0, :cond_a5
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Method "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " has @Subscribe annotation on "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " but is not \'public\'."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a5
invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Set;
if-nez v0, :cond_b5
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
invoke-interface {v3, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_b5
invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
:cond_b8
:goto_b8
add-int/lit8 v0, v1, 0x1
move v1, v0
goto/16 :goto_11
:cond_bd
const-class v0, Lcom/a/a/a/cl;
invoke-virtual {v7, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_b8
invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
move-result-object v0
array-length v8, v0
if-eqz v8, :cond_f2
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Method "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "has @Produce annotation but requires "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
array-length v0, v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, " arguments.  Methods must require zero arguments."
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_f2
invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
move-result-object v0
const-class v8, Ljava/lang/Void;
if-ne v0, v8, :cond_115
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Method "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " has a return type of void.  Must declare a non-void type."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_115
invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z
move-result v8
if-eqz v8, :cond_144
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Method "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " has @Produce annotation on "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, " which is an interface.  Producers must return a concrete class type."
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_144
sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_167
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Method "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " has @Produce annotation but has no return type."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_167
invoke-virtual {v7}, Ljava/lang/reflect/Method;->getModifiers()I
move-result v8
and-int/lit8 v8, v8, 0x1
if-nez v8, :cond_194
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Method "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " has @Produce annotation on "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, " but is not \'public\'."
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_194
invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_1b5
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Producer for type "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, " has already been registered."
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_1b5
invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_b8
:cond_1ba
sget-object v0, Lcom/a/a/a/aa;->a:Ljava/util/Map;
invoke-interface {v0, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/a/a/a/aa;->b:Ljava/util/Map;
invoke-interface {v0, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method static b(Ljava/lang/Object;)Ljava/util/Map;
.registers 8
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
sget-object v1, Lcom/a/a/a/aa;->b:Ljava/util/Map;
invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_14
invoke-static {v0}, Lcom/a/a/a/aa;->a(Ljava/lang/Class;)V
:cond_14
sget-object v1, Lcom/a/a/a/aa;->b:Ljava/util/Map;
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
move-result v1
if-nez v1, :cond_62
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_2a
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_62
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
new-instance v4, Ljava/util/HashSet;
invoke-direct {v4}, Ljava/util/HashSet;-><init>()V
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/Set;
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_45
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_5a
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/reflect/Method;
new-instance v6, Lcom/a/a/a/ch;
invoke-direct {v6, p0, v1}, Lcom/a/a/a/ch;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_45
:cond_5a
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_2a
:cond_62
return-object v2
.end method