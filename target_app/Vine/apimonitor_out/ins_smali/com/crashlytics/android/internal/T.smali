.class final Lcom/crashlytics/android/internal/T;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private synthetic a:Lcom/crashlytics/android/internal/O;
.method constructor <init>(Lcom/crashlytics/android/internal/O;)V
.registers 2
iput-object p1, p0, Lcom/crashlytics/android/internal/T;->a:Lcom/crashlytics/android/internal/O;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/crashlytics/android/internal/T;->a:Lcom/crashlytics/android/internal/O;
iget-object v0, v0, Lcom/crashlytics/android/internal/O;->a:Lcom/crashlytics/android/internal/U;
iget-object v1, p0, Lcom/crashlytics/android/internal/T;->a:Lcom/crashlytics/android/internal/O;
new-instance v2, Lcom/crashlytics/android/internal/I;
invoke-direct {v2}, Lcom/crashlytics/android/internal/I;-><init>()V
iput-object v2, v1, Lcom/crashlytics/android/internal/O;->a:Lcom/crashlytics/android/internal/U;
invoke-interface {v0}, Lcom/crashlytics/android/internal/U;->b()V
:goto_10
:try_end_10
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11
return-void
:catch_11
move-exception v0
const-string v0, "Crashlytics failed to disable analytics."
invoke-static {v0}, Lcom/crashlytics/android/internal/ab;->d(Ljava/lang/String;)V
goto :goto_10
.end method