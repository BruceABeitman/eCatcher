.class  Lcom/google/android/gms/tagmanager/as$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic afH:Lcom/google/android/gms/tagmanager/ar;
.field final synthetic afI:J
.field final synthetic afJ:Ljava/lang/String;
.field final synthetic afK:Lcom/google/android/gms/tagmanager/as;
.method constructor <init>(Lcom/google/android/gms/tagmanager/as;Lcom/google/android/gms/tagmanager/ar;JLjava/lang/String;)V
.registers 6
iput-object p1, p0, Lcom/google/android/gms/tagmanager/as$1;->afK:Lcom/google/android/gms/tagmanager/as;
iput-object p2, p0, Lcom/google/android/gms/tagmanager/as$1;->afH:Lcom/google/android/gms/tagmanager/ar;
iput-wide p3, p0, Lcom/google/android/gms/tagmanager/as$1;->afI:J
iput-object p5, p0, Lcom/google/android/gms/tagmanager/as$1;->afJ:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/tagmanager/as$1;->afK:Lcom/google/android/gms/tagmanager/as;
invoke-static {v0}, Lcom/google/android/gms/tagmanager/as;->a(Lcom/google/android/gms/tagmanager/as;)Lcom/google/android/gms/tagmanager/at;
move-result-object v0
if-nez v0, :cond_20
invoke-static {}, Lcom/google/android/gms/tagmanager/cx;->mL()Lcom/google/android/gms/tagmanager/cx;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/tagmanager/as$1;->afK:Lcom/google/android/gms/tagmanager/as;
invoke-static {v1}, Lcom/google/android/gms/tagmanager/as;->b(Lcom/google/android/gms/tagmanager/as;)Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/tagmanager/as$1;->afH:Lcom/google/android/gms/tagmanager/ar;
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tagmanager/cx;->a(Landroid/content/Context;Lcom/google/android/gms/tagmanager/ar;)V
iget-object v1, p0, Lcom/google/android/gms/tagmanager/as$1;->afK:Lcom/google/android/gms/tagmanager/as;
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cx;->mM()Lcom/google/android/gms/tagmanager/at;
move-result-object v0
invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/as;->a(Lcom/google/android/gms/tagmanager/as;Lcom/google/android/gms/tagmanager/at;)Lcom/google/android/gms/tagmanager/at;
:cond_20
iget-object v0, p0, Lcom/google/android/gms/tagmanager/as$1;->afK:Lcom/google/android/gms/tagmanager/as;
invoke-static {v0}, Lcom/google/android/gms/tagmanager/as;->a(Lcom/google/android/gms/tagmanager/as;)Lcom/google/android/gms/tagmanager/at;
move-result-object v0
iget-wide v1, p0, Lcom/google/android/gms/tagmanager/as$1;->afI:J
iget-object v3, p0, Lcom/google/android/gms/tagmanager/as$1;->afJ:Ljava/lang/String;
invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/tagmanager/at;->f(JLjava/lang/String;)V
return-void
.end method