.class public final Lcom/google/android/gms/internal/ca;
.super Ljava/lang/Object;
.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/ca$a;)Lcom/google/android/gms/internal/ct;
.registers 4
iget-object v0, p1, Lcom/google/android/gms/internal/cd;->kN:Lcom/google/android/gms/internal/db;
iget-boolean v0, v0, Lcom/google/android/gms/internal/db;->pX:Z
if-eqz v0, :cond_b
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ca;->b(Landroid/content/Context;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/ca$a;)Lcom/google/android/gms/internal/ct;
move-result-object v0
:goto_a
return-object v0
:cond_b
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ca;->c(Landroid/content/Context;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/ca$a;)Lcom/google/android/gms/internal/ct;
move-result-object v0
goto :goto_a
.end method
.method private static b(Landroid/content/Context;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/ca$a;)Lcom/google/android/gms/internal/ct;
.registers 4
const-string v0, "Fetching ad response from local ad request service."
invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V
new-instance v0, Lcom/google/android/gms/internal/cb$a;
invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/cb$a;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/ca$a;)V
invoke-virtual {v0}, Lcom/google/android/gms/internal/cb$a;->start()V
return-object v0
.end method
.method private static c(Landroid/content/Context;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/ca$a;)Lcom/google/android/gms/internal/ct;
.registers 4
const-string v0, "Fetching ad response from remote ad request service."
invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V
invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I
move-result v0
if-eqz v0, :cond_12
const-string v0, "Failed to connect to remote ad request service."
invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V
const/4 v0, 0x0
:goto_11
return-object v0
:cond_12
new-instance v0, Lcom/google/android/gms/internal/cb$b;
invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/cb$b;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/ca$a;)V
goto :goto_11
.end method