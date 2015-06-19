.class final Lcom/bbm/ui/activities/sj;
.super Ljava/lang/Object;
.source "GroupPictureShareActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/GroupPictureShareActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupPictureShareActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/sj;->a:Lcom/bbm/ui/activities/GroupPictureShareActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/sj; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "headerButtonActionBar Negative Button Clicked"
const-class v1, Lcom/bbm/ui/activities/GroupPictureShareActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/sj;->a:Lcom/bbm/ui/activities/GroupPictureShareActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupPictureShareActivity;->finish()V
const-string v1, " - Lcom/bbm/ui/activities/sj; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method