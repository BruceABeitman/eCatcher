.class  Lcom/glympse/android/rdbg/j;
.super Ljava/lang/Object;
.source "RDbgPageFrameResourceTree.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static Q(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
.registers 4
const/4 v0, 0x2
invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
const-string v1, "url"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1, p0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, ".dat"
invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_1e
const-string v1, ".dat"
invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_3c
:cond_1e
const-string v1, "type"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "Document"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "mimeType"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "application/json"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_3c
const-string v1, ".jpg"
invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_63
const-string v1, "type"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "Image"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "mimeType"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "image/jpeg"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
:goto_62
return-object v0
:cond_63
const-string v1, "type"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "Document"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "mimeType"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "text/plain"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_62
.end method
.method public static c(Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GPrimitive;)V
.registers 3
const-string v0, "frame"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p0, v0, p1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
return-void
.end method
.method public static d(Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GPrimitive;)V
.registers 3
const-string v0, "childFrames"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p0, v0, p1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
return-void
.end method
.method public static e(Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GPrimitive;)V
.registers 3
const-string v0, "resources"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p0, v0, p1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
return-void
.end method
.method public static f(Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GPrimitive;)V
.registers 3
const-string v0, "resources"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p0, v0}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-interface {v0, p1}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
return-void
.end method
.method public static k(Lcom/glympse/android/lib/GGlympsePrivate;)Lcom/glympse/android/core/GPrimitive;
.registers 6
const-string v0, "app_root"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/rdbg/i;->P(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
const-string v1, "0"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/glympse/android/rdbg/i;->b(Lcom/glympse/android/core/GPrimitive;Ljava/lang/String;)V
invoke-static {}, Lcom/glympse/android/hal/Helpers;->emptyString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/glympse/android/rdbg/i;->e(Lcom/glympse/android/core/GPrimitive;Ljava/lang/String;)V
invoke-static {v0}, Lcom/glympse/android/rdbg/j;->m(Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
invoke-interface {p0}, Lcom/glympse/android/lib/GGlympsePrivate;->getContextHolder()Lcom/glympse/android/hal/GContextHolder;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;
move-result-object v0
const/4 v1, 0x0
const/4 v3, 0x1
invoke-static {v0, v1, v3}, Lcom/glympse/android/hal/HalFactory;->openDirectory(Landroid/content/Context;Ljava/lang/String;Z)Lcom/glympse/android/hal/GDirectory;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/hal/GDirectory;->getContents()Lcom/glympse/android/hal/GVector;
move-result-object v3
const/4 v0, 0x0
move v1, v0
:goto_32
invoke-virtual {v3}, Lcom/glympse/android/hal/GVector;->length()I
move-result v0
if-ge v1, v0, :cond_57
invoke-virtual {v3, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v4, "ImageCache"
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_53
invoke-virtual {v3, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/rdbg/j;->Q(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-static {v2, v0}, Lcom/glympse/android/rdbg/j;->f(Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GPrimitive;)V
:cond_53
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_32
:cond_57
return-object v2
.end method
.method public static m(Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/core/GPrimitive;
.registers 3
const/4 v0, 0x2
invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-static {v0, p0}, Lcom/glympse/android/rdbg/j;->c(Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GPrimitive;)V
const/4 v1, 0x1
invoke-static {v1}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v1
invoke-static {v0, v1}, Lcom/glympse/android/rdbg/j;->e(Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GPrimitive;)V
return-object v0
.end method