.class public abstract Lco/vine/android/CaptchaRequestHelper;
.super Ljava/lang/Object;
.source "CaptchaRequestHelper.java"
.field public static final REQUEST_CODE_CAPTCHA:I = 0xb
.field protected static final STATE_PENDING_CAPTCHA_REQUEST:Ljava/lang/String; = "state_pending_captcha_request"
.field protected mPendingCaptchaRequest:Lco/vine/android/PendingCaptchaRequest;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method protected abstract handleFailedCaptchaRequest(Lco/vine/android/PendingCaptchaRequest;)V
.end method
.method public handlePendingCaptchaRequest()V
.registers 3
iget-object v0, p0, Lco/vine/android/CaptchaRequestHelper;->mPendingCaptchaRequest:Lco/vine/android/PendingCaptchaRequest;
if-eqz v0, :cond_13
iget-object v0, p0, Lco/vine/android/CaptchaRequestHelper;->mPendingCaptchaRequest:Lco/vine/android/PendingCaptchaRequest;
iget v0, v0, Lco/vine/android/PendingCaptchaRequest;->state:I
const/4 v1, 0x3
if-ne v0, v1, :cond_14
iget-object v0, p0, Lco/vine/android/CaptchaRequestHelper;->mPendingCaptchaRequest:Lco/vine/android/PendingCaptchaRequest;
invoke-virtual {p0, v0}, Lco/vine/android/CaptchaRequestHelper;->handleFailedCaptchaRequest(Lco/vine/android/PendingCaptchaRequest;)V
:goto_10
:cond_10
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/CaptchaRequestHelper;->mPendingCaptchaRequest:Lco/vine/android/PendingCaptchaRequest;
:cond_13
return-void
:cond_14
iget-object v0, p0, Lco/vine/android/CaptchaRequestHelper;->mPendingCaptchaRequest:Lco/vine/android/PendingCaptchaRequest;
iget v0, v0, Lco/vine/android/PendingCaptchaRequest;->state:I
const/4 v1, 0x2
if-ne v0, v1, :cond_10
iget-object v0, p0, Lco/vine/android/CaptchaRequestHelper;->mPendingCaptchaRequest:Lco/vine/android/PendingCaptchaRequest;
invoke-virtual {p0, v0}, Lco/vine/android/CaptchaRequestHelper;->handleRetryCaptchaRequest(Lco/vine/android/PendingCaptchaRequest;)V
goto :goto_10
.end method
.method protected abstract handleRetryCaptchaRequest(Lco/vine/android/PendingCaptchaRequest;)V
.end method
.method public onActivityResult(IILandroid/content/Intent;)Z
.registers 7
const/4 v2, 0x2
packed-switch p1, :pswitch_data_38
const/4 v1, 0x0
:goto_5
return v1
:pswitch_6
iget-object v1, p0, Lco/vine/android/CaptchaRequestHelper;->mPendingCaptchaRequest:Lco/vine/android/PendingCaptchaRequest;
if-eqz v1, :cond_23
if-eqz p3, :cond_23
const-string v1, "rid"
invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const/4 v1, -0x1
if-ne p2, v1, :cond_25
iget-object v1, p0, Lco/vine/android/CaptchaRequestHelper;->mPendingCaptchaRequest:Lco/vine/android/PendingCaptchaRequest;
iget-object v1, v1, Lco/vine/android/PendingCaptchaRequest;->reqId:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_25
iget-object v1, p0, Lco/vine/android/CaptchaRequestHelper;->mPendingCaptchaRequest:Lco/vine/android/PendingCaptchaRequest;
iput v2, v1, Lco/vine/android/PendingCaptchaRequest;->state:I
:goto_23
:cond_23
const/4 v1, 0x1
goto :goto_5
:cond_25
if-ne p2, v2, :cond_23
iget-object v1, p0, Lco/vine/android/CaptchaRequestHelper;->mPendingCaptchaRequest:Lco/vine/android/PendingCaptchaRequest;
iget-object v1, v1, Lco/vine/android/PendingCaptchaRequest;->reqId:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_23
iget-object v1, p0, Lco/vine/android/CaptchaRequestHelper;->mPendingCaptchaRequest:Lco/vine/android/PendingCaptchaRequest;
const/4 v2, 0x3
iput v2, v1, Lco/vine/android/PendingCaptchaRequest;->state:I
goto :goto_23
nop
:pswitch_data_38
.packed-switch 0xb
:pswitch_6
.end packed-switch
.end method
.method public onCaptchaRequired(Landroid/app/Activity;Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)V
.registers 8
new-instance v1, Lco/vine/android/PendingCaptchaRequest;
invoke-direct {v1, p2, p3, p4}, Lco/vine/android/PendingCaptchaRequest;-><init>(Ljava/lang/String;ILandroid/os/Bundle;)V
invoke-virtual {p0, v1}, Lco/vine/android/CaptchaRequestHelper;->setPendingCaptchaRequest(Lco/vine/android/PendingCaptchaRequest;)V
if-eqz p1, :cond_13
invoke-static {p1, p5, p2}, Lco/vine/android/CaptchaActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
const/16 v1, 0xb
invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
:cond_13
return-void
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v0, "state_pending_captcha_request"
iget-object v1, p0, Lco/vine/android/CaptchaRequestHelper;->mPendingCaptchaRequest:Lco/vine/android/PendingCaptchaRequest;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
return-void
.end method
.method public restorePendingCaptchaRequest(Landroid/os/Bundle;)V
.registers 3
const-string v0, "state_pending_captcha_request"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lco/vine/android/PendingCaptchaRequest;
iput-object v0, p0, Lco/vine/android/CaptchaRequestHelper;->mPendingCaptchaRequest:Lco/vine/android/PendingCaptchaRequest;
return-void
.end method
.method public setPendingCaptchaRequest(Lco/vine/android/PendingCaptchaRequest;)V
.registers 2
iput-object p1, p0, Lco/vine/android/CaptchaRequestHelper;->mPendingCaptchaRequest:Lco/vine/android/PendingCaptchaRequest;
return-void
.end method