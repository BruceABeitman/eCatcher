.class public Lorg/apache/log4j/j/c;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lorg/apache/log4j/j/e;
.field static a:Ljava/lang/Class;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Ljava/lang/String;)Ljava/lang/Class;
.registers 3
:try_start_0
invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
:try_end_3
.catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v0
return-object v0
:catch_5
move-exception v0
new-instance v1, Ljava/lang/NoClassDefFoundError;
invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
move-result-object v0
throw v0
.end method
.method public a(Lorg/apache/log4j/k/k;)Lorg/apache/log4j/k/k;
.registers 14
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->e()Ljava/lang/Object;
move-result-object v2
instance-of v0, v2, Ljava/lang/String;
if-nez v0, :cond_83
new-instance v11, Ljava/util/HashMap;
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->p()Ljava/util/Map;
move-result-object v0
invoke-direct {v11, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
:try_start_11
invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
sget-object v0, Lorg/apache/log4j/j/c;->a:Ljava/lang/Class;
if-nez v0, :cond_52
const-string v0, "java.lang.Object"
invoke-static {v0}, Lorg/apache/log4j/j/c;->a(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/j/c;->a:Ljava/lang/Class;
:goto_21
invoke-static {v1, v0}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;Ljava/lang/Class;)Ljava/beans/BeanInfo;
move-result-object v0
invoke-interface {v0}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;
move-result-object v3
array-length v0, v3
if-lez v0, :cond_83
const/4 v0, 0x0
move v1, v0
move-object v6, v2
:goto_2f
array-length v0, v3
:try_end_30
.catch Ljava/lang/Exception; {:try_start_11 .. :try_end_30} :catch_7d
if-ge v1, v0, :cond_85
:try_start_32
aget-object v0, v3, v1
invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;
move-result-object v4
const/4 v0, 0x0
check-cast v0, [Ljava/lang/Object;
invoke-virtual {v4, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
const-string v4, "message"
aget-object v5, v3, v1
invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
:try_end_4a
.catch Ljava/lang/Exception; {:try_start_32 .. :try_end_4a} :catch_5f
move-result v4
if-eqz v4, :cond_55
move-object v6, v0
:goto_4e
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_2f
:cond_52
:try_start_52
sget-object v0, Lorg/apache/log4j/j/c;->a:Ljava/lang/Class;
:try_end_54
.catch Ljava/lang/Exception; {:try_start_52 .. :try_end_54} :catch_7d
goto :goto_21
:cond_55
:try_start_55
aget-object v4, v3, v1
invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;
move-result-object v4
invoke-interface {v11, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_5e
.catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5e} :catch_5f
goto :goto_4e
:catch_5f
move-exception v0
:try_start_60
new-instance v4, Ljava/lang/StringBuffer;
invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V
const-string v5, "Unable to evaluate property "
invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v4
aget-object v5, v3, v1
invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v4, v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_7c
.catch Ljava/lang/Exception; {:try_start_60 .. :try_end_7c} :catch_7d
goto :goto_4e
:catch_7d
move-exception v0
const-string v1, "Unable to get property descriptors"
invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
:cond_83
move-object v0, p1
:goto_84
return-object v0
:try_start_85
:cond_85
new-instance v0, Lorg/apache/log4j/k/k;
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->q()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->d()Lorg/apache/log4j/g;
move-result-object v2
if-eqz v2, :cond_b1
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->d()Lorg/apache/log4j/g;
move-result-object v2
:goto_95
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->n()J
move-result-wide v3
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->b()Lorg/apache/log4j/v;
move-result-object v5
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->j()Ljava/lang/String;
move-result-object v7
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->k()Lorg/apache/log4j/k/t;
move-result-object v8
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->f()Ljava/lang/String;
move-result-object v9
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->a()Lorg/apache/log4j/k/h;
move-result-object v10
invoke-direct/range {v0 .. v11}, Lorg/apache/log4j/k/k;-><init>(Ljava/lang/String;Lorg/apache/log4j/g;JLorg/apache/log4j/v;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/log4j/k/t;Ljava/lang/String;Lorg/apache/log4j/k/h;Ljava/util/Map;)V
goto :goto_84
:cond_b1
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->c()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lorg/apache/log4j/aa;->g(Ljava/lang/String;)Lorg/apache/log4j/aa;
:try_end_b8
.catch Ljava/lang/Exception; {:try_start_85 .. :try_end_b8} :catch_7d
move-result-object v2
goto :goto_95
.end method