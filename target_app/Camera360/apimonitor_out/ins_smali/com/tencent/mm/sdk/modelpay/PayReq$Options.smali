.class public Lcom/tencent/mm/sdk/modelpay/PayReq$Options;
.super Ljava/lang/Object;
.field public static final INVALID_FLAGS:I = -0x1
.field public callbackClassName:Ljava/lang/String;
.field public callbackFlags:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lcom/tencent/mm/sdk/modelpay/PayReq$Options;->callbackFlags:I
return-void
.end method
.method public fromBundle(Landroid/os/Bundle;)V
.registers 4
const-string/jumbo v0, "_wxapi_payoptions_callback_classname"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/tencent/mm/sdk/modelpay/PayReq$Options;->callbackClassName:Ljava/lang/String;
const-string/jumbo v0, "_wxapi_payoptions_callback_flags"
const/4 v1, -0x1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v0
iput v0, p0, Lcom/tencent/mm/sdk/modelpay/PayReq$Options;->callbackFlags:I
return-void
.end method
.method public toBundle(Landroid/os/Bundle;)V
.registers 4
const-string/jumbo v0, "_wxapi_payoptions_callback_classname"
iget-object v1, p0, Lcom/tencent/mm/sdk/modelpay/PayReq$Options;->callbackClassName:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "_wxapi_payoptions_callback_flags"
iget v1, p0, Lcom/tencent/mm/sdk/modelpay/PayReq$Options;->callbackFlags:I
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-void
.end method