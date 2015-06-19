.class public Lcom/twidroid/c/ac;
.super Landroid/app/Dialog;
.source "SourceFile"
.field  a:Ljava/lang/String;
.field  b:Landroid/content/Context;
.field  c:Lcom/twidroid/net/c/a/f;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/twidroid/net/c/a/f;)V
.registers 4
invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V
iput-object p2, p0, Lcom/twidroid/c/ac;->a:Ljava/lang/String;
iput-object p1, p0, Lcom/twidroid/c/ac;->b:Landroid/content/Context;
iput-object p3, p0, Lcom/twidroid/c/ac;->c:Lcom/twidroid/net/c/a/f;
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/twidroid/c/ac; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030036
invoke-virtual {p0, v0}, Lcom/twidroid/c/ac;->setContentView(I)V
invoke-virtual {p0}, Lcom/twidroid/c/ac;->getContext()Landroid/content/Context;
move-result-object v0
const v1, 0x7f0c0111
invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/c/ac;->setTitle(Ljava/lang/CharSequence;)V
const-string v1, " - Lcom/twidroid/c/ac; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStart()V
.registers 6
const-string v1, " + Lcom/twidroid/c/ac; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x0
const v0, 0x7f0900a1
invoke-virtual {p0, v0}, Lcom/twidroid/c/ac;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
new-instance v1, Lcom/twidroid/c/ac$1;
invoke-direct {v1, p0}, Lcom/twidroid/c/ac$1;-><init>(Lcom/twidroid/c/ac;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v1, 0x7f0900a6
invoke-virtual {p0, v1}, Lcom/twidroid/c/ac;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/Button;
new-instance v2, Lcom/twidroid/c/ac$2;
invoke-direct {v2, p0}, Lcom/twidroid/c/ac$2;-><init>(Lcom/twidroid/c/ac;)V
invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v2, 0x7f09009b
invoke-virtual {p0, v2}, Lcom/twidroid/c/ac;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/Button;
new-instance v3, Lcom/twidroid/c/ac$3;
invoke-direct {v3, p0}, Lcom/twidroid/c/ac$3;-><init>(Lcom/twidroid/c/ac;)V
invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V
invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V
invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V
const-string v1, " - Lcom/twidroid/c/ac; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method