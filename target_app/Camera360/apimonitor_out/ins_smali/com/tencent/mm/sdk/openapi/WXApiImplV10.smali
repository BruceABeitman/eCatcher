.class final Lcom/tencent/mm/sdk/openapi/WXApiImplV10;
.super Ljava/lang/Object;
.implements Lcom/tencent/mm/sdk/openapi/IWXAPI;
.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.WXApiImplV10"
.field private static wxappPayEntryClassname:Ljava/lang/String;
.field private appId:Ljava/lang/String;
.field private checkSignature:Z
.field private context:Landroid/content/Context;
.field private detached:Z
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->wxappPayEntryClassname:Ljava/lang/String;
return-void
.end method
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
.registers 7
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->checkSignature:Z
iput-boolean v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->detached:Z
const-string/jumbo v0, "MicroMsg.SDK.WXApiImplV10"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "<init>, appId = "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ", checkSignature = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/tencent/mm/sdk/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V
iput-object p1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;
iput-object p2, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;
iput-boolean p3, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->checkSignature:Z
return-void
.end method
.method private checkSumConsistent([B[B)Z
.registers 7
const/4 v1, 0x0
if-eqz p1, :cond_b
array-length v0, p1
if-eqz v0, :cond_b
if-eqz p2, :cond_b
array-length v0, p2
if-nez v0, :cond_15
:cond_b
const-string/jumbo v0, "MicroMsg.SDK.WXApiImplV10"
const-string/jumbo v2, "checkSumConsistent fail, invalid arguments"
invoke-static {v0, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_14
:goto_14
return v1
:cond_15
array-length v0, p1
array-length v2, p2
if-eq v0, v2, :cond_23
const-string/jumbo v0, "MicroMsg.SDK.WXApiImplV10"
const-string/jumbo v2, "checkSumConsistent fail, length is different"
invoke-static {v0, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_14
:cond_23
move v0, v1
:goto_24
array-length v2, p1
if-ge v0, v2, :cond_30
aget-byte v2, p1, v0
aget-byte v3, p2, v0
if-ne v2, v3, :cond_14
add-int/lit8 v0, v0, 0x1
goto :goto_24
:cond_30
const/4 v1, 0x1
goto :goto_14
.end method
.method private sendPayReq(Landroid/content/Context;Landroid/os/Bundle;)Z
.registers 6
sget-object v0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->wxappPayEntryClassname:Ljava/lang/String;
if-nez v0, :cond_3a
new-instance v0, Lcom/tencent/mm/sdk/a;
invoke-direct {v0, p1}, Lcom/tencent/mm/sdk/a;-><init>(Landroid/content/Context;)V
const-string/jumbo v1, "_wxapp_pay_entry_classname_"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/sdk/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->wxappPayEntryClassname:Ljava/lang/String;
const-string/jumbo v0, "MicroMsg.SDK.WXApiImplV10"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "pay, set wxappPayEntryClassname = "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v2, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->wxappPayEntryClassname:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/tencent/mm/sdk/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V
sget-object v0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->wxappPayEntryClassname:Ljava/lang/String;
if-nez v0, :cond_3a
const-string/jumbo v0, "MicroMsg.SDK.WXApiImplV10"
const-string/jumbo v1, "pay fail, wxappPayEntryClassname is null"
invoke-static {v0, v1}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
:goto_39
return v0
:cond_3a
new-instance v0, Lcom/tencent/mm/sdk/a/a$a;
invoke-direct {v0}, Lcom/tencent/mm/sdk/a/a$a;-><init>()V
iput-object p2, v0, Lcom/tencent/mm/sdk/a/a$a;->k:Landroid/os/Bundle;
const-string/jumbo v1, "com.tencent.mm"
iput-object v1, v0, Lcom/tencent/mm/sdk/a/a$a;->h:Ljava/lang/String;
sget-object v1, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->wxappPayEntryClassname:Ljava/lang/String;
iput-object v1, v0, Lcom/tencent/mm/sdk/a/a$a;->i:Ljava/lang/String;
invoke-static {p1, v0}, Lcom/tencent/mm/sdk/a/a;->a(Landroid/content/Context;Lcom/tencent/mm/sdk/a/a$a;)Z
move-result v0
goto :goto_39
.end method
.method public final detach()V
.registers 3
const-string/jumbo v0, "MicroMsg.SDK.WXApiImplV10"
const-string/jumbo v1, "detach"
invoke-static {v0, v1}, Lcom/tencent/mm/sdk/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->detached:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;
return-void
.end method
.method public final getWXAppSupportAPI()I
.registers 4
const/4 v0, 0x0
iget-boolean v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->detached:Z
if-eqz v1, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string/jumbo v1, "getWXAppSupportAPI fail, WXMsgImpl has been detached"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
invoke-virtual {p0}, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->isWXAppInstalled()Z
move-result v1
if-nez v1, :cond_1e
const-string/jumbo v1, "MicroMsg.SDK.WXApiImplV10"
const-string/jumbo v2, "open wx app failed, not installed or signature check failed"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_1d
return v0
:cond_1e
new-instance v1, Lcom/tencent/mm/sdk/a;
iget-object v2, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;
invoke-direct {v1, v2}, Lcom/tencent/mm/sdk/a;-><init>(Landroid/content/Context;)V
const-string/jumbo v2, "_build_info_sdk_int_"
invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/sdk/a;->getInt(Ljava/lang/String;I)I
move-result v0
goto :goto_1d
.end method
.method public final handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z
.registers 9
const/4 v1, 0x1
const/4 v0, 0x0
const-string/jumbo v2, "com.tencent.mm.openapi.token"
invoke-static {p1, v2}, Lcom/tencent/mm/sdk/openapi/WXApiImplComm;->isIntentFromWx(Landroid/content/Intent;Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_15
const-string/jumbo v1, "MicroMsg.SDK.WXApiImplV10"
const-string/jumbo v2, "handleIntent fail, intent not from weixin msg"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V
:goto_14
return v0
:cond_15
iget-boolean v2, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->detached:Z
if-eqz v2, :cond_22
new-instance v0, Ljava/lang/IllegalStateException;
const-string/jumbo v1, "handleIntent fail, WXMsgImpl has been detached"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_22
const-string/jumbo v2, "_mmessage_content"
invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "_mmessage_sdkVersion"
invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v3
const-string/jumbo v4, "_mmessage_appPackage"
invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
if-eqz v4, :cond_3f
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v5
if-nez v5, :cond_49
:cond_3f
const-string/jumbo v1, "MicroMsg.SDK.WXApiImplV10"
const-string/jumbo v2, "invalid argument"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_14
:cond_49
const-string/jumbo v5, "_mmessage_checksum"
invoke-virtual {p1, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B
move-result-object v5
invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/a/a/b;->a(Ljava/lang/String;ILjava/lang/String;)[B
move-result-object v2
invoke-direct {p0, v5, v2}, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->checkSumConsistent([B[B)Z
move-result v2
if-nez v2, :cond_64
const-string/jumbo v1, "MicroMsg.SDK.WXApiImplV10"
const-string/jumbo v2, "checksum fail"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_14
:cond_64
const-string/jumbo v2, "_wxapi_command_type"
invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v2
packed-switch v2, :pswitch_data_de
const-string/jumbo v1, "MicroMsg.SDK.WXApiImplV10"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "unknown cmd = "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_14
:pswitch_85
new-instance v0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;
invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v2
invoke-direct {v0, v2}, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;-><init>(Landroid/os/Bundle;)V
invoke-interface {p2, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;->onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
move v0, v1
goto :goto_14
:pswitch_93
new-instance v0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Resp;
invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v2
invoke-direct {v0, v2}, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Resp;-><init>(Landroid/os/Bundle;)V
invoke-interface {p2, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;->onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
move v0, v1
goto/16 :goto_14
:pswitch_a2
new-instance v0, Lcom/tencent/mm/sdk/modelmsg/GetMessageFromWX$Req;
invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v2
invoke-direct {v0, v2}, Lcom/tencent/mm/sdk/modelmsg/GetMessageFromWX$Req;-><init>(Landroid/os/Bundle;)V
invoke-interface {p2, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;->onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V
move v0, v1
goto/16 :goto_14
:pswitch_b1
new-instance v0, Lcom/tencent/mm/sdk/modelmsg/ShowMessageFromWX$Req;
invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v2
invoke-direct {v0, v2}, Lcom/tencent/mm/sdk/modelmsg/ShowMessageFromWX$Req;-><init>(Landroid/os/Bundle;)V
invoke-interface {p2, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;->onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V
move v0, v1
goto/16 :goto_14
:pswitch_c0
new-instance v0, Lcom/tencent/mm/sdk/modelpay/PayResp;
invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v2
invoke-direct {v0, v2}, Lcom/tencent/mm/sdk/modelpay/PayResp;-><init>(Landroid/os/Bundle;)V
invoke-interface {p2, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;->onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
move v0, v1
goto/16 :goto_14
:pswitch_cf
new-instance v0, Lcom/tencent/mm/sdk/modelmsg/LaunchFromWX$Req;
invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v2
invoke-direct {v0, v2}, Lcom/tencent/mm/sdk/modelmsg/LaunchFromWX$Req;-><init>(Landroid/os/Bundle;)V
invoke-interface {p2, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;->onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V
move v0, v1
goto/16 :goto_14
:pswitch_data_de
.packed-switch 0x1
:pswitch_85
:pswitch_93
:pswitch_a2
:pswitch_b1
:pswitch_c0
:pswitch_cf
.end packed-switch
.end method
.method public final isWXAppInstalled()Z
.registers 5
const/4 v0, 0x0
iget-boolean v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->detached:Z
if-eqz v1, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string/jumbo v1, "isWXAppInstalled fail, WXMsgImpl has been detached"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
:try_start_e
iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
const-string/jumbo v2, "com.tencent.mm"
const/16 v3, 0x40
invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v1
if-nez v1, :cond_20
:goto_1f
return v0
:cond_20
iget-object v2, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;
iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
iget-boolean v3, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->checkSignature:Z
invoke-static {v2, v1, v3}, Lcom/tencent/mm/sdk/openapi/WXApiImplComm;->validateAppSignature(Landroid/content/Context;[Landroid/content/pm/Signature;Z)Z
:try_end_29
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_29} :catch_2b
move-result v0
goto :goto_1f
:catch_2b
move-exception v1
goto :goto_1f
.end method
.method public final isWXAppSupportAPI()Z
.registers 3
iget-boolean v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->detached:Z
if-eqz v0, :cond_d
new-instance v0, Ljava/lang/IllegalStateException;
const-string/jumbo v1, "isWXAppSupportAPI fail, WXMsgImpl has been detached"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
invoke-virtual {p0}, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->getWXAppSupportAPI()I
move-result v0
const v1, 0x22000001
if-lt v0, v1, :cond_18
const/4 v0, 0x1
:goto_17
return v0
:cond_18
const/4 v0, 0x0
goto :goto_17
.end method
.method public final openWXApp()Z
.registers 6
const/4 v0, 0x0
iget-boolean v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->detached:Z
if-eqz v1, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string/jumbo v1, "openWXApp fail, WXMsgImpl has been detached"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
invoke-virtual {p0}, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->isWXAppInstalled()Z
move-result v1
if-nez v1, :cond_1e
const-string/jumbo v1, "MicroMsg.SDK.WXApiImplV10"
const-string/jumbo v2, "open wx app failed, not installed or signature check failed"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_1d
return v0
:try_start_1e
:cond_1e
iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;
iget-object v2, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v2
const-string/jumbo v3, "com.tencent.mm"
invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:try_end_30
.catch Ljava/lang/Exception; {:try_start_1e .. :try_end_30} :catch_32
const/4 v0, 0x1
goto :goto_1d
:catch_32
move-exception v1
const-string/jumbo v2, "MicroMsg.SDK.WXApiImplV10"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "startActivity fail, exception = "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v2, v1}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1d
.end method
.method public final registerApp(Ljava/lang/String;)Z
.registers 5
iget-boolean v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->detached:Z
if-eqz v0, :cond_d
new-instance v0, Ljava/lang/IllegalStateException;
const-string/jumbo v1, "registerApp fail, WXMsgImpl has been detached"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iget-object v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;
const-string/jumbo v1, "com.tencent.mm"
iget-boolean v2, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->checkSignature:Z
invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/openapi/WXApiImplComm;->validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;Z)Z
move-result v0
if-nez v0, :cond_25
const-string/jumbo v0, "MicroMsg.SDK.WXApiImplV10"
const-string/jumbo v1, "register app failed for wechat app signature check failed"
invoke-static {v0, v1}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
:goto_24
return v0
:cond_25
const-string/jumbo v0, "MicroMsg.SDK.WXApiImplV10"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "registerApp, appId = "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/tencent/mm/sdk/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V
if-eqz p1, :cond_3f
iput-object p1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;
:cond_3f
const-string/jumbo v0, "MicroMsg.SDK.WXApiImplV10"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "register app "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/tencent/mm/sdk/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/tencent/mm/sdk/a/a/a$a;
invoke-direct {v0}, Lcom/tencent/mm/sdk/a/a/a$a;-><init>()V
const-string/jumbo v1, "com.tencent.mm"
iput-object v1, v0, Lcom/tencent/mm/sdk/a/a/a$a;->l:Ljava/lang/String;
const-string/jumbo v1, "com.tencent.mm.plugin.openapi.Intent.ACTION_HANDLE_APP_REGISTER"
iput-object v1, v0, Lcom/tencent/mm/sdk/a/a/a$a;->m:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "weixin://registerapp?appid="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/tencent/mm/sdk/a/a/a$a;->j:Ljava/lang/String;
iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;
invoke-static {v1, v0}, Lcom/tencent/mm/sdk/a/a/a;->a(Landroid/content/Context;Lcom/tencent/mm/sdk/a/a/a$a;)Z
move-result v0
goto :goto_24
.end method
.method public final sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z
.registers 6
const/4 v0, 0x0
iget-boolean v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->detached:Z
if-eqz v1, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string/jumbo v1, "sendReq fail, WXMsgImpl has been detached"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;
const-string/jumbo v2, "com.tencent.mm"
iget-boolean v3, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->checkSignature:Z
invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/openapi/WXApiImplComm;->validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;Z)Z
move-result v1
if-nez v1, :cond_25
const-string/jumbo v1, "MicroMsg.SDK.WXApiImplV10"
const-string/jumbo v2, "sendReq failed for wechat app signature check failed"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_24
return v0
:cond_25
invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseReq;->checkArgs()Z
move-result v1
if-nez v1, :cond_35
const-string/jumbo v1, "MicroMsg.SDK.WXApiImplV10"
const-string/jumbo v2, "sendReq checkArgs fail"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_24
:cond_35
const-string/jumbo v0, "MicroMsg.SDK.WXApiImplV10"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "sendReq, req type = "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseReq;->getType()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/tencent/mm/sdk/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
invoke-virtual {p1, v0}, Lcom/tencent/mm/sdk/modelbase/BaseReq;->toBundle(Landroid/os/Bundle;)V
invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseReq;->getType()I
move-result v1
const/4 v2, 0x5
if-ne v1, v2, :cond_65
iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;
invoke-direct {p0, v1, v0}, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->sendPayReq(Landroid/content/Context;Landroid/os/Bundle;)Z
move-result v0
goto :goto_24
:cond_65
new-instance v1, Lcom/tencent/mm/sdk/a/a$a;
invoke-direct {v1}, Lcom/tencent/mm/sdk/a/a$a;-><init>()V
iput-object v0, v1, Lcom/tencent/mm/sdk/a/a$a;->k:Landroid/os/Bundle;
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v2, "weixin://sendreq?appid="
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, v1, Lcom/tencent/mm/sdk/a/a$a;->j:Ljava/lang/String;
const-string/jumbo v0, "com.tencent.mm"
iput-object v0, v1, Lcom/tencent/mm/sdk/a/a$a;->h:Ljava/lang/String;
const-string/jumbo v0, "com.tencent.mm.plugin.base.stub.WXEntryActivity"
iput-object v0, v1, Lcom/tencent/mm/sdk/a/a$a;->i:Ljava/lang/String;
iget-object v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;
invoke-static {v0, v1}, Lcom/tencent/mm/sdk/a/a;->a(Landroid/content/Context;Lcom/tencent/mm/sdk/a/a$a;)Z
move-result v0
goto :goto_24
.end method
.method public final sendResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)Z
.registers 6
const/4 v0, 0x0
iget-boolean v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->detached:Z
if-eqz v1, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string/jumbo v1, "sendResp fail, WXMsgImpl has been detached"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;
const-string/jumbo v2, "com.tencent.mm"
iget-boolean v3, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->checkSignature:Z
invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/openapi/WXApiImplComm;->validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;Z)Z
move-result v1
if-nez v1, :cond_25
const-string/jumbo v1, "MicroMsg.SDK.WXApiImplV10"
const-string/jumbo v2, "sendResp failed for wechat app signature check failed"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_24
return v0
:cond_25
invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseResp;->checkArgs()Z
move-result v1
if-nez v1, :cond_35
const-string/jumbo v1, "MicroMsg.SDK.WXApiImplV10"
const-string/jumbo v2, "sendResp checkArgs fail"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_24
:cond_35
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
invoke-virtual {p1, v0}, Lcom/tencent/mm/sdk/modelbase/BaseResp;->toBundle(Landroid/os/Bundle;)V
new-instance v1, Lcom/tencent/mm/sdk/a/a$a;
invoke-direct {v1}, Lcom/tencent/mm/sdk/a/a$a;-><init>()V
iput-object v0, v1, Lcom/tencent/mm/sdk/a/a$a;->k:Landroid/os/Bundle;
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v2, "weixin://sendresp?appid="
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, v1, Lcom/tencent/mm/sdk/a/a$a;->j:Ljava/lang/String;
const-string/jumbo v0, "com.tencent.mm"
iput-object v0, v1, Lcom/tencent/mm/sdk/a/a$a;->h:Ljava/lang/String;
const-string/jumbo v0, "com.tencent.mm.plugin.base.stub.WXEntryActivity"
iput-object v0, v1, Lcom/tencent/mm/sdk/a/a$a;->i:Ljava/lang/String;
iget-object v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;
invoke-static {v0, v1}, Lcom/tencent/mm/sdk/a/a;->a(Landroid/content/Context;Lcom/tencent/mm/sdk/a/a$a;)Z
move-result v0
goto :goto_24
.end method
.method public final unregisterApp()V
.registers 4
iget-boolean v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->detached:Z
if-eqz v0, :cond_d
new-instance v0, Ljava/lang/IllegalStateException;
const-string/jumbo v1, "unregisterApp fail, WXMsgImpl has been detached"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iget-object v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;
const-string/jumbo v1, "com.tencent.mm"
iget-boolean v2, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->checkSignature:Z
invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/openapi/WXApiImplComm;->validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;Z)Z
move-result v0
if-nez v0, :cond_24
const-string/jumbo v0, "MicroMsg.SDK.WXApiImplV10"
const-string/jumbo v1, "unregister app failed for wechat app signature check failed"
invoke-static {v0, v1}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_23
return-void
:cond_24
const-string/jumbo v0, "MicroMsg.SDK.WXApiImplV10"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "unregisterApp, appId = "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/tencent/mm/sdk/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;
if-eqz v0, :cond_48
iget-object v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_52
:cond_48
const-string/jumbo v0, "MicroMsg.SDK.WXApiImplV10"
const-string/jumbo v1, "unregisterApp fail, appId is empty"
invoke-static {v0, v1}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_23
:cond_52
const-string/jumbo v0, "MicroMsg.SDK.WXApiImplV10"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "unregister app "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/tencent/mm/sdk/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/tencent/mm/sdk/a/a/a$a;
invoke-direct {v0}, Lcom/tencent/mm/sdk/a/a/a$a;-><init>()V
const-string/jumbo v1, "com.tencent.mm"
iput-object v1, v0, Lcom/tencent/mm/sdk/a/a/a$a;->l:Ljava/lang/String;
const-string/jumbo v1, "com.tencent.mm.plugin.openapi.Intent.ACTION_HANDLE_APP_UNREGISTER"
iput-object v1, v0, Lcom/tencent/mm/sdk/a/a/a$a;->m:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "weixin://unregisterapp?appid="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/tencent/mm/sdk/a/a/a$a;->j:Ljava/lang/String;
iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;
invoke-static {v1, v0}, Lcom/tencent/mm/sdk/a/a/a;->a(Landroid/content/Context;Lcom/tencent/mm/sdk/a/a/a$a;)Z
goto :goto_23
.end method