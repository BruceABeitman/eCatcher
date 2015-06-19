.class final Lcom/crashlytics/android/ac;
.super Lcom/crashlytics/android/internal/aa;
.source "SourceFile"
.field private final a:F
.field private synthetic b:Lcom/crashlytics/android/aa;
.method constructor <init>(Lcom/crashlytics/android/aa;F)V
.registers 3
iput-object p1, p0, Lcom/crashlytics/android/ac;->b:Lcom/crashlytics/android/aa;
invoke-direct {p0}, Lcom/crashlytics/android/internal/aa;-><init>()V
iput p2, p0, Lcom/crashlytics/android/ac;->a:F
return-void
.end method
.method public final a()V
.registers 9
:try_start_0
invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;
move-result-object v0
invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;
move-result-object v0
const-string v1, "Crashlytics"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Starting report processing in "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v3, p0, Lcom/crashlytics/android/ac;->a:F
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " second(s)..."
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V
iget v0, p0, Lcom/crashlytics/android/ac;->a:F
:try_end_26
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_8e
const/4 v1, 0x0
cmpl-float v0, v0, v1
if-lez v0, :cond_34
:try_start_2b
iget v0, p0, Lcom/crashlytics/android/ac;->a:F
const/high16 v1, 0x447a
mul-float/2addr v0, v1
float-to-long v0, v0
invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
:cond_34
:try_start_34
:try_end_34
.catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_34} :catch_a5
.catch Ljava/lang/Exception; {:try_start_2b .. :try_end_34} :catch_8e
invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;
move-result-object v1
invoke-virtual {v1}, Lcom/crashlytics/android/Crashlytics;->l()Lcom/crashlytics/android/v;
move-result-object v2
iget-object v0, p0, Lcom/crashlytics/android/ac;->b:Lcom/crashlytics/android/aa;
invoke-virtual {v0}, Lcom/crashlytics/android/aa;->a()Ljava/util/List;
move-result-object v0
invoke-virtual {v2}, Lcom/crashlytics/android/v;->a()Z
move-result v2
if-nez v2, :cond_9e
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v2
if-nez v2, :cond_ae
invoke-virtual {v1}, Lcom/crashlytics/android/Crashlytics;->p()Z
move-result v1
if-nez v1, :cond_ae
invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;
move-result-object v1
invoke-virtual {v1}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;
move-result-object v1
const-string v2, "Crashlytics"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "User declined to send. Removing "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " Report(s)."
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v2, v3}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_7e
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_9e
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/crashlytics/android/Z;
invoke-virtual {v0}, Lcom/crashlytics/android/Z;->a()Z
:try_end_8d
.catch Ljava/lang/Exception; {:try_start_34 .. :try_end_8d} :catch_8e
goto :goto_7e
:catch_8e
move-exception v0
invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;
move-result-object v1
invoke-virtual {v1}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;
move-result-object v1
const-string v2, "Crashlytics"
const-string v3, "An unexpected error occurred while attempting to upload crash reports."
invoke-interface {v1, v2, v3, v0}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:goto_9e
:cond_9e
iget-object v0, p0, Lcom/crashlytics/android/ac;->b:Lcom/crashlytics/android/aa;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/crashlytics/android/aa;->a(Lcom/crashlytics/android/aa;Ljava/lang/Thread;)Ljava/lang/Thread;
return-void
:catch_a5
move-exception v0
:try_start_a6
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
goto :goto_9e
:cond_ae
const/4 v1, 0x0
:cond_af
:goto_af
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v2
if-nez v2, :cond_9e
invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;
move-result-object v2
invoke-virtual {v2}, Lcom/crashlytics/android/Crashlytics;->l()Lcom/crashlytics/android/v;
move-result-object v2
invoke-virtual {v2}, Lcom/crashlytics/android/v;->a()Z
move-result v2
if-nez v2, :cond_9e
invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;
move-result-object v2
invoke-virtual {v2}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;
move-result-object v2
const-string v3, "Crashlytics"
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Attempting to send "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " report(s)"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-interface {v2, v3, v4}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_ed
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_ff
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/crashlytics/android/Z;
iget-object v3, p0, Lcom/crashlytics/android/ac;->b:Lcom/crashlytics/android/aa;
invoke-virtual {v3, v0}, Lcom/crashlytics/android/aa;->a(Lcom/crashlytics/android/Z;)Z
goto :goto_ed
:cond_ff
iget-object v0, p0, Lcom/crashlytics/android/ac;->b:Lcom/crashlytics/android/aa;
invoke-virtual {v0}, Lcom/crashlytics/android/aa;->a()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v2
if-nez v2, :cond_af
invoke-static {}, Lcom/crashlytics/android/aa;->b()[S
move-result-object v3
add-int/lit8 v2, v1, 0x1
invoke-static {}, Lcom/crashlytics/android/aa;->b()[S
move-result-object v4
array-length v4, v4
add-int/lit8 v4, v4, -0x1
invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I
move-result v1
aget-short v1, v3, v1
int-to-long v3, v1
invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;
move-result-object v1
invoke-virtual {v1}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;
move-result-object v1
const-string v5, "Crashlytics"
new-instance v6, Ljava/lang/StringBuilder;
const-string v7, "Report submisson: scheduling delayed retry in "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, " seconds"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-interface {v1, v5, v6}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V
:try_end_141
.catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_141} :catch_8e
const-wide/16 v5, 0x3e8
mul-long/2addr v3, v5
:try_start_144
invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
:try_end_147
.catch Ljava/lang/InterruptedException; {:try_start_144 .. :try_end_147} :catch_14a
.catch Ljava/lang/Exception; {:try_start_144 .. :try_end_147} :catch_8e
move v1, v2
goto/16 :goto_af
:catch_14a
move-exception v0
:try_start_14b
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
:try_end_152
.catch Ljava/lang/Exception; {:try_start_14b .. :try_end_152} :catch_8e
goto/16 :goto_9e
.end method