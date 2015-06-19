.class public LvStudio/Android/Camera360/wxapi/WXPayEntryActivity;
.super Landroid/app/Activity;
.source "WXPayEntryActivity.java"
.implements Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;
.field private static final TAG:Ljava/lang/String;
.field private api:Lcom/tencent/mm/sdk/openapi/IWXAPI;
.method static constructor <clinit>()V
.registers 1
const-class v0, LvStudio/Android/Camera360/wxapi/WXPayEntryActivity;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, LvStudio/Android/Camera360/wxapi/WXPayEntryActivity;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + LvStudio/Android/Camera360/wxapi/WXPayEntryActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
sget-object v0, LvStudio/Android/Camera360/wxapi/WXConstants;->APP_ID:Ljava/lang/String;
invoke-static {p0, v0}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;
move-result-object v0
iput-object v0, p0, LvStudio/Android/Camera360/wxapi/WXPayEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;
iget-object v0, p0, LvStudio/Android/Camera360/wxapi/WXPayEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;
invoke-virtual {p0}, LvStudio/Android/Camera360/wxapi/WXPayEntryActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
invoke-interface {v0, v1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z
const-string v1, " - LvStudio/Android/Camera360/wxapi/WXPayEntryActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onNewIntent(Landroid/content/Intent;)V
.registers 3
invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V
invoke-virtual {p0, p1}, LvStudio/Android/Camera360/wxapi/WXPayEntryActivity;->setIntent(Landroid/content/Intent;)V
iget-object v0, p0, LvStudio/Android/Camera360/wxapi/WXPayEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;
invoke-interface {v0, p1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z
return-void
.end method
.method public onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V
.registers 2
return-void
.end method
.method public onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
.registers 6
sget-object v1, LvStudio/Android/Camera360/wxapi/WXPayEntryActivity;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "onPayFinish, errCode = "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v3, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseResp;->getType()I
move-result v1
const/4 v2, 0x5
if-ne v1, v2, :cond_3f
const-string/jumbo v0, ""
iget v1, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I
if-nez v1, :cond_2e
instance-of v1, p1, Lcom/tencent/mm/sdk/modelpay/PayResp;
if-eqz v1, :cond_2e
move-object v1, p1
check-cast v1, Lcom/tencent/mm/sdk/modelpay/PayResp;
iget-object v0, v1, Lcom/tencent/mm/sdk/modelpay/PayResp;->extData:Ljava/lang/String;
:cond_2e
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v1
new-instance v2, Lcom/pinguo/camera360/order/event/WXPayResultEvent;
iget v3, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I
invoke-direct {v2, v3, v0}, Lcom/pinguo/camera360/order/event/WXPayResultEvent;-><init>(ILjava/lang/String;)V
invoke-virtual {v1, v2}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
invoke-virtual {p0}, LvStudio/Android/Camera360/wxapi/WXPayEntryActivity;->finish()V
:cond_3f
return-void
.end method