.class  Lcom/umeng/newxp/view/EmbededContainer$a$a;
.super Ljava/lang/Object;
.source "EmbededContainer.java"
.implements Landroid/widget/AbsListView$OnScrollListener;
.field final synthetic a:Lcom/umeng/newxp/view/EmbededContainer$a;
.field private b:Z
.method public constructor <init>(Lcom/umeng/newxp/view/EmbededContainer$a;Lcom/umeng/newxp/controller/ExchangeDataService;)V
.registers 4
iput-object p1, p0, Lcom/umeng/newxp/view/EmbededContainer$a$a;->a:Lcom/umeng/newxp/view/EmbededContainer$a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a$a;->b:Z
return-void
.end method
.method public onScroll(Landroid/widget/AbsListView;III)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/umeng/newxp/view/EmbededContainer$a$a; onScroll "
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
iput-boolean v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a$a;->b:Z
:goto_7
const-string v1, " - Lcom/umeng/newxp/view/EmbededContainer$a$a; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_8
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a$a;->b:Z
goto :goto_7
.end method
.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/umeng/newxp/view/EmbededContainer$a$a; onScrollStateChanged "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a$a;->b:Z
if-nez v0, :cond_6f
iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a$a;->a:Lcom/umeng/newxp/view/EmbededContainer$a;
invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->a(Lcom/umeng/newxp/view/EmbededContainer$a;)Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I
move-result v0
if-eqz v0, :cond_44
iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a$a;->a:Lcom/umeng/newxp/view/EmbededContainer$a;
invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->a(Lcom/umeng/newxp/view/EmbededContainer$a;)Landroid/widget/ImageView;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a$a;->a:Lcom/umeng/newxp/view/EmbededContainer$a;
invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->a(Lcom/umeng/newxp/view/EmbededContainer$a;)Landroid/widget/ImageView;
move-result-object v0
iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer$a$a;->a:Lcom/umeng/newxp/view/EmbededContainer$a;
invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;
move-result-object v1
invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer;->a(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/view/animation/Animation;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a$a;->a:Lcom/umeng/newxp/view/EmbededContainer$a;
invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->b(Lcom/umeng/newxp/view/EmbededContainer$a;)Landroid/widget/TextView;
move-result-object v0
iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer$a$a;->a:Lcom/umeng/newxp/view/EmbededContainer$a;
invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;
move-result-object v1
invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer;->b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/umeng/newxp/a/e;->g(Landroid/content/Context;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
:cond_44
iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a$a;->a:Lcom/umeng/newxp/view/EmbededContainer$a;
invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;
move-result-object v0
invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer;->c(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I
move-result v0
iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer$a$a;->a:Lcom/umeng/newxp/view/EmbededContainer$a;
invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;
move-result-object v1
invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer;->c(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I
move-result v1
sub-int/2addr v0, v1
invoke-static {v0}, Ljava/lang/Math;->abs(I)I
move-result v0
const/4 v1, 0x2
if-gt v0, v1, :cond_6f
if-nez p2, :cond_6f
iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a$a;->a:Lcom/umeng/newxp/view/EmbededContainer$a;
invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->c(Lcom/umeng/newxp/view/EmbededContainer$a;)V
:cond_6f
const-string v1, " - Lcom/umeng/newxp/view/EmbededContainer$a$a; onScrollStateChanged"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method