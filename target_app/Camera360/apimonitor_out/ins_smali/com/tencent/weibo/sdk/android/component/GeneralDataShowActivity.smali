.class public Lcom/tencent/weibo/sdk/android/component/GeneralDataShowActivity;
.super Landroid/app/Activity;
.source "GeneralDataShowActivity.java"
.field private tv:Landroid/widget/TextView;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 7
const-string v1, " + Lcom/tencent/weibo/sdk/android/component/GeneralDataShowActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
new-instance v3, Landroid/widget/TextView;
invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
iput-object v3, p0, Lcom/tencent/weibo/sdk/android/component/GeneralDataShowActivity;->tv:Landroid/widget/TextView;
invoke-virtual {p0}, Lcom/tencent/weibo/sdk/android/component/GeneralDataShowActivity;->getIntent()Landroid/content/Intent;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
const-string/jumbo v3, "data"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/GeneralDataShowActivity;->tv:Landroid/widget/TextView;
invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/GeneralDataShowActivity;->tv:Landroid/widget/TextView;
invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;
move-result-object v4
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/GeneralDataShowActivity;->tv:Landroid/widget/TextView;
invoke-virtual {p0, v3}, Lcom/tencent/weibo/sdk/android/component/GeneralDataShowActivity;->setContentView(Landroid/view/View;)V
const-string v1, " - Lcom/tencent/weibo/sdk/android/component/GeneralDataShowActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method