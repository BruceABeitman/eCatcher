.class final Lcom/crashlytics/android/internal/am;
.super Lcom/crashlytics/android/internal/aa;
.source "SourceFile"
.field private synthetic a:Ljava/lang/Runnable;
.method constructor <init>(Lcom/crashlytics/android/internal/al;Ljava/lang/Runnable;)V
.registers 3
iput-object p2, p0, Lcom/crashlytics/android/internal/am;->a:Ljava/lang/Runnable;
invoke-direct {p0}, Lcom/crashlytics/android/internal/aa;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/crashlytics/android/internal/am;->a:Ljava/lang/Runnable;
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
return-void
.end method