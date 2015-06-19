.class final Lcom/google/android/gms/internal/ds$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/content/Context;
.field final synthetic b:Lcom/google/android/gms/internal/cx;
.field final synthetic c:Lcom/google/android/gms/internal/du;
.field final synthetic d:Lcom/google/android/gms/internal/ev;
.field final synthetic e:Ljava/lang/String;
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/cx;Lcom/google/android/gms/internal/du;Lcom/google/android/gms/internal/ev;Ljava/lang/String;)V
.registers 6
iput-object p1, p0, Lcom/google/android/gms/internal/ds$1;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/google/android/gms/internal/ds$1;->b:Lcom/google/android/gms/internal/cx;
iput-object p3, p0, Lcom/google/android/gms/internal/ds$1;->c:Lcom/google/android/gms/internal/du;
iput-object p4, p0, Lcom/google/android/gms/internal/ds$1;->d:Lcom/google/android/gms/internal/ev;
iput-object p5, p0, Lcom/google/android/gms/internal/ds$1;->e:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 7
const/4 v2, 0x0
iget-object v0, p0, Lcom/google/android/gms/internal/ds$1;->a:Landroid/content/Context;
new-instance v1, Lcom/google/android/gms/internal/ak;
invoke-direct {v1}, Lcom/google/android/gms/internal/ak;-><init>()V
const/4 v4, 0x0
iget-object v3, p0, Lcom/google/android/gms/internal/ds$1;->b:Lcom/google/android/gms/internal/cx;
iget-object v5, v3, Lcom/google/android/gms/internal/cx;->k:Lcom/google/android/gms/internal/dx;
move v3, v2
invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/er;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ak;ZZLcom/google/android/gms/internal/lh;Lcom/google/android/gms/internal/dx;)Lcom/google/android/gms/internal/er;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/er;->setWillNotDraw(Z)V
iget-object v1, p0, Lcom/google/android/gms/internal/ds$1;->c:Lcom/google/android/gms/internal/du;
invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/du;->a(Lcom/google/android/gms/internal/er;)V
invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->f()Lcom/google/android/gms/internal/eu;
move-result-object v1
const-string v2, "/invalidRequest"
iget-object v3, p0, Lcom/google/android/gms/internal/ds$1;->c:Lcom/google/android/gms/internal/du;
iget-object v3, v3, Lcom/google/android/gms/internal/du;->a:Lcom/google/android/gms/internal/ao;
invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/eu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ao;)V
const-string v2, "/loadAdURL"
iget-object v3, p0, Lcom/google/android/gms/internal/ds$1;->c:Lcom/google/android/gms/internal/du;
iget-object v3, v3, Lcom/google/android/gms/internal/du;->b:Lcom/google/android/gms/internal/ao;
invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/eu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ao;)V
const-string v2, "/log"
sget-object v3, Lcom/google/android/gms/internal/am;->g:Lcom/google/android/gms/internal/ao;
invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/eu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ao;)V
iget-object v2, p0, Lcom/google/android/gms/internal/ds$1;->d:Lcom/google/android/gms/internal/ev;
invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/eu;->a(Lcom/google/android/gms/internal/ev;)V
const-string v1, "Loading the JS library."
invoke-static {v1}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V
iget-object v1, p0, Lcom/google/android/gms/internal/ds$1;->e:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/er;->loadUrl(Ljava/lang/String;)V
return-void
.end method