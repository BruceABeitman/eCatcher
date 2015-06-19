.class public final Lcom/google/android/gms/internal/cq;
.super Ljava/lang/Object;
.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/cr;)Lcom/google/android/gms/internal/dq;
.registers 4
iget-object v0, p1, Lcom/google/android/gms/internal/cd;->k:Lcom/google/android/gms/internal/db;
iget-boolean v0, v0, Lcom/google/android/gms/internal/db;->e:Z
if-eqz v0, :cond_b
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/cq;->b(Landroid/content/Context;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/cr;)Lcom/google/android/gms/internal/dq;
move-result-object v0
:goto_a
return-object v0
:cond_b
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/cq;->c(Landroid/content/Context;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/cr;)Lcom/google/android/gms/internal/dq;
move-result-object v0
goto :goto_a
.end method
.method private static b(Landroid/content/Context;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/cr;)Lcom/google/android/gms/internal/dq;
.registers 4
const-string v0, "Fetching ad response from local ad request service."
invoke-static {v0}, Lcom/google/android/gms/internal/ea;->a(Ljava/lang/String;)V
new-instance v0, Lcom/google/android/gms/internal/ct;
invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ct;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/cr;)V
invoke-virtual {v0}, Lcom/google/android/gms/internal/ct;->e()V
return-object v0
.end method
.method private static c(Landroid/content/Context;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/cr;)Lcom/google/android/gms/internal/dq;
.registers 4
const-string v0, "Fetching ad response from remote ad request service."
invoke-static {v0}, Lcom/google/android/gms/internal/ea;->a(Ljava/lang/String;)V
invoke-static {p0}, Lcom/google/android/gms/common/i;->a(Landroid/content/Context;)I
move-result v0
if-eqz v0, :cond_12
const-string v0, "Failed to connect to remote ad request service."
invoke-static {v0}, Lcom/google/android/gms/internal/ea;->e(Ljava/lang/String;)V
const/4 v0, 0x0
:goto_11
return-object v0
:cond_12
new-instance v0, Lcom/google/android/gms/internal/cu;
invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/cu;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/cr;)V
goto :goto_11
.end method