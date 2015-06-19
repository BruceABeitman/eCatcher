.class public final Lcom/facebook/a/q;
.super Ljava/lang/Object;
.source "ReflectionCollector.java"
.method public static a(Ljava/lang/Class;)Ljava/lang/String;
.registers 8
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;
move-result-object v2
array-length v3, v2
const/4 v0, 0x0
:goto_b
if-ge v0, v3, :cond_37
aget-object v4, v2, v0
invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "="
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/4 v5, 0x0
:try_start_1d
invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_28
:try_end_28
.catch Ljava/lang/Exception; {:try_start_1d .. :try_end_28} :catch_30
const-string v4, "\n"
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_b
:catch_30
move-exception v4
const-string v4, "N/A"
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_28
:cond_37
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static b(Ljava/lang/Class;)Ljava/lang/String;
.registers 9
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;
move-result-object v2
array-length v3, v2
const/4 v0, 0x0
:goto_b
if-ge v0, v3, :cond_5a
aget-object v4, v2, v0
invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
move-result-object v5
array-length v5, v5
if-nez v5, :cond_57
invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v5
const-string v6, "get"
invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v5
if-nez v5, :cond_2e
invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v5
const-string v6, "is"
invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_57
:cond_2e
invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v5
const-string v6, "getClass"
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_57
:try_start_3a
invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const/16 v6, 0x3d
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v5
const/4 v6, 0x0
const/4 v7, 0x0
invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "\n"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:try_end_57
.catch Ljava/lang/IllegalArgumentException; {:try_start_3a .. :try_end_57} :catch_63
.catch Ljava/lang/IllegalAccessException; {:try_start_3a .. :try_end_57} :catch_61
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3a .. :try_end_57} :catch_5f
:goto_57
:cond_57
add-int/lit8 v0, v0, 0x1
goto :goto_b
:cond_5a
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:catch_5f
move-exception v4
goto :goto_57
:catch_61
move-exception v4
goto :goto_57
:catch_63
move-exception v4
goto :goto_57
.end method