.class  Lcom/google/android/gms/tagmanager/ap;
.super Ljava/lang/Object;
.field private final afC:J
.field private afD:Ljava/lang/String;
.field private final wt:J
.field private final wu:J
.method constructor <init>(JJJ)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p1, p0, Lcom/google/android/gms/tagmanager/ap;->wt:J
iput-wide p3, p0, Lcom/google/android/gms/tagmanager/ap;->wu:J
iput-wide p5, p0, Lcom/google/android/gms/tagmanager/ap;->afC:J
return-void
.end method
.method  R(Ljava/lang/String;)V
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
iput-object p1, p0, Lcom/google/android/gms/tagmanager/ap;->afD:Ljava/lang/String;
goto :goto_c
.end method
.method  dg()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/tagmanager/ap;->wt:J
return-wide v0
.end method
.method  lI()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/tagmanager/ap;->afC:J
return-wide v0
.end method
.method  lJ()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ap;->afD:Ljava/lang/String;
return-object v0
.end method