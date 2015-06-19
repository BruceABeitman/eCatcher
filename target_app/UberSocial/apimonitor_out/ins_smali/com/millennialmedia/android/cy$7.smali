.class  Lcom/millennialmedia/android/cy$7;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/nuance/nmdp/speechkit/Recognizer$Listener;
.field final synthetic a:Lcom/millennialmedia/android/cy;
.method constructor <init>(Lcom/millennialmedia/android/cy;)V
.registers 2
iput-object p1, p0, Lcom/millennialmedia/android/cy$7;->a:Lcom/millennialmedia/android/cy;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/nuance/nmdp/speechkit/Recognizer;)V
.registers 6
const-string v0, "NVASpeechKit"
const-string v1, "recording begins"
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/millennialmedia/android/cy$7;->a:Lcom/millennialmedia/android/cy;
const/4 v1, 0x0
iput-object v1, v0, Lcom/millennialmedia/android/cy;->d:[Lcom/millennialmedia/android/dc;
iget-object v0, p0, Lcom/millennialmedia/android/cy$7;->a:Lcom/millennialmedia/android/cy;
invoke-static {v0}, Lcom/millennialmedia/android/cy;->b(Lcom/millennialmedia/android/cy;)Lcom/millennialmedia/android/cz;
move-result-object v0
invoke-virtual {v0}, Lcom/millennialmedia/android/cz;->c()Z
move-result v0
if-nez v0, :cond_1f
iget-object v0, p0, Lcom/millennialmedia/android/cy$7;->a:Lcom/millennialmedia/android/cy;
sget-object v1, Lcom/millennialmedia/android/dd;->c:Lcom/millennialmedia/android/dd;
invoke-static {v0, v1}, Lcom/millennialmedia/android/cy;->a(Lcom/millennialmedia/android/cy;Lcom/millennialmedia/android/dd;)V
:cond_1f
iget-object v0, p0, Lcom/millennialmedia/android/cy$7;->a:Lcom/millennialmedia/android/cy;
invoke-static {v0, p1}, Lcom/millennialmedia/android/cy;->a(Lcom/millennialmedia/android/cy;Lcom/nuance/nmdp/speechkit/Recognizer;)V
iget-object v0, p0, Lcom/millennialmedia/android/cy$7;->a:Lcom/millennialmedia/android/cy;
invoke-static {v0}, Lcom/millennialmedia/android/cy;->b(Lcom/millennialmedia/android/cy;)Lcom/millennialmedia/android/cz;
move-result-object v0
invoke-virtual {v0}, Lcom/millennialmedia/android/cz;->c()Z
move-result v0
if-eqz v0, :cond_50
iget-object v0, p0, Lcom/millennialmedia/android/cy$7;->a:Lcom/millennialmedia/android/cy;
invoke-static {v0}, Lcom/millennialmedia/android/cy;->f(Lcom/millennialmedia/android/cy;)Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/millennialmedia/android/cy$7;->a:Lcom/millennialmedia/android/cy;
invoke-static {v1}, Lcom/millennialmedia/android/cy;->j(Lcom/millennialmedia/android/cy;)Ljava/lang/Runnable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Lcom/millennialmedia/android/cy$7;->a:Lcom/millennialmedia/android/cy;
invoke-static {v0}, Lcom/millennialmedia/android/cy;->f(Lcom/millennialmedia/android/cy;)Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/millennialmedia/android/cy$7;->a:Lcom/millennialmedia/android/cy;
invoke-static {v1}, Lcom/millennialmedia/android/cy;->j(Lcom/millennialmedia/android/cy;)Ljava/lang/Runnable;
move-result-object v1
const-wide/16 v2, 0x7d0
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_50
return-void
.end method
.method public a(Lcom/nuance/nmdp/speechkit/Recognizer;Lcom/nuance/nmdp/speechkit/Recognition;)V
.registers 6
const-string v0, "NVASpeechKit"
const-string v1, "recording results returned."
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/millennialmedia/android/cy$7;->a:Lcom/millennialmedia/android/cy;
invoke-static {v0}, Lcom/millennialmedia/android/cy;->k(Lcom/millennialmedia/android/cy;)V
iget-object v0, p0, Lcom/millennialmedia/android/cy$7;->a:Lcom/millennialmedia/android/cy;
invoke-static {v0}, Lcom/millennialmedia/android/cy;->b(Lcom/millennialmedia/android/cy;)Lcom/millennialmedia/android/cz;
move-result-object v0
iget-boolean v0, v0, Lcom/millennialmedia/android/cz;->d:Z
if-nez v0, :cond_51
iget-object v0, p0, Lcom/millennialmedia/android/cy$7;->a:Lcom/millennialmedia/android/cy;
invoke-interface {p2}, Lcom/nuance/nmdp/speechkit/Recognition;->getDetailedResults()Ljava/util/List;
move-result-object v1
invoke-static {v0, v1}, Lcom/millennialmedia/android/cy;->a(Lcom/millennialmedia/android/cy;Ljava/util/List;)V
iget-object v0, p0, Lcom/millennialmedia/android/cy$7;->a:Lcom/millennialmedia/android/cy;
invoke-static {v0}, Lcom/millennialmedia/android/cy;->m(Lcom/millennialmedia/android/cy;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_4b
const-string v0, "NVASpeechKit"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Recognizer.Listener.onResults: session id ["
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/millennialmedia/android/cy$7;->a:Lcom/millennialmedia/android/cy;
invoke-static {v2}, Lcom/millennialmedia/android/cy;->m(Lcom/millennialmedia/android/cy;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "]"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
:cond_4b
iget-object v0, p0, Lcom/millennialmedia/android/cy$7;->a:Lcom/millennialmedia/android/cy;
invoke-virtual {v0}, Lcom/millennialmedia/android/cy;->m()V
:goto_50
return-void
:cond_51
iget-object v0, p0, Lcom/millennialmedia/android/cy$7;->a:Lcom/millennialmedia/android/cy;
const/4 v1, 0x0
new-array v1, v1, [Lcom/millennialmedia/android/dc;
iput-object v1, v0, Lcom/millennialmedia/android/cy;->d:[Lcom/millennialmedia/android/dc;
iget-object v0, p0, Lcom/millennialmedia/android/cy$7;->a:Lcom/millennialmedia/android/cy;
invoke-static {v0}, Lcom/millennialmedia/android/cy;->g(Lcom/millennialmedia/android/cy;)V
goto :goto_50
.end method
.method public a(Lcom/nuance/nmdp/speechkit/Recognizer;Lcom/nuance/nmdp/speechkit/SpeechError;)V
.registers 6
const-string v0, "NVASpeechKit"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Speech Kit Error code:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-interface {p2}, Lcom/nuance/nmdp/speechkit/SpeechError;->getErrorCode()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " detail:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-interface {p2}, Lcom/nuance/nmdp/speechkit/SpeechError;->getErrorDetail()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " suggestions:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-interface {p2}, Lcom/nuance/nmdp/speechkit/SpeechError;->getSuggestion()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/millennialmedia/android/cy$7;->a:Lcom/millennialmedia/android/cy;
invoke-static {v0}, Lcom/millennialmedia/android/cy;->k(Lcom/millennialmedia/android/cy;)V
iget-object v0, p0, Lcom/millennialmedia/android/cy$7;->a:Lcom/millennialmedia/android/cy;
invoke-static {v0, p2}, Lcom/millennialmedia/android/cy;->a(Lcom/millennialmedia/android/cy;Lcom/nuance/nmdp/speechkit/SpeechError;)V
iget-object v0, p0, Lcom/millennialmedia/android/cy$7;->a:Lcom/millennialmedia/android/cy;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/millennialmedia/android/cy;->b(Lcom/millennialmedia/android/cy;Lcom/nuance/nmdp/speechkit/Recognizer;)Lcom/nuance/nmdp/speechkit/Recognizer;
iget-object v0, p0, Lcom/millennialmedia/android/cy$7;->a:Lcom/millennialmedia/android/cy;
invoke-static {v0}, Lcom/millennialmedia/android/cy;->l(Lcom/millennialmedia/android/cy;)Lcom/nuance/nmdp/speechkit/SpeechKit;
move-result-object v0
if-eqz v0, :cond_78
const-string v0, "NVASpeechKit"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Recognizer.Listener.onError: session id ["
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/millennialmedia/android/cy$7;->a:Lcom/millennialmedia/android/cy;
invoke-static {v2}, Lcom/millennialmedia/android/cy;->l(Lcom/millennialmedia/android/cy;)Lcom/nuance/nmdp/speechkit/SpeechKit;
move-result-object v2
invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/SpeechKit;->getSessionId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "]"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
:cond_78
return-void
.end method
.method public b(Lcom/nuance/nmdp/speechkit/Recognizer;)V
.registers 4
const-string v0, "NVASpeechKit"
const-string v1, "recording has ended"
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/millennialmedia/android/cy$7;->a:Lcom/millennialmedia/android/cy;
invoke-static {v0}, Lcom/millennialmedia/android/cy;->k(Lcom/millennialmedia/android/cy;)V
iget-object v0, p0, Lcom/millennialmedia/android/cy$7;->a:Lcom/millennialmedia/android/cy;
invoke-static {v0}, Lcom/millennialmedia/android/cy;->b(Lcom/millennialmedia/android/cy;)Lcom/millennialmedia/android/cz;
move-result-object v0
invoke-virtual {v0}, Lcom/millennialmedia/android/cz;->c()Z
move-result v0
if-nez v0, :cond_1f
iget-object v0, p0, Lcom/millennialmedia/android/cy$7;->a:Lcom/millennialmedia/android/cy;
sget-object v1, Lcom/millennialmedia/android/dd;->e:Lcom/millennialmedia/android/dd;
invoke-static {v0, v1}, Lcom/millennialmedia/android/cy;->a(Lcom/millennialmedia/android/cy;Lcom/millennialmedia/android/dd;)V
:cond_1f
iget-object v0, p0, Lcom/millennialmedia/android/cy$7;->a:Lcom/millennialmedia/android/cy;
invoke-static {v0}, Lcom/millennialmedia/android/cy;->l(Lcom/millennialmedia/android/cy;)Lcom/nuance/nmdp/speechkit/SpeechKit;
move-result-object v0
if-eqz v0, :cond_36
iget-object v0, p0, Lcom/millennialmedia/android/cy$7;->a:Lcom/millennialmedia/android/cy;
iget-object v1, p0, Lcom/millennialmedia/android/cy$7;->a:Lcom/millennialmedia/android/cy;
invoke-static {v1}, Lcom/millennialmedia/android/cy;->l(Lcom/millennialmedia/android/cy;)Lcom/nuance/nmdp/speechkit/SpeechKit;
move-result-object v1
invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/SpeechKit;->getSessionId()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/millennialmedia/android/cy;->a(Lcom/millennialmedia/android/cy;Ljava/lang/String;)Ljava/lang/String;
:cond_36
return-void
.end method