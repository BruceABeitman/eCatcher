.class final Lcom/crashlytics/android/internal/E;
.super Lcom/crashlytics/android/internal/aa;
.source "SourceFile"
.field private synthetic a:Lcom/crashlytics/android/internal/D;
.method constructor <init>(Lcom/crashlytics/android/internal/D;)V
.registers 2
iput-object p1, p0, Lcom/crashlytics/android/internal/E;->a:Lcom/crashlytics/android/internal/D;
invoke-direct {p0}, Lcom/crashlytics/android/internal/aa;-><init>()V
return-void
.end method
.method public final a()V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/crashlytics/android/internal/E;->a:Lcom/crashlytics/android/internal/D;
invoke-static {v0}, Lcom/crashlytics/android/internal/D;->a(Lcom/crashlytics/android/internal/D;)V
:goto_5
:try_end_5
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;
move-result-object v1
invoke-virtual {v1}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;
move-result-object v1
const-string v2, "Crashlytics"
const-string v3, "Problem encountered during Crashlytics initialization."
invoke-interface {v1, v2, v3, v0}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_5
.end method