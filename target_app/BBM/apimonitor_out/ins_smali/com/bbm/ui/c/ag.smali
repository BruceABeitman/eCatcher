.class final Lcom/bbm/ui/c/ag;
.super Ljava/lang/Object;
.source "ChannelDetailsFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Landroid/view/View;
.field final synthetic b:Lcom/bbm/ui/c/l;
.method constructor <init>(Lcom/bbm/ui/c/l;Landroid/view/View;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/c/ag;->b:Lcom/bbm/ui/c/l;
iput-object p2, p0, Lcom/bbm/ui/c/ag;->a:Landroid/view/View;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/c/ag; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
const/16 v2, 0x8
iget-object v0, p0, Lcom/bbm/ui/c/ag;->a:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/ag;->b:Lcom/bbm/ui/c/l;
invoke-static {v0}, Lcom/bbm/ui/c/l;->i(Lcom/bbm/ui/c/l;)Landroid/view/View;
move-result-object v0
const v1, 0x7f0a05fb
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/ag;->b:Lcom/bbm/ui/c/l;
invoke-static {v0}, Lcom/bbm/ui/c/l;->i(Lcom/bbm/ui/c/l;)Landroid/view/View;
move-result-object v0
const v1, 0x7f0a05ff
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/ag;->b:Lcom/bbm/ui/c/l;
invoke-static {v0}, Lcom/bbm/ui/c/l;->i(Lcom/bbm/ui/c/l;)Landroid/view/View;
move-result-object v0
const v1, 0x7f0a0600
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/ag;->b:Lcom/bbm/ui/c/l;
invoke-static {v0}, Lcom/bbm/ui/c/l;->i(Lcom/bbm/ui/c/l;)Landroid/view/View;
move-result-object v0
const v1, 0x7f0a0604
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/ag;->b:Lcom/bbm/ui/c/l;
invoke-static {v0}, Lcom/bbm/ui/c/l;->i(Lcom/bbm/ui/c/l;)Landroid/view/View;
move-result-object v0
const v1, 0x7f0a0605
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/ag;->b:Lcom/bbm/ui/c/l;
invoke-static {v0}, Lcom/bbm/ui/c/l;->i(Lcom/bbm/ui/c/l;)Landroid/view/View;
move-result-object v0
const v1, 0x7f0a0366
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/ag;->b:Lcom/bbm/ui/c/l;
invoke-static {v0}, Lcom/bbm/ui/c/l;->i(Lcom/bbm/ui/c/l;)Landroid/view/View;
move-result-object v0
const v1, 0x7f0a05fd
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/ag;->b:Lcom/bbm/ui/c/l;
invoke-static {v0}, Lcom/bbm/ui/c/l;->i(Lcom/bbm/ui/c/l;)Landroid/view/View;
move-result-object v0
const v1, 0x7f0a05fe
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/ag;->b:Lcom/bbm/ui/c/l;
invoke-static {v0}, Lcom/bbm/ui/c/l;->i(Lcom/bbm/ui/c/l;)Landroid/view/View;
move-result-object v0
const v1, 0x7f0a0602
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/ag;->b:Lcom/bbm/ui/c/l;
invoke-static {v0}, Lcom/bbm/ui/c/l;->i(Lcom/bbm/ui/c/l;)Landroid/view/View;
move-result-object v0
const v1, 0x7f0a0603
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/ag;->b:Lcom/bbm/ui/c/l;
invoke-static {v0}, Lcom/bbm/ui/c/l;->i(Lcom/bbm/ui/c/l;)Landroid/view/View;
move-result-object v0
const v1, 0x7f0a0607
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/ag;->b:Lcom/bbm/ui/c/l;
invoke-static {v0}, Lcom/bbm/ui/c/l;->i(Lcom/bbm/ui/c/l;)Landroid/view/View;
move-result-object v0
const v1, 0x7f0a0608
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
const-string v1, " - Lcom/bbm/ui/c/ag; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method