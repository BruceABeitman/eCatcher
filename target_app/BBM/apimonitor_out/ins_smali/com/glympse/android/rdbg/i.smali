.class  Lcom/glympse/android/rdbg/i;
.super Ljava/lang/Object;
.source "RDbgPageFrame.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static P(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
.registers 4
const/4 v0, 0x2
invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v1
int-to-long v1, v1
invoke-static {v1, v2}, Lcom/glympse/android/hal/Helpers;->toString(J)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/glympse/android/rdbg/i;->b(Lcom/glympse/android/core/GPrimitive;Ljava/lang/String;)V
invoke-static {v0, p0}, Lcom/glympse/android/rdbg/i;->g(Lcom/glympse/android/core/GPrimitive;Ljava/lang/String;)V
invoke-static {v0, p0}, Lcom/glympse/android/rdbg/i;->e(Lcom/glympse/android/core/GPrimitive;Ljava/lang/String;)V
const-string v1, "0"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/glympse/android/rdbg/i;->c(Lcom/glympse/android/core/GPrimitive;Ljava/lang/String;)V
invoke-static {}, Lcom/glympse/android/hal/Helpers;->emptyString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/glympse/android/rdbg/i;->d(Lcom/glympse/android/core/GPrimitive;Ljava/lang/String;)V
const-string v1, "com.glympse.clientapi.rdbg"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/glympse/android/rdbg/i;->h(Lcom/glympse/android/core/GPrimitive;Ljava/lang/String;)V
return-object v0
.end method
.method public static b(Lcom/glympse/android/core/GPrimitive;Ljava/lang/String;)V
.registers 3
const-string v0, "id"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p0, v0, p1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public static c(Lcom/glympse/android/core/GPrimitive;Ljava/lang/String;)V
.registers 3
const-string v0, "loaderId"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p0, v0, p1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public static d(Lcom/glympse/android/core/GPrimitive;Ljava/lang/String;)V
.registers 3
const-string v0, "mimeType"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p0, v0, p1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public static e(Lcom/glympse/android/core/GPrimitive;Ljava/lang/String;)V
.registers 3
const-string v0, "url"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p0, v0, p1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public static f(Lcom/glympse/android/core/GPrimitive;Ljava/lang/String;)V
.registers 3
const-string v0, "parentId"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p0, v0, p1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public static g(Lcom/glympse/android/core/GPrimitive;Ljava/lang/String;)V
.registers 3
const-string v0, "name"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p0, v0, p1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public static h(Lcom/glympse/android/core/GPrimitive;Ljava/lang/String;)V
.registers 3
const-string v0, "securityOrigin"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p0, v0, p1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method