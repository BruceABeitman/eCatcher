.class  Lcom/google/android/gms/analytics/v$a;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/analytics/k$a;
.field private final wf:Lcom/google/android/gms/analytics/w;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/android/gms/analytics/w;
invoke-direct {v0}, Lcom/google/android/gms/analytics/w;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/analytics/v$a;->wf:Lcom/google/android/gms/analytics/w;
return-void
.end method
.method public a(Ljava/lang/String;I)V
.registers 5
const-string v0, "ga_dispatchPeriod"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/google/android/gms/analytics/v$a;->wf:Lcom/google/android/gms/analytics/w;
iput p2, v0, Lcom/google/android/gms/analytics/w;->wh:I
:goto_c
return-void
:cond_d
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "int configuration name not recognized:  "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V
goto :goto_c
.end method
.method public c(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
return-void
.end method
.method public c(Ljava/lang/String;Z)V
.registers 5
const-string v0, "ga_dryRun"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_12
iget-object v1, p0, Lcom/google/android/gms/analytics/v$a;->wf:Lcom/google/android/gms/analytics/w;
if-eqz p2, :cond_10
const/4 v0, 0x1
:goto_d
iput v0, v1, Lcom/google/android/gms/analytics/w;->wi:I
:goto_f
return-void
:cond_10
const/4 v0, 0x0
goto :goto_d
:cond_12
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "bool configuration name not recognized:  "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V
goto :goto_f
.end method
.method public cS()Lcom/google/android/gms/analytics/w;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/v$a;->wf:Lcom/google/android/gms/analytics/w;
return-object v0
.end method
.method public synthetic cw()Lcom/google/android/gms/analytics/j;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/analytics/v$a;->cS()Lcom/google/android/gms/analytics/w;
move-result-object v0
return-object v0
.end method
.method public d(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
const-string v0, "ga_appName"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/google/android/gms/analytics/v$a;->wf:Lcom/google/android/gms/analytics/w;
iput-object p2, v0, Lcom/google/android/gms/analytics/w;->tz:Ljava/lang/String;
:goto_c
return-void
:cond_d
const-string v0, "ga_appVersion"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/google/android/gms/analytics/v$a;->wf:Lcom/google/android/gms/analytics/w;
iput-object p2, v0, Lcom/google/android/gms/analytics/w;->tA:Ljava/lang/String;
goto :goto_c
:cond_1a
const-string v0, "ga_logLevel"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_27
iget-object v0, p0, Lcom/google/android/gms/analytics/v$a;->wf:Lcom/google/android/gms/analytics/w;
iput-object p2, v0, Lcom/google/android/gms/analytics/w;->wg:Ljava/lang/String;
goto :goto_c
:cond_27
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "string configuration name not recognized:  "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V
goto :goto_c
.end method