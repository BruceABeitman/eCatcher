.class public Lcom/umeng/analytics/c;
.super Ljava/lang/Object;
.source "MessageBuffer.java"
.field private a:Lcom/umeng/analytics/a/i;
.field private b:Ljava/util/HashMap;
.field private c:Ljava/util/HashMap;
.field private d:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/umeng/analytics/a/i;
invoke-direct {v0}, Lcom/umeng/analytics/a/i;-><init>()V
iput-object v0, p0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/a/i;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/umeng/analytics/c;->b:Ljava/util/HashMap;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/umeng/analytics/c;->c:Ljava/util/HashMap;
const/16 v0, 0xa
iput v0, p0, Lcom/umeng/analytics/c;->d:I
return-void
.end method
.method public a()I
.registers 2
iget-object v0, p0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/a/i;
invoke-virtual {v0}, Lcom/umeng/analytics/a/i;->b()I
move-result v0
return v0
.end method
.method public a(I)V
.registers 2
iput p1, p0, Lcom/umeng/analytics/c;->d:I
return-void
.end method
.method public a(Landroid/content/Context;)V
.registers 5
invoke-virtual {p0}, Lcom/umeng/analytics/c;->a()I
move-result v0
if-gtz v0, :cond_7
:goto_6
return-void
:cond_7
invoke-static {p1}, Lcom/umeng/common/b;->d(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
invoke-static {p1, v0}, Lcom/umeng/analytics/i;->a(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
new-instance v2, Lcom/umeng/analytics/a/i;
invoke-direct {v2}, Lcom/umeng/analytics/a/i;-><init>()V
if-eqz v1, :cond_19
invoke-virtual {v2, v1}, Lcom/umeng/analytics/a/i;->a(Lorg/json/JSONObject;)V
:cond_19
monitor-enter p0
:try_start_1a
iget-object v1, p0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/a/i;
invoke-virtual {v2, v1}, Lcom/umeng/analytics/a/i;->a(Lcom/umeng/analytics/a/i;)V
iget-object v1, p0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/a/i;
invoke-virtual {v1}, Lcom/umeng/analytics/a/i;->c()V
monitor-exit p0
:try_end_25
.catchall {:try_start_1a .. :try_end_25} :catchall_29
invoke-static {p1, v2, v0}, Lcom/umeng/analytics/i;->a(Landroid/content/Context;Lcom/umeng/analytics/a/g;Ljava/lang/String;)V
goto :goto_6
:catchall_29
move-exception v0
:try_start_2a
monitor-exit p0
:try_end_2b
.catchall {:try_start_2a .. :try_end_2b} :catchall_29
throw v0
.end method
.method public declared-synchronized a(Lcom/umeng/analytics/a/d;)V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/a/i;
invoke-virtual {v0, p1}, Lcom/umeng/analytics/a/i;->a(Lcom/umeng/analytics/a/d;)V
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return-void
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized a(Lcom/umeng/analytics/a/h;)V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/a/i;
invoke-virtual {v0, p1}, Lcom/umeng/analytics/a/i;->a(Lcom/umeng/analytics/a/h;)V
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return-void
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized a(Lcom/umeng/analytics/a/m;)V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/a/i;
invoke-virtual {v0, p1}, Lcom/umeng/analytics/a/i;->a(Lcom/umeng/analytics/a/m;)V
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return-void
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method
.method public a(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/umeng/analytics/c;->b:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/umeng/analytics/c;->b:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/umeng/analytics/j;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/umeng/analytics/j;->a(Ljava/lang/Long;)V
:goto_1b
return-void
:cond_1c
new-instance v0, Lcom/umeng/analytics/j;
invoke-direct {v0, p1}, Lcom/umeng/analytics/j;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/umeng/analytics/j;->a(Ljava/lang/Long;)V
iget-object v1, p0, Lcom/umeng/analytics/c;->b:Ljava/util/HashMap;
invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_1b
.end method
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
.registers 15
monitor-enter p0
:try_start_1
iget-object v7, p0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/a/i;
new-instance v0, Lcom/umeng/analytics/a/e;
move-object v1, p1
move-object v2, p2
move-object v3, p3
move v4, p6
move-wide v5, p4
invoke-direct/range {v0 .. v6}, Lcom/umeng/analytics/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
invoke-virtual {v7, v0}, Lcom/umeng/analytics/a/i;->a(Lcom/umeng/analytics/a/e;)V
:try_end_10
.catchall {:try_start_1 .. :try_end_10} :catchall_12
monitor-exit p0
return-void
:catchall_12
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;J)V
.registers 8
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/a/i;
new-instance v1, Lcom/umeng/analytics/a/a;
invoke-direct {v1, p2, p3, p4, p5}, Lcom/umeng/analytics/a/a;-><init>(Ljava/lang/String;Ljava/util/HashMap;J)V
invoke-virtual {v0, p1, v1}, Lcom/umeng/analytics/a/i;->a(Ljava/lang/String;Lcom/umeng/analytics/a/a;)V
:try_end_b
.catchall {:try_start_1 .. :try_end_b} :catchall_d
monitor-exit p0
return-void
:catchall_d
move-exception v0
monitor-exit p0
throw v0
.end method
.method public a(Ljava/lang/String;Ljava/util/HashMap;)V
.registers 4
iget-object v0, p0, Lcom/umeng/analytics/c;->c:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_d
iget-object v0, p0, Lcom/umeng/analytics/c;->c:Ljava/util/HashMap;
invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_d
return-void
.end method
.method public b(Ljava/lang/String;)J
.registers 4
iget-object v0, p0, Lcom/umeng/analytics/c;->b:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/umeng/analytics/c;->b:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/umeng/analytics/j;
invoke-virtual {v0}, Lcom/umeng/analytics/j;->a()Ljava/lang/Long;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
:goto_18
return-wide v0
:cond_19
const-wide/16 v0, -0x1
goto :goto_18
.end method
.method public b(Landroid/content/Context;)V
.registers 4
invoke-static {p1}, Lcom/umeng/common/b;->d(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
invoke-static {p1, v0}, Lcom/umeng/analytics/i;->a(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
if-eqz v0, :cond_10
invoke-virtual {v0}, Lorg/json/JSONObject;->length()I
move-result v1
if-nez v1, :cond_11
:cond_10
:goto_10
return-void
:cond_11
new-instance v1, Lcom/umeng/analytics/a/i;
invoke-direct {v1}, Lcom/umeng/analytics/a/i;-><init>()V
invoke-virtual {v1, v0}, Lcom/umeng/analytics/a/i;->a(Lorg/json/JSONObject;)V
monitor-enter p0
:try_start_1a
iget-object v0, p0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/a/i;
invoke-virtual {v0, v1}, Lcom/umeng/analytics/a/i;->a(Lcom/umeng/analytics/a/i;)V
monitor-exit p0
goto :goto_10
:catchall_21
move-exception v0
monitor-exit p0
:try_end_23
.catchall {:try_start_1a .. :try_end_23} :catchall_21
throw v0
.end method
.method public b()Z
.registers 3
iget-object v0, p0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/a/i;
invoke-virtual {v0}, Lcom/umeng/analytics/a/i;->b()I
move-result v0
iget v1, p0, Lcom/umeng/analytics/c;->d:I
if-le v0, v1, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public c(Ljava/lang/String;)Ljava/util/HashMap;
.registers 3
iget-object v0, p0, Lcom/umeng/analytics/c;->b:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/umeng/analytics/c;->b:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/umeng/analytics/j;
invoke-virtual {v0}, Lcom/umeng/analytics/j;->b()I
move-result v0
if-lez v0, :cond_1f
iget-object v0, p0, Lcom/umeng/analytics/c;->c:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/HashMap;
:goto_1e
return-object v0
:cond_1f
iget-object v0, p0, Lcom/umeng/analytics/c;->c:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/HashMap;
goto :goto_1e
.end method
.method public c()Z
.registers 2
iget-object v0, p0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/a/i;
invoke-virtual {v0}, Lcom/umeng/analytics/a/i;->a()Z
move-result v0
return v0
.end method
.method public declared-synchronized d()Lorg/json/JSONObject;
.registers 4
monitor-enter p0
:try_start_1
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
iget-object v1, p0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/a/i;
invoke-virtual {v1, v0}, Lcom/umeng/analytics/a/i;->b(Lorg/json/JSONObject;)V
:goto_b
:try_end_b
.catchall {:try_start_1 .. :try_end_b} :catchall_19
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_d
monitor-exit p0
return-object v0
:catch_d
move-exception v0
:try_start_e
const-string/jumbo v1, "MobclickAgent"
const-string/jumbo v2, ""
invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_17
.catchall {:try_start_e .. :try_end_17} :catchall_19
const/4 v0, 0x0
goto :goto_b
:catchall_19
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized e()V
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/a/i;
invoke-virtual {v0}, Lcom/umeng/analytics/a/i;->c()V
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return-void
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method