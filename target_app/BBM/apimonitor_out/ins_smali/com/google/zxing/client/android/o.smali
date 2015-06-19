.class final Lcom/google/zxing/client/android/o;
.super Landroid/os/AsyncTask;
.source "InactivityTimer.java"
.field final synthetic a:Lcom/google/zxing/client/android/n;
.method private constructor <init>(Lcom/google/zxing/client/android/n;)V
.registers 2
iput-object p1, p0, Lcom/google/zxing/client/android/o;->a:Lcom/google/zxing/client/android/n;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/zxing/client/android/n;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/zxing/client/android/o;-><init>(Lcom/google/zxing/client/android/n;)V
return-void
.end method
.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
const-wide/32 v0, 0x493e0
:try_start_3
invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
invoke-static {}, Lcom/google/zxing/client/android/n;->e()Ljava/lang/String;
move-result-object v0
const-string v1, "Finishing activity due to inactivity"
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p0, Lcom/google/zxing/client/android/o;->a:Lcom/google/zxing/client/android/n;
invoke-static {v0}, Lcom/google/zxing/client/android/n;->b(Lcom/google/zxing/client/android/n;)Landroid/app/Activity;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Activity;->finish()V
:goto_18
:try_end_18
.catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_18} :catch_1a
const/4 v0, 0x0
return-object v0
:catch_1a
move-exception v0
goto :goto_18
.end method