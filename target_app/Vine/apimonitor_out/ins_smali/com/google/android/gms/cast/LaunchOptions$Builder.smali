.class public final Lcom/google/android/gms/cast/LaunchOptions$Builder;
.super Ljava/lang/Object;
.field private Ap:Lcom/google/android/gms/cast/LaunchOptions;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/android/gms/cast/LaunchOptions;
invoke-direct {v0}, Lcom/google/android/gms/cast/LaunchOptions;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/cast/LaunchOptions$Builder;->Ap:Lcom/google/android/gms/cast/LaunchOptions;
return-void
.end method
.method public build()Lcom/google/android/gms/cast/LaunchOptions;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/LaunchOptions$Builder;->Ap:Lcom/google/android/gms/cast/LaunchOptions;
return-object v0
.end method
.method public setLocale(Ljava/util/Locale;)Lcom/google/android/gms/cast/LaunchOptions$Builder;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/cast/LaunchOptions$Builder;->Ap:Lcom/google/android/gms/cast/LaunchOptions;
invoke-static {p1}, Lcom/google/android/gms/internal/gj;->b(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/LaunchOptions;->setLanguage(Ljava/lang/String;)V
return-object p0
.end method
.method public setRelaunchIfRunning(Z)Lcom/google/android/gms/cast/LaunchOptions$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/cast/LaunchOptions$Builder;->Ap:Lcom/google/android/gms/cast/LaunchOptions;
invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/LaunchOptions;->setRelaunchIfRunning(Z)V
return-object p0
.end method