.class final Lcom/crashlytics/android/u;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Z
.field private final b:Ljava/util/concurrent/CountDownLatch;
.method private constructor <init>(Lcom/crashlytics/android/Crashlytics;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/crashlytics/android/u;->a:Z
new-instance v0, Ljava/util/concurrent/CountDownLatch;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V
iput-object v0, p0, Lcom/crashlytics/android/u;->b:Ljava/util/concurrent/CountDownLatch;
return-void
.end method
.method synthetic constructor <init>(Lcom/crashlytics/android/Crashlytics;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/crashlytics/android/u;-><init>(Lcom/crashlytics/android/Crashlytics;)V
return-void
.end method
.method final a(Z)V
.registers 3
iput-boolean p1, p0, Lcom/crashlytics/android/u;->a:Z
iget-object v0, p0, Lcom/crashlytics/android/u;->b:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
return-void
.end method
.method final a()Z
.registers 2
iget-boolean v0, p0, Lcom/crashlytics/android/u;->a:Z
return v0
.end method
.method final b()V
.registers 2
:try_start_0
iget-object v0, p0, Lcom/crashlytics/android/u;->b:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
:goto_5
:try_end_5
.catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
goto :goto_5
.end method