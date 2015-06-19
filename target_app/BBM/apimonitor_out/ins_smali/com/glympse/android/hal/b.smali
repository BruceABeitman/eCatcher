.class  Lcom/glympse/android/hal/b;
.super Ljava/lang/Object;
.source "AccountImporter.java"
.implements Ljava/lang/Runnable;
.field private h:Ljava/lang/String;
.field private k:Ljava/lang/String;
.field private l:Ljava/lang/String;
.field final synthetic m:Lcom/glympse/android/hal/a;
.method public constructor <init>(Lcom/glympse/android/hal/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/glympse/android/hal/b;->m:Lcom/glympse/android/hal/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/glympse/android/hal/b;->k:Ljava/lang/String;
iput-object p3, p0, Lcom/glympse/android/hal/b;->l:Ljava/lang/String;
iput-object p4, p0, Lcom/glympse/android/hal/b;->h:Ljava/lang/String;
return-void
.end method
.method public run()V
.registers 5
const/4 v1, 0x0
iget-object v0, p0, Lcom/glympse/android/hal/b;->m:Lcom/glympse/android/hal/a;
invoke-static {v0}, Lcom/glympse/android/hal/a;->c(Lcom/glympse/android/hal/a;)Lcom/glympse/android/lib/GAccountImportListener;
move-result-object v0
if-nez v0, :cond_a
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/glympse/android/hal/b;->k:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_3a
iget-object v0, p0, Lcom/glympse/android/hal/b;->l:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_3a
iget-object v0, p0, Lcom/glympse/android/hal/b;->h:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_3a
const/4 v0, 0x1
:goto_23
if-eqz v0, :cond_3c
iget-object v0, p0, Lcom/glympse/android/hal/b;->m:Lcom/glympse/android/hal/a;
invoke-static {v0}, Lcom/glympse/android/hal/a;->c(Lcom/glympse/android/hal/a;)Lcom/glympse/android/lib/GAccountImportListener;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/hal/b;->k:Ljava/lang/String;
iget-object v2, p0, Lcom/glympse/android/hal/b;->l:Ljava/lang/String;
iget-object v3, p0, Lcom/glympse/android/hal/b;->h:Ljava/lang/String;
invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/lib/GAccountImportListener;->accountImported(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:goto_34
iget-object v0, p0, Lcom/glympse/android/hal/b;->m:Lcom/glympse/android/hal/a;
invoke-virtual {v0}, Lcom/glympse/android/hal/a;->cancel()V
goto :goto_9
:cond_3a
move v0, v1
goto :goto_23
:cond_3c
iget-object v0, p0, Lcom/glympse/android/hal/b;->m:Lcom/glympse/android/hal/a;
invoke-static {v0}, Lcom/glympse/android/hal/a;->c(Lcom/glympse/android/hal/a;)Lcom/glympse/android/lib/GAccountImportListener;
move-result-object v0
invoke-interface {v0, v1, v1}, Lcom/glympse/android/lib/GAccountImportListener;->failedToImport(ZI)V
goto :goto_34
.end method