.class final Lcom/crashlytics/android/x;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/concurrent/Callable;
.field private synthetic a:J
.field private synthetic b:Ljava/lang/String;
.field private synthetic c:Lcom/crashlytics/android/v;
.method constructor <init>(Lcom/crashlytics/android/v;JLjava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/crashlytics/android/x;->c:Lcom/crashlytics/android/v;
iput-wide p2, p0, Lcom/crashlytics/android/x;->a:J
iput-object p4, p0, Lcom/crashlytics/android/x;->b:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic call()Ljava/lang/Object;
.registers 6
iget-object v0, p0, Lcom/crashlytics/android/x;->c:Lcom/crashlytics/android/v;
invoke-static {v0}, Lcom/crashlytics/android/v;->a(Lcom/crashlytics/android/v;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v0
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
if-nez v0, :cond_2a
iget-object v0, p0, Lcom/crashlytics/android/x;->c:Lcom/crashlytics/android/v;
invoke-static {v0}, Lcom/crashlytics/android/v;->d(Lcom/crashlytics/android/v;)Lcom/crashlytics/android/internal/aq;
move-result-object v0
if-nez v0, :cond_19
iget-object v0, p0, Lcom/crashlytics/android/x;->c:Lcom/crashlytics/android/v;
invoke-static {v0}, Lcom/crashlytics/android/v;->e(Lcom/crashlytics/android/v;)Z
:cond_19
iget-object v0, p0, Lcom/crashlytics/android/x;->c:Lcom/crashlytics/android/v;
iget-object v0, p0, Lcom/crashlytics/android/x;->c:Lcom/crashlytics/android/v;
invoke-static {v0}, Lcom/crashlytics/android/v;->d(Lcom/crashlytics/android/v;)Lcom/crashlytics/android/internal/aq;
move-result-object v0
const/high16 v1, 0x1
iget-wide v2, p0, Lcom/crashlytics/android/x;->a:J
iget-object v4, p0, Lcom/crashlytics/android/x;->b:Ljava/lang/String;
invoke-static {v0, v1, v2, v3, v4}, Lcom/crashlytics/android/v;->a(Lcom/crashlytics/android/internal/aq;IJLjava/lang/String;)V
:cond_2a
const/4 v0, 0x0
return-object v0
.end method