.class  Lcom/glympse/android/rdbg/d;
.super Ljava/lang/Object;
.source "RDbgDomDomain.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/lib/GGlympsePrivate;)Lcom/glympse/android/core/GPrimitive;
.registers 9
const/4 v4, 0x2
const/4 v6, 0x1
const-string v0, "id"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p0, v0}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J
move-result-wide v0
invoke-static {v4}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
const-string v3, "id"
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-interface {v2, v3, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V
const-string v0, "error"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v2, v0}, Lcom/glympse/android/core/GPrimitive;->putNull(Ljava/lang/String;)V
invoke-static {v4}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-static {v4}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v1
const-string v3, "#document"
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v3}, Lcom/glympse/android/rdbg/e;->a(Lcom/glympse/android/core/GPrimitive;Ljava/lang/String;)V
const/4 v3, 0x0
invoke-static {v1, v3}, Lcom/glympse/android/rdbg/e;->a(Lcom/glympse/android/core/GPrimitive;I)V
const/16 v3, 0x9
invoke-static {v1, v3}, Lcom/glympse/android/rdbg/e;->b(Lcom/glympse/android/core/GPrimitive;I)V
invoke-static {v6}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v3
invoke-static {p1}, Lcom/glympse/android/rdbg/e;->h(Lcom/glympse/android/lib/GGlympsePrivate;)Lcom/glympse/android/core/GPrimitive;
move-result-object v4
invoke-static {p1}, Lcom/glympse/android/rdbg/e;->i(Lcom/glympse/android/lib/GGlympsePrivate;)Lcom/glympse/android/core/GPrimitive;
move-result-object v5
invoke-static {p1, v6, v6}, Lcom/glympse/android/rdbg/e;->a(Lcom/glympse/android/lib/GGlympsePrivate;ZZ)Lcom/glympse/android/core/GPrimitive;
move-result-object v6
invoke-interface {v3, v4}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
invoke-interface {v3, v5}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
invoke-interface {v3, v6}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
invoke-static {v1, v3}, Lcom/glympse/android/rdbg/e;->a(Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GPrimitive;)V
const-string v3, "root"
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v3, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
const-string v1, "result"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v2, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
return-object v2
.end method
.method public static dl()Lcom/glympse/android/core/GPrimitive;
.registers 3
const/4 v0, 0x2
invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
const-string v1, "method"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "DOM.documentUpdated"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "params"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->putNull(Ljava/lang/String;)V
return-object v0
.end method