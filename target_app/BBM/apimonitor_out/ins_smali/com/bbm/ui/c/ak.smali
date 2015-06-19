.class final Lcom/bbm/ui/c/ak;
.super Lcom/bbm/j/k;
.source "ChannelPostPreviewFragment.java"
.field final synthetic a:Lcom/bbm/ui/c/aj;
.method constructor <init>(Lcom/bbm/ui/c/aj;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/c/ak;->a:Lcom/bbm/ui/c/aj;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 5
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/ui/c/ak;->a:Lcom/bbm/ui/c/aj;
invoke-static {v0}, Lcom/bbm/ui/c/aj;->a(Lcom/bbm/ui/c/aj;)Lcom/bbm/j/x;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/x;->d()Z
move-result v0
if-eqz v0, :cond_45
iget-object v0, p0, Lcom/bbm/ui/c/ak;->a:Lcom/bbm/ui/c/aj;
invoke-static {v0}, Lcom/bbm/ui/c/aj;->a(Lcom/bbm/ui/c/aj;)Lcom/bbm/j/x;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/x;->e()Ljava/lang/String;
move-result-object v0
const-string v2, "ChannelNotFound"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_31
iget-object v0, p0, Lcom/bbm/ui/c/ak;->a:Lcom/bbm/ui/c/aj;
invoke-static {v0}, Lcom/bbm/ui/c/aj;->a(Lcom/bbm/ui/c/aj;)Lcom/bbm/j/x;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/x;->e()Ljava/lang/String;
move-result-object v0
const-string v2, "GeneralFailure"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_45
:cond_31
const/4 v0, 0x1
:goto_32
iget-object v2, p0, Lcom/bbm/ui/c/ak;->a:Lcom/bbm/ui/c/aj;
invoke-static {v2}, Lcom/bbm/ui/c/aj;->b(Lcom/bbm/ui/c/aj;)Landroid/view/View;
move-result-object v2
const v3, 0x7f0a0375
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
if-eqz v0, :cond_47
:goto_41
invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V
return-void
:cond_45
move v0, v1
goto :goto_32
:cond_47
const/16 v1, 0x8
goto :goto_41
.end method