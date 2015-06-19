.class public final Lcom/bbm/ui/views/d;
.super Ljava/lang/Object;
.source "ChannelFeaturedPostsView.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/views/a;
.method public constructor <init>(Lcom/bbm/ui/views/a;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/views/d;->a:Lcom/bbm/ui/views/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/views/d;Landroid/view/View;Lcom/bbm/d/ec;)V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/views/d;->a:Lcom/bbm/ui/views/a;
invoke-static {v0}, Lcom/bbm/ui/views/a;->i(Lcom/bbm/ui/views/a;)Landroid/app/Activity;
move-result-object v0
check-cast p1, Landroid/widget/ImageView;
invoke-static {p2, v0, p1}, Lcom/bbm/util/s;->a(Lcom/bbm/d/ec;Landroid/app/Activity;Landroid/widget/ImageView;)V
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/views/d;Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/views/d;->a:Lcom/bbm/ui/views/a;
invoke-static {v0}, Lcom/bbm/ui/views/a;->h(Lcom/bbm/ui/views/a;)Landroid/content/Context;
move-result-object v0
invoke-static {v0, p1}, Lcom/bbm/util/ac;->a(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/views/d; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/views/d;->a:Lcom/bbm/ui/views/a;
invoke-static {v0}, Lcom/bbm/ui/views/a;->g(Lcom/bbm/ui/views/a;)Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I
move-result v0
new-instance v1, Lcom/bbm/ui/views/e;
invoke-direct {v1, p0, v0, p1}, Lcom/bbm/ui/views/e;-><init>(Lcom/bbm/ui/views/d;ILandroid/view/View;)V
invoke-static {v1}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V
const-string v1, " - Lcom/bbm/ui/views/d; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method