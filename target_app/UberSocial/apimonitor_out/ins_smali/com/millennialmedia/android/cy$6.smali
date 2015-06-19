.class  Lcom/millennialmedia/android/cy$6;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;
.field final synthetic a:Lcom/millennialmedia/android/cy;
.method constructor <init>(Lcom/millennialmedia/android/cy;)V
.registers 2
iput-object p1, p0, Lcom/millennialmedia/android/cy$6;->a:Lcom/millennialmedia/android/cy;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/nuance/nmdp/speechkit/Vocalizer;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/SpeechError;Ljava/lang/Object;)V
.registers 8
const-string v0, "NVASpeechKit"
const-string v1, "Vocalization has ended."
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
if-eqz p3, :cond_2b
const-string v0, "NVASpeechKit"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Vocalizer error: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-interface {p3}, Lcom/nuance/nmdp/speechkit/SpeechError;->getErrorDetail()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/millennialmedia/android/cy$6;->a:Lcom/millennialmedia/android/cy;
invoke-static {v0, p3}, Lcom/millennialmedia/android/cy;->a(Lcom/millennialmedia/android/cy;Lcom/nuance/nmdp/speechkit/SpeechError;)V
:goto_2a
return-void
:cond_2b
iget-object v0, p0, Lcom/millennialmedia/android/cy$6;->a:Lcom/millennialmedia/android/cy;
sget-object v1, Lcom/millennialmedia/android/dd;->d:Lcom/millennialmedia/android/dd;
invoke-static {v0, v1}, Lcom/millennialmedia/android/cy;->a(Lcom/millennialmedia/android/cy;Lcom/millennialmedia/android/dd;)V
goto :goto_2a
.end method
.method public a(Lcom/nuance/nmdp/speechkit/Vocalizer;Ljava/lang/String;Ljava/lang/Object;)V
.registers 7
const-string v0, "NVASpeechKit"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Vocalization begins. text="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/millennialmedia/android/cy$6;->a:Lcom/millennialmedia/android/cy;
sget-object v1, Lcom/millennialmedia/android/dd;->b:Lcom/millennialmedia/android/dd;
invoke-static {v0, v1}, Lcom/millennialmedia/android/cy;->a(Lcom/millennialmedia/android/cy;Lcom/millennialmedia/android/dd;)V
return-void
.end method