.class final Lcom/instagram/feed/widget/b;
.super Ljava/lang/Object;
.source "IgProgressImageView.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/feed/widget/a;
.method constructor <init>(Lcom/instagram/feed/widget/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/feed/widget/b;->a:Lcom/instagram/feed/widget/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/feed/widget/b; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/feed/widget/b;->a:Lcom/instagram/feed/widget/a;
invoke-static {v0}, Lcom/instagram/feed/widget/a;->a(Lcom/instagram/feed/widget/a;)Lcom/instagram/common/ui/widget/imageview/IgImageView;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->b()V
iget-object v0, p0, Lcom/instagram/feed/widget/b;->a:Lcom/instagram/feed/widget/a;
invoke-static {v0}, Lcom/instagram/feed/widget/a;->b(Lcom/instagram/feed/widget/a;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_3b
new-instance v0, Lcom/instagram/common/analytics/b;
const-string v1, "image_view_retry_click"
iget-object v2, p0, Lcom/instagram/feed/widget/b;->a:Lcom/instagram/feed/widget/a;
invoke-virtual {v2}, Lcom/instagram/feed/widget/a;->getContext()Landroid/content/Context;
move-result-object v2
invoke-static {v2}, Lcom/instagram/b/b/a;->a(Landroid/content/Context;)Lcom/instagram/common/analytics/e;
move-result-object v2
invoke-direct {v0, v1, v2}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V
const-string v1, "category"
iget-object v2, p0, Lcom/instagram/feed/widget/b;->a:Lcom/instagram/feed/widget/a;
invoke-static {v2}, Lcom/instagram/feed/widget/a;->b(Lcom/instagram/feed/widget/a;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v0
iget-object v1, p0, Lcom/instagram/feed/widget/b;->a:Lcom/instagram/feed/widget/a;
invoke-virtual {v1}, Lcom/instagram/feed/widget/a;->getContext()Landroid/content/Context;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/b/b/a;->a(Lcom/instagram/common/analytics/b;Landroid/content/Context;)Lcom/instagram/common/analytics/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V
:cond_3b
const-string v1, " - Lcom/instagram/feed/widget/b; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method