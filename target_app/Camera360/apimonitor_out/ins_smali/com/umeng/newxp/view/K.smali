.class  Lcom/umeng/newxp/view/K;
.super Ljava/lang/Object;
.source "ExchangeViewManager.java"
.implements Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;
.field final synthetic a:Lcom/umeng/newxp/view/ExchangeViewManager;
.method constructor <init>(Lcom/umeng/newxp/view/ExchangeViewManager;)V
.registers 2
iput-object p1, p0, Lcom/umeng/newxp/view/K;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onChanged(I)V
.registers 5
if-nez p1, :cond_3b
:try_start_2
iget-object v0, p0, Lcom/umeng/newxp/view/K;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
invoke-static {v0}, Lcom/umeng/newxp/view/ExchangeViewManager;->f(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/umeng/newxp/view/K;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
invoke-static {v0}, Lcom/umeng/newxp/view/ExchangeViewManager;->g(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/widget/ImageView;
move-result-object v0
iget-object v1, p0, Lcom/umeng/newxp/view/K;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
iget-object v1, v1, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;
invoke-static {v1}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;
move-result-object v1
const-string/jumbo v2, "umeng_xp_new_tip"
invoke-virtual {v1, v2}, Lcom/umeng/common/c;->c(Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, p0, Lcom/umeng/newxp/view/K;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
invoke-static {v0}, Lcom/umeng/newxp/view/ExchangeViewManager;->h(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/widget/TextView;
move-result-object v0
const-string/jumbo v1, ""
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/umeng/newxp/view/K;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
invoke-static {v0}, Lcom/umeng/newxp/view/ExchangeViewManager;->h(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/widget/TextView;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
:goto_3a
return-void
:cond_3b
if-lez p1, :cond_8e
iget-object v0, p0, Lcom/umeng/newxp/view/K;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
invoke-static {v0}, Lcom/umeng/newxp/view/ExchangeViewManager;->g(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/widget/ImageView;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/umeng/newxp/view/K;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
invoke-static {v0}, Lcom/umeng/newxp/view/ExchangeViewManager;->h(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/widget/TextView;
move-result-object v0
iget-object v1, p0, Lcom/umeng/newxp/view/K;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
iget-object v1, v1, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;
invoke-static {v1}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;
move-result-object v1
const-string/jumbo v2, "umeng_xp_new_tip_bg"
invoke-virtual {v1, v2}, Lcom/umeng/common/c;->c(Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V
iget-object v0, p0, Lcom/umeng/newxp/view/K;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
invoke-static {v0}, Lcom/umeng/newxp/view/ExchangeViewManager;->h(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/widget/TextView;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/umeng/newxp/view/K;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
invoke-static {v0}, Lcom/umeng/newxp/view/ExchangeViewManager;->f(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:try_end_7f
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7f} :catch_80
goto :goto_3a
:catch_80
move-exception v0
iget-object v1, p0, Lcom/umeng/newxp/view/K;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
invoke-static {v1}, Lcom/umeng/newxp/view/ExchangeViewManager;->d(Lcom/umeng/newxp/view/ExchangeViewManager;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, ""
invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
goto :goto_3a
:try_start_8e
:cond_8e
iget-object v0, p0, Lcom/umeng/newxp/view/K;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
invoke-static {v0}, Lcom/umeng/newxp/view/ExchangeViewManager;->f(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/view/View;
move-result-object v0
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:try_end_98
.catch Ljava/lang/Exception; {:try_start_8e .. :try_end_98} :catch_80
goto :goto_3a
.end method