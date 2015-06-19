.class final Lcom/google/zxing/client/android/a/b;
.super Landroid/os/AsyncTask;
.source "AutoFocusManager.java"
.field final synthetic a:Lcom/google/zxing/client/android/a/a;
.method private constructor <init>(Lcom/google/zxing/client/android/a/a;)V
.registers 2
iput-object p1, p0, Lcom/google/zxing/client/android/a/b;->a:Lcom/google/zxing/client/android/a/a;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/zxing/client/android/a/a;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/zxing/client/android/a/b;-><init>(Lcom/google/zxing/client/android/a/a;)V
return-void
.end method
.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
const-wide/16 v0, 0x7d0
:try_start_2
invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
:try_end_5
.catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_c
:goto_5
iget-object v0, p0, Lcom/google/zxing/client/android/a/b;->a:Lcom/google/zxing/client/android/a/a;
invoke-virtual {v0}, Lcom/google/zxing/client/android/a/a;->a()V
const/4 v0, 0x0
return-object v0
:catch_c
move-exception v0
goto :goto_5
.end method