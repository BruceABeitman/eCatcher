.class public final Lcom/instagram/api/i/c;
.super Ljava/lang/Object;
.source "SystemMessageUtil.java"
.field private static final a:Ljava/util/Map;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/instagram/api/i/c;->a:Ljava/util/Map;
return-void
.end method
.method public static declared-synchronized a(Lcom/instagram/api/b/b;)V
.registers 8
const-class v1, Lcom/instagram/api/i/c;
monitor-enter v1
:try_start_3
invoke-virtual {p0}, Lcom/instagram/api/b/b;->a()Ljava/lang/String;
move-result-object v2
sget-object v0, Lcom/instagram/api/i/c;->a:Ljava/util/Map;
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Runnable;
if-eqz v0, :cond_31
invoke-static {}, Lcom/instagram/k/a/b;->a()Lcom/instagram/k/a/b;
move-result-object v3
invoke-virtual {v3, v2}, Lcom/instagram/k/a/b;->a(Ljava/lang/String;)Ljava/lang/Float;
move-result-object v4
invoke-virtual {p0}, Lcom/instagram/api/b/b;->b()Ljava/lang/Float;
move-result-object v5
if-eqz v4, :cond_2b
invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F
move-result v4
invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F
move-result v6
cmpg-float v4, v4, v6
if-gez v4, :cond_31
:cond_2b
invoke-virtual {v3, v2, v5}, Lcom/instagram/k/a/b;->a(Ljava/lang/String;Ljava/lang/Float;)V
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
:cond_31
:try_end_31
.catchall {:try_start_3 .. :try_end_31} :catchall_33
monitor-exit v1
return-void
:catchall_33
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static a(Ljava/lang/String;Ljava/lang/Runnable;)V
.registers 3
sget-object v0, Lcom/instagram/api/i/c;->a:Ljava/util/Map;
invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method