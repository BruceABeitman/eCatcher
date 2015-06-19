.class  Lcom/twidroid/activity/MobileViewActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Landroid/widget/FrameLayout;
.field final synthetic b:Lcom/twidroid/activity/MobileViewActivity;
.method constructor <init>(Lcom/twidroid/activity/MobileViewActivity;Landroid/widget/FrameLayout;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/activity/MobileViewActivity$2;->b:Lcom/twidroid/activity/MobileViewActivity;
iput-object p2, p0, Lcom/twidroid/activity/MobileViewActivity$2;->a:Landroid/widget/FrameLayout;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/MobileViewActivity$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity$2;->a:Landroid/widget/FrameLayout;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V
const-string v1, " - Lcom/twidroid/activity/MobileViewActivity$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method