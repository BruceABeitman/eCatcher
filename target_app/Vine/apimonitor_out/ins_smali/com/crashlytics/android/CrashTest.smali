.class public Lcom/crashlytics/android/CrashTest;
.super Ljava/lang/Object;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public crashAsyncTask(J)V
.registers 7
new-instance v0, Lcom/crashlytics/android/j;
invoke-direct {v0, p0, p1, p2}, Lcom/crashlytics/android/j;-><init>(Lcom/crashlytics/android/CrashTest;J)V
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Void;
const/4 v2, 0x0
const/4 v3, 0x0
aput-object v3, v1, v2
invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
return-void
.end method
.method public indexOutOfBounds()V
.registers 6
const/4 v0, 0x2
new-array v0, v0, [I
const/16 v1, 0xa
aget v0, v0, v1
invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;
move-result-object v1
invoke-virtual {v1}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;
move-result-object v1
const-string v2, "Crashlytics"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Out of bounds value: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v2, v0}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public stackOverflow()V
.registers 1
invoke-virtual {p0}, Lcom/crashlytics/android/CrashTest;->stackOverflow()V
return-void
.end method
.method public throwFiveChainedExceptions()V
.registers 4
:try_start_0
const-string v0, "1"
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v1
:try_end_8
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_8
:catch_8
move-exception v0
:try_start_9
new-instance v1, Ljava/lang/RuntimeException;
const-string v2, "2"
invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
:catch_11
:try_end_11
.catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_11
move-exception v0
:try_start_12
new-instance v1, Ljava/lang/RuntimeException;
const-string v2, "3"
invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
:try_end_1a
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1a} :catch_1a
:catch_1a
move-exception v0
:try_start_1b
new-instance v1, Ljava/lang/RuntimeException;
const-string v2, "4"
invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
:catch_23
:try_end_23
.catch Ljava/lang/Exception; {:try_start_1b .. :try_end_23} :catch_23
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
const-string v2, "5"
invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method
.method public throwRuntimeException(Ljava/lang/String;)V
.registers 3
new-instance v0, Ljava/lang/RuntimeException;
invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
.end method