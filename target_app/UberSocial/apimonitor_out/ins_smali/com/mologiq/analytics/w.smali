.class public abstract Lcom/mologiq/analytics/w;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/mologiq/analytics/w;->a:Ljava/lang/String;
return-void
.end method
.method protected abstract a()Ljava/lang/String;
.end method
.method  a(Landroid/content/Context;)V
.registers 4
:try_start_0
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {p1}, Lcom/mologiq/analytics/ai;->a(Landroid/content/Context;)Ljava/io/File;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "line.separator"
invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/mologiq/analytics/w;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/mologiq/analytics/ai;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/mologiq/analytics/w;->a(Ljava/lang/String;)V
:try_end_28
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29
:goto_28
return-void
:catch_29
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/mologiq/analytics/ai;->a(Ljava/lang/String;)V
goto :goto_28
.end method
.method protected abstract a(Ljava/lang/String;)V
.end method
.method protected abstract b()Ljava/lang/String;
.end method
.method protected abstract b(Ljava/lang/String;)V
.end method
.method  b(Landroid/content/Context;)Z
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {p1}, Lcom/mologiq/analytics/ai;->a(Landroid/content/Context;)Ljava/io/File;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "line.separator"
invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/mologiq/analytics/w;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/mologiq/analytics/ai;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const/4 v0, 0x1
if-eqz v1, :cond_4a
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_4a
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v1, "core"
invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
if-eqz v1, :cond_4a
invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/mologiq/analytics/w;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_4a
const/4 v0, 0x0
:cond_4a
if-eqz v0, :cond_4f
invoke-virtual {p0, p1}, Lcom/mologiq/analytics/w;->c(Landroid/content/Context;)V
:cond_4f
return v0
.end method
.method public abstract c(Landroid/content/Context;)V
.end method