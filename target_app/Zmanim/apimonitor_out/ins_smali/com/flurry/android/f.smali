.class final Lcom/flurry/android/f;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Thread$UncaughtExceptionHandler;
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
move-result-object v0
iput-object v0, p0, Lcom/flurry/android/f;->a:Ljava/lang/Thread$UncaughtExceptionHandler;
return-void
.end method
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.registers 6
:try_start_0
invoke-static {}, Lcom/flurry/android/FlurryAgent;->d()Lcom/flurry/android/FlurryAgent;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/Throwable;)V
:goto_7
:try_end_7
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_11
iget-object v0, p0, Lcom/flurry/android/f;->a:Ljava/lang/Thread$UncaughtExceptionHandler;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/flurry/android/f;->a:Ljava/lang/Thread$UncaughtExceptionHandler;
invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
:cond_10
return-void
:catch_11
move-exception v0
const-string v1, "FlurryAgent"
const-string v2, ""
invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_7
.end method