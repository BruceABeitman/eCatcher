.class  Lcom/google/android/gms/analytics/bq;
.super Ljava/lang/Object;
.field private a:Ljava/lang/String;
.field private final b:J
.field private final c:J
.field private d:Ljava/lang/String;
.method constructor <init>(Ljava/lang/String;JJ)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "https:"
iput-object v0, p0, Lcom/google/android/gms/analytics/bq;->d:Ljava/lang/String;
iput-object p1, p0, Lcom/google/android/gms/analytics/bq;->a:Ljava/lang/String;
iput-wide p2, p0, Lcom/google/android/gms/analytics/bq;->b:J
iput-wide p4, p0, Lcom/google/android/gms/analytics/bq;->c:J
return-void
.end method
.method  a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/bq;->a:Ljava/lang/String;
return-object v0
.end method
.method  a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/analytics/bq;->a:Ljava/lang/String;
return-void
.end method
.method  b()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/analytics/bq;->b:J
return-wide v0
.end method
.method  b(Ljava/lang/String;)V
.registers 4
if-eqz p1, :cond_c
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_d
:cond_c
:goto_c
return-void
:cond_d
invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v1, "http:"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_c
const-string v0, "http:"
iput-object v0, p0, Lcom/google/android/gms/analytics/bq;->d:Ljava/lang/String;
goto :goto_c
.end method
.method  c()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/analytics/bq;->c:J
return-wide v0
.end method
.method  d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/bq;->d:Ljava/lang/String;
return-object v0
.end method