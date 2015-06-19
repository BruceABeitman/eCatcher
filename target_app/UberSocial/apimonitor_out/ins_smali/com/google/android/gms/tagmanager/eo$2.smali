.class  Lcom/google/android/gms/tagmanager/eo$2;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/tagmanager/ep;
.field final synthetic a:Z
.field final synthetic b:Lcom/google/android/gms/tagmanager/eo;
.method constructor <init>(Lcom/google/android/gms/tagmanager/eo;Z)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/tagmanager/eo$2;->b:Lcom/google/android/gms/tagmanager/eo;
iput-boolean p2, p0, Lcom/google/android/gms/tagmanager/eo$2;->a:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/google/android/gms/tagmanager/a;)Z
.registers 8
const/4 v0, 0x1
const/4 v1, 0x0
iget-boolean v2, p0, Lcom/google/android/gms/tagmanager/eo$2;->a:Z
if-eqz v2, :cond_1f
invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/a;->b()J
move-result-wide v2
const-wide/32 v4, 0x2932e00
add-long/2addr v2, v4
iget-object v4, p0, Lcom/google/android/gms/tagmanager/eo$2;->b:Lcom/google/android/gms/tagmanager/eo;
invoke-static {v4}, Lcom/google/android/gms/tagmanager/eo;->a(Lcom/google/android/gms/tagmanager/eo;)Lcom/google/android/gms/internal/je;
move-result-object v4
invoke-interface {v4}, Lcom/google/android/gms/internal/je;->a()J
move-result-wide v4
cmp-long v2, v2, v4
if-ltz v2, :cond_1d
:cond_1c
:goto_1c
return v0
:cond_1d
move v0, v1
goto :goto_1c
:cond_1f
invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/a;->c()Z
move-result v2
if-eqz v2, :cond_1c
move v0, v1
goto :goto_1c
.end method