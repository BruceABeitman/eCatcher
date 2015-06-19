.class final Lcom/crashlytics/android/n;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/crashlytics/android/internal/aU;
.method constructor <init>(Lcom/crashlytics/android/Crashlytics;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic a(Lcom/crashlytics/android/internal/aX;)Ljava/lang/Object;
.registers 6
new-instance v0, Lcom/crashlytics/android/W;
invoke-static {}, Lcom/crashlytics/android/Crashlytics;->i()Ljava/lang/String;
move-result-object v1
iget-object v2, p1, Lcom/crashlytics/android/internal/aX;->a:Lcom/crashlytics/android/internal/aM;
iget-object v2, v2, Lcom/crashlytics/android/internal/aM;->c:Ljava/lang/String;
invoke-static {}, Lcom/crashlytics/android/Crashlytics;->s()Lcom/crashlytics/android/internal/av;
move-result-object v3
invoke-direct {v0, v1, v2, v3}, Lcom/crashlytics/android/W;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/av;)V
return-object v0
.end method