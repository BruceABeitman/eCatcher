.class final Lcom/bbm/ui/e/r;
.super Ljava/lang/Object;
.source "EphemeralTextHolder.java"
.implements Lcom/bbm/j/s;
.field final synthetic a:Landroid/view/View;
.field final synthetic b:Lcom/bbm/ui/e/p;
.method constructor <init>(Lcom/bbm/ui/e/p;Landroid/view/View;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/e/r;->b:Lcom/bbm/ui/e/p;
iput-object p2, p0, Lcom/bbm/ui/e/r;->a:Landroid/view/View;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Z
.registers 3
iget-object v0, p0, Lcom/bbm/ui/e/r;->b:Lcom/bbm/ui/e/p;
iget-object v0, v0, Lcom/bbm/ui/e/p;->b:Lcom/bbm/ui/e/m;
invoke-static {v0}, Lcom/bbm/ui/e/m;->e(Lcom/bbm/ui/e/m;)Lcom/bbm/util/cr;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/CharSequence;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/bbm/ui/e/r;->b:Lcom/bbm/ui/e/p;
iget-object v1, p0, Lcom/bbm/ui/e/r;->a:Landroid/view/View;
invoke-static {v0}, Lcom/bbm/ui/e/p;->b(Lcom/bbm/ui/e/p;)V
const/4 v0, 0x1
:goto_1c
return v0
:cond_1d
const/4 v0, 0x0
goto :goto_1c
.end method