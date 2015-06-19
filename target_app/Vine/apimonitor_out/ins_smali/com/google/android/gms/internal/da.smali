.class public Lcom/google/android/gms/internal/da;
.super Ljava/lang/Object;
.field private final mx:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/da;->mx:Ljava/lang/String;
return-void
.end method
.method public a(Ljava/lang/String;ILandroid/content/Intent;)Z
.registers 8
const/4 v0, 0x0
if-eqz p1, :cond_5
if-nez p3, :cond_6
:cond_5
:goto_5
return v0
:cond_6
invoke-static {p3}, Lcom/google/android/gms/internal/cz;->d(Landroid/content/Intent;)Ljava/lang/String;
move-result-object v1
invoke-static {p3}, Lcom/google/android/gms/internal/cz;->e(Landroid/content/Intent;)Ljava/lang/String;
move-result-object v2
if-eqz v1, :cond_5
if-eqz v2, :cond_5
invoke-static {v1}, Lcom/google/android/gms/internal/cz;->p(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_22
const-string v1, "Developer payload not match."
invoke-static {v1}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
goto :goto_5
:cond_22
iget-object v3, p0, Lcom/google/android/gms/internal/da;->mx:Ljava/lang/String;
if-eqz v3, :cond_34
iget-object v3, p0, Lcom/google/android/gms/internal/da;->mx:Ljava/lang/String;
invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/db;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_34
const-string v1, "Fail to verify signature."
invoke-static {v1}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
goto :goto_5
:cond_34
const/4 v0, 0x1
goto :goto_5
.end method
.method public bh()Ljava/lang/String;
.registers 2
invoke-static {}, Lcom/google/android/gms/internal/ep;->bO()Ljava/lang/String;
move-result-object v0
return-object v0
.end method