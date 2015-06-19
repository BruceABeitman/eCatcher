.class  Lcom/google/android/gms/tagmanager/ap;
.super Ljava/lang/Object;
.field private final UZ:J
.field private Va:Ljava/lang/String;
.field private final tL:J
.field private final tM:J
.method constructor <init>(JJJ)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p1, p0, Lcom/google/android/gms/tagmanager/ap;->tL:J
iput-wide p3, p0, Lcom/google/android/gms/tagmanager/ap;->tM:J
iput-wide p5, p0, Lcom/google/android/gms/tagmanager/ap;->UZ:J
return-void
.end method
.method  F(Ljava/lang/String;)V
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
iput-object p1, p0, Lcom/google/android/gms/tagmanager/ap;->Va:Ljava/lang/String;
goto :goto_c
.end method
.method  ci()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/tagmanager/ap;->tL:J
return-wide v0
.end method
.method  je()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/tagmanager/ap;->UZ:J
return-wide v0
.end method
.method  jf()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ap;->Va:Ljava/lang/String;
return-object v0
.end method