.class  Lcom/google/android/gms/tagmanager/o$b;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/tagmanager/bg;
.field final synthetic aeP:Lcom/google/android/gms/tagmanager/o;
.method private constructor <init>(Lcom/google/android/gms/tagmanager/o;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/tagmanager/o$b;->aeP:Lcom/google/android/gms/tagmanager/o;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/o;Lcom/google/android/gms/tagmanager/o$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/o$b;-><init>(Lcom/google/android/gms/tagmanager/o;)V
return-void
.end method
.method public a(Lcom/google/android/gms/internal/lf$a;)V
.registers 7
iget-object v0, p1, Lcom/google/android/gms/internal/lf$a;->aiE:Lcom/google/android/gms/internal/c$j;
if-eqz v0, :cond_f
iget-object v0, p1, Lcom/google/android/gms/internal/lf$a;->aiE:Lcom/google/android/gms/internal/c$j;
:goto_6
iget-object v1, p0, Lcom/google/android/gms/tagmanager/o$b;->aeP:Lcom/google/android/gms/tagmanager/o;
iget-wide v2, p1, Lcom/google/android/gms/internal/lf$a;->aiD:J
const/4 v4, 0x1
invoke-static {v1, v0, v2, v3, v4}, Lcom/google/android/gms/tagmanager/o;->a(Lcom/google/android/gms/tagmanager/o;Lcom/google/android/gms/internal/c$j;JZ)V
return-void
:cond_f
iget-object v1, p1, Lcom/google/android/gms/internal/lf$a;->fK:Lcom/google/android/gms/internal/c$f;
new-instance v0, Lcom/google/android/gms/internal/c$j;
invoke-direct {v0}, Lcom/google/android/gms/internal/c$j;-><init>()V
iput-object v1, v0, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;
const/4 v2, 0x0
iput-object v2, v0, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;
iget-object v1, v1, Lcom/google/android/gms/internal/c$f;->fg:Ljava/lang/String;
iput-object v1, v0, Lcom/google/android/gms/internal/c$j;->fL:Ljava/lang/String;
goto :goto_6
.end method
.method public a(Lcom/google/android/gms/tagmanager/bg$a;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$b;->aeP:Lcom/google/android/gms/tagmanager/o;
invoke-static {v0}, Lcom/google/android/gms/tagmanager/o;->b(Lcom/google/android/gms/tagmanager/o;)Z
move-result v0
if-nez v0, :cond_f
iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$b;->aeP:Lcom/google/android/gms/tagmanager/o;
const-wide/16 v1, 0x0
invoke-static {v0, v1, v2}, Lcom/google/android/gms/tagmanager/o;->a(Lcom/google/android/gms/tagmanager/o;J)V
:cond_f
return-void
.end method
.method public synthetic i(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/lf$a;
invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/o$b;->a(Lcom/google/android/gms/internal/lf$a;)V
return-void
.end method
.method public lq()V
.registers 1
return-void
.end method