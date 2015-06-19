.class public Lcom/pinguo/camera360/push/utils/PushURLSpan;
.super Landroid/text/style/ClickableSpan;
.source "PushURLSpan.java"
.field private context:Landroid/content/Context;
.field private mUrl:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V
iput-object p2, p0, Lcom/pinguo/camera360/push/utils/PushURLSpan;->mUrl:Ljava/lang/String;
iput-object p1, p0, Lcom/pinguo/camera360/push/utils/PushURLSpan;->context:Landroid/content/Context;
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/push/utils/PushURLSpan; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/pinguo/camera360/push/utils/PushURLSpan;->context:Landroid/content/Context;
const-class v2, Lcom/pinguo/camera360/push/business/web/PushWebActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/high16 v1, 0x2400
invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
const-string/jumbo v1, "url"
iget-object v2, p0, Lcom/pinguo/camera360/push/utils/PushURLSpan;->mUrl:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/pinguo/camera360/push/utils/PushURLSpan;->context:Landroid/content/Context;
invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
const-string v1, " - Lcom/pinguo/camera360/push/utils/PushURLSpan; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method