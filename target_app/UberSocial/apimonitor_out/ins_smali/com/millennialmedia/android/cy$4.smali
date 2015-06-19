.class  Lcom/millennialmedia/android/cy$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;
.field final synthetic a:Lcom/millennialmedia/android/cy;
.method constructor <init>(Lcom/millennialmedia/android/cy;)V
.registers 2
iput-object p1, p0, Lcom/millennialmedia/android/cy$4;->a:Lcom/millennialmedia/android/cy;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private a(Lcom/nuance/nmdp/speechkit/DataUploadCommand;)V
.registers 4
iget-object v0, p0, Lcom/millennialmedia/android/cy$4;->a:Lcom/millennialmedia/android/cy;
invoke-static {v0}, Lcom/millennialmedia/android/cy;->c(Lcom/millennialmedia/android/cy;)Lcom/millennialmedia/android/db;
move-result-object v0
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/millennialmedia/android/cy$4;->a:Lcom/millennialmedia/android/cy;
invoke-static {v0}, Lcom/millennialmedia/android/cy;->h(Lcom/millennialmedia/android/cy;)Lcom/nuance/nmdp/speechkit/DataUploadCommand;
move-result-object v0
if-ne v0, p1, :cond_23
iget-object v0, p0, Lcom/millennialmedia/android/cy$4;->a:Lcom/millennialmedia/android/cy;
invoke-static {v0}, Lcom/millennialmedia/android/cy;->i(Lcom/millennialmedia/android/cy;)Lcom/millennialmedia/android/da;
move-result-object v0
sget-object v1, Lcom/millennialmedia/android/da;->a:Lcom/millennialmedia/android/da;
if-ne v0, v1, :cond_2a
iget-object v0, p0, Lcom/millennialmedia/android/cy$4;->a:Lcom/millennialmedia/android/cy;
invoke-static {v0}, Lcom/millennialmedia/android/cy;->c(Lcom/millennialmedia/android/cy;)Lcom/millennialmedia/android/db;
move-result-object v0
invoke-interface {v0}, Lcom/millennialmedia/android/db;->d()V
:cond_23
:goto_23
iget-object v0, p0, Lcom/millennialmedia/android/cy$4;->a:Lcom/millennialmedia/android/cy;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/millennialmedia/android/cy;->a(Lcom/millennialmedia/android/cy;Lcom/nuance/nmdp/speechkit/DataUploadCommand;)Lcom/nuance/nmdp/speechkit/DataUploadCommand;
return-void
:cond_2a
iget-object v0, p0, Lcom/millennialmedia/android/cy$4;->a:Lcom/millennialmedia/android/cy;
invoke-static {v0}, Lcom/millennialmedia/android/cy;->c(Lcom/millennialmedia/android/cy;)Lcom/millennialmedia/android/db;
move-result-object v0
invoke-interface {v0}, Lcom/millennialmedia/android/db;->c()V
goto :goto_23
.end method
.method public a(Lcom/nuance/nmdp/speechkit/DataUploadCommand;Lcom/nuance/nmdp/speechkit/DataUploadResult;)V
.registers 6
const-string v0, "NVASpeechKit"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "DataUploadCommand listener successful command:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " isVocRegenerated:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-interface {p2}, Lcom/nuance/nmdp/speechkit/DataUploadResult;->isVocRegenerated()Z
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " results:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0, p1}, Lcom/millennialmedia/android/cy$4;->a(Lcom/nuance/nmdp/speechkit/DataUploadCommand;)V
return-void
.end method
.method public a(Lcom/nuance/nmdp/speechkit/DataUploadCommand;Lcom/nuance/nmdp/speechkit/SpeechError;)V
.registers 6
const-string v0, "NVASpeechKit"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "DataUploadCommand listener error. command:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " Error:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-interface {p2}, Lcom/nuance/nmdp/speechkit/SpeechError;->getErrorDetail()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0, p1}, Lcom/millennialmedia/android/cy$4;->a(Lcom/nuance/nmdp/speechkit/DataUploadCommand;)V
return-void
.end method