.class  Lcom/google/android/gms/tagmanager/af;
.super Ljava/lang/Object;
.field private final a:J
.field private final b:J
.field private final c:J
.field private d:Ljava/lang/String;
.method constructor <init>(JJJ)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p1, p0, Lcom/google/android/gms/tagmanager/af;->a:J
iput-wide p3, p0, Lcom/google/android/gms/tagmanager/af;->b:J
iput-wide p5, p0, Lcom/google/android/gms/tagmanager/af;->c:J
return-void
.end method
.method  a()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/tagmanager/af;->a:J
return-wide v0
.end method
.method  a(Ljava/lang/String;)V
.registers 3
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
iput-object p1, p0, Lcom/google/android/gms/tagmanager/af;->d:Ljava/lang/String;
goto :goto_c
.end method
.method  b()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/tagmanager/af;->c:J
return-wide v0
.end method
.method  c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/af;->d:Ljava/lang/String;
return-object v0
.end method