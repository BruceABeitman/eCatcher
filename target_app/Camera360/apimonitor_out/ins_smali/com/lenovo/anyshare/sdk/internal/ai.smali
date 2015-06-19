.class public final Lcom/lenovo/anyshare/sdk/internal/ai;
.super Ljava/lang/Object;
.source "BeanUtils.java"
.method public static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
.registers 5
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/ah;->c(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z
move-result v1
if-nez v1, :cond_18
const/4 v2, 0x1
:try_start_15
invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
:cond_18
invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
:try_end_1b
.catchall {:try_start_15 .. :try_end_1b} :catchall_20
move-result-object v2
invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
return-object v2
:catchall_20
move-exception v2
invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
throw v2
.end method
.method public static a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
.registers 7
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/ah;->c(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z
move-result v1
if-nez v1, :cond_18
const/4 v2, 0x1
:try_start_15
invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
:cond_18
invoke-virtual {v0, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_1b
.catchall {:try_start_15 .. :try_end_1b} :catchall_20
move-result-object v2
invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
return-object v2
:catchall_20
move-exception v2
invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
throw v2
.end method
.method public static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
.registers 7
const/4 v3, 0x1
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/ah;->c(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z
move-result v1
if-nez v1, :cond_19
const/4 v2, 0x1
:try_start_16
invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
:cond_19
invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
:try_end_1c
.catchall {:try_start_16 .. :try_end_1c} :catchall_20
invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
return v3
:catchall_20
move-exception v2
invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
throw v2
.end method
.method public static b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
.registers 4
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/ah;->c(Ljava/lang/String;)V
:try_start_6
invoke-static {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/ai;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
:try_end_9
.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_b
move-result-object v1
:goto_a
return-object v1
:catch_b
move-exception v0
const-string/jumbo v1, "BeanUtils"
invoke-static {v1, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v1, 0x0
goto :goto_a
.end method