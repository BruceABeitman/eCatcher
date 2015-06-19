.class final Lcom/instagram/ui/widget/loadmore/a;
.super Ljava/lang/Object;
.source "LoadMoreButton.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/ui/widget/loadmore/LoadMoreButton;
.method constructor <init>(Lcom/instagram/ui/widget/loadmore/LoadMoreButton;)V
.registers 2
iput-object p1, p0, Lcom/instagram/ui/widget/loadmore/a;->a:Lcom/instagram/ui/widget/loadmore/LoadMoreButton;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/ui/widget/loadmore/a; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/ui/widget/loadmore/a;->a:Lcom/instagram/ui/widget/loadmore/LoadMoreButton;
iget-object v0, v0, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->a:Lcom/instagram/ui/widget/loadmore/c;
invoke-interface {v0}, Lcom/instagram/ui/widget/loadmore/c;->m_()V
iget-object v0, p0, Lcom/instagram/ui/widget/loadmore/a;->a:Lcom/instagram/ui/widget/loadmore/LoadMoreButton;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->setDisplayedChild(I)V
const-string v1, " - Lcom/instagram/ui/widget/loadmore/a; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method