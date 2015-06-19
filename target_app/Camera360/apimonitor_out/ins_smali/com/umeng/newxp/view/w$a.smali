.class public Lcom/umeng/newxp/view/w$a;
.super Ljava/lang/Object;
.source "EncapsulatedList.java"
.implements Landroid/widget/AbsListView$OnScrollListener;
.field final synthetic a:Lcom/umeng/newxp/view/w;
.field private b:Z
.method public constructor <init>(Lcom/umeng/newxp/view/w;)V
.registers 3
iput-object p1, p0, Lcom/umeng/newxp/view/w$a;->a:Lcom/umeng/newxp/view/w;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/umeng/newxp/view/w$a;->b:Z
return-void
.end method
.method public onScroll(Landroid/widget/AbsListView;III)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/umeng/newxp/view/w$a; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
if-nez p2, :cond_8
if-ne p3, p4, :cond_8
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/umeng/newxp/view/w$a;->b:Z
:goto_7
const-string v1, " - Lcom/umeng/newxp/view/w$a; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_8
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/umeng/newxp/view/w$a;->b:Z
goto :goto_7
.end method
.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/umeng/newxp/view/w$a; onScrollStateChanged "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
iget-boolean v0, p0, Lcom/umeng/newxp/view/w$a;->b:Z
if-nez v0, :cond_66
iget-object v0, p0, Lcom/umeng/newxp/view/w$a;->a:Lcom/umeng/newxp/view/w;
invoke-static {v0}, Lcom/umeng/newxp/view/w;->a(Lcom/umeng/newxp/view/w;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v0
if-eqz v0, :cond_3b
iget-object v0, p0, Lcom/umeng/newxp/view/w$a;->a:Lcom/umeng/newxp/view/w;
invoke-static {v0}, Lcom/umeng/newxp/view/w;->b(Lcom/umeng/newxp/view/w;)Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/umeng/newxp/view/w$a;->a:Lcom/umeng/newxp/view/w;
invoke-static {v0}, Lcom/umeng/newxp/view/w;->b(Lcom/umeng/newxp/view/w;)Landroid/widget/ImageView;
move-result-object v0
iget-object v1, p0, Lcom/umeng/newxp/view/w$a;->a:Lcom/umeng/newxp/view/w;
invoke-static {v1}, Lcom/umeng/newxp/view/w;->c(Lcom/umeng/newxp/view/w;)Landroid/view/animation/Animation;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
iget-object v0, p0, Lcom/umeng/newxp/view/w$a;->a:Lcom/umeng/newxp/view/w;
invoke-static {v0}, Lcom/umeng/newxp/view/w;->a(Lcom/umeng/newxp/view/w;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/umeng/newxp/view/w$a;->a:Lcom/umeng/newxp/view/w;
invoke-static {v0}, Lcom/umeng/newxp/view/w;->a(Lcom/umeng/newxp/view/w;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V
:cond_3b
iget-object v0, p0, Lcom/umeng/newxp/view/w$a;->a:Lcom/umeng/newxp/view/w;
invoke-static {v0}, Lcom/umeng/newxp/view/w;->d(Lcom/umeng/newxp/view/w;)Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I
move-result v0
iget-object v1, p0, Lcom/umeng/newxp/view/w$a;->a:Lcom/umeng/newxp/view/w;
invoke-static {v1}, Lcom/umeng/newxp/view/w;->d(Lcom/umeng/newxp/view/w;)Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I
move-result v1
sub-int/2addr v0, v1
invoke-static {v0}, Ljava/lang/Math;->abs(I)I
move-result v0
const/4 v1, 0x2
if-gt v0, v1, :cond_66
if-nez p2, :cond_66
sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;
const-string/jumbo v1, "requesting next page..."
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/umeng/newxp/view/w$a;->a:Lcom/umeng/newxp/view/w;
invoke-virtual {v0}, Lcom/umeng/newxp/view/w;->a()V
:cond_66
const-string v1, " - Lcom/umeng/newxp/view/w$a; onScrollStateChanged"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method