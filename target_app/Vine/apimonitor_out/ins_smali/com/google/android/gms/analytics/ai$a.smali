.class  Lcom/google/android/gms/analytics/ai$a;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/analytics/k$a;
.field private final xt:Lcom/google/android/gms/analytics/aj;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/android/gms/analytics/aj;
invoke-direct {v0}, Lcom/google/android/gms/analytics/aj;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/analytics/ai$a;->xt:Lcom/google/android/gms/analytics/aj;
return-void
.end method
.method public a(Ljava/lang/String;I)V
.registers 5
const-string v0, "ga_sessionTimeout"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/google/android/gms/analytics/ai$a;->xt:Lcom/google/android/gms/analytics/aj;
iput p2, v0, Lcom/google/android/gms/analytics/aj;->xw:I
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
.registers 4
iget-object v0, p0, Lcom/google/android/gms/analytics/ai$a;->xt:Lcom/google/android/gms/analytics/aj;
iget-object v0, v0, Lcom/google/android/gms/analytics/aj;->xA:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public c(Ljava/lang/String;Z)V
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
const-string v2, "ga_autoActivityTracking"
invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_13
iget-object v2, p0, Lcom/google/android/gms/analytics/ai$a;->xt:Lcom/google/android/gms/analytics/aj;
if-eqz p2, :cond_11
:goto_e
iput v0, v2, Lcom/google/android/gms/analytics/aj;->xx:I
:goto_10
return-void
:cond_11
move v0, v1
goto :goto_e
:cond_13
const-string v2, "ga_anonymizeIp"
invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_24
iget-object v2, p0, Lcom/google/android/gms/analytics/ai$a;->xt:Lcom/google/android/gms/analytics/aj;
if-eqz p2, :cond_22
:goto_1f
iput v0, v2, Lcom/google/android/gms/analytics/aj;->xy:I
goto :goto_10
:cond_22
move v0, v1
goto :goto_1f
:cond_24
const-string v2, "ga_reportUncaughtExceptions"
invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_35
iget-object v2, p0, Lcom/google/android/gms/analytics/ai$a;->xt:Lcom/google/android/gms/analytics/aj;
if-eqz p2, :cond_33
:goto_30
iput v0, v2, Lcom/google/android/gms/analytics/aj;->xz:I
goto :goto_10
:cond_33
move v0, v1
goto :goto_30
:cond_35
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
goto :goto_10
.end method
.method public synthetic cw()Lcom/google/android/gms/analytics/j;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/analytics/ai$a;->dy()Lcom/google/android/gms/analytics/aj;
move-result-object v0
return-object v0
.end method
.method public d(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
const-string v0, "ga_trackingId"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/google/android/gms/analytics/ai$a;->xt:Lcom/google/android/gms/analytics/aj;
iput-object p2, v0, Lcom/google/android/gms/analytics/aj;->xu:Ljava/lang/String;
:goto_c
return-void
:cond_d
const-string v0, "ga_sampleFrequency"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_36
:try_start_15
iget-object v0, p0, Lcom/google/android/gms/analytics/ai$a;->xt:Lcom/google/android/gms/analytics/aj;
invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
move-result-wide v1
iput-wide v1, v0, Lcom/google/android/gms/analytics/aj;->xv:D
:try_end_1d
.catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1d} :catch_1e
goto :goto_c
:catch_1e
move-exception v0
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Error parsing ga_sampleFrequency value: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V
goto :goto_c
:cond_36
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
.method public dy()Lcom/google/android/gms/analytics/aj;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/ai$a;->xt:Lcom/google/android/gms/analytics/aj;
return-object v0
.end method