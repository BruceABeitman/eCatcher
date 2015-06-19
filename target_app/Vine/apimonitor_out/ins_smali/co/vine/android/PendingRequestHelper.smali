.class public abstract Lco/vine/android/PendingRequestHelper;
.super Ljava/lang/Object;
.source "PendingRequestHelper.java"
.field public static final PROGRESS_FETCH_DATA:I = 0x3
.field public static final PROGRESS_FETCH_DATA_NEW_AUTO:I = 0x4
.field public static final PROGRESS_FETCH_NEWER:I = 0x2
.field public static final PROGRESS_FETCH_OLDER:I = 0x1
.field public static final PROGRESS_FIRST_USER:I = 0x6
.field public static final PROGRESS_LOAD_DATA:I = 0x5
.field public static final PROGRESS_LOAD_DATA_OLDER:I = 0x7
.field public static final PROGRESS_NONE:I = 0x0
.field private static final STATE_CURRENT_REQ_IDS:Ljava/lang/String; = "pending_reqs"
.field private mAppController:Lco/vine/android/client/AppController;
.field private final mCaptchaRequestHelper:Lco/vine/android/CaptchaRequestHelper;
.field private mPendingRequests:Ljava/util/ArrayList;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lco/vine/android/PendingRequestHelper$1;
invoke-direct {v0, p0}, Lco/vine/android/PendingRequestHelper$1;-><init>(Lco/vine/android/PendingRequestHelper;)V
iput-object v0, p0, Lco/vine/android/PendingRequestHelper;->mCaptchaRequestHelper:Lco/vine/android/CaptchaRequestHelper;
return-void
.end method
.method public addRequest(Ljava/lang/String;)Ljava/lang/String;
.registers 4
iget-object v0, p0, Lco/vine/android/PendingRequestHelper;->mPendingRequests:Ljava/util/ArrayList;
new-instance v1, Lco/vine/android/PendingRequest;
invoke-direct {v1, p1}, Lco/vine/android/PendingRequest;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-object p1
.end method
.method public addRequest(Ljava/lang/String;I)Ljava/lang/String;
.registers 5
iget-object v0, p0, Lco/vine/android/PendingRequestHelper;->mPendingRequests:Ljava/util/ArrayList;
new-instance v1, Lco/vine/android/PendingRequest;
invoke-direct {v1, p1, p2}, Lco/vine/android/PendingRequest;-><init>(Ljava/lang/String;I)V
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-object p1
.end method
.method public handleFailedCaptchaRequest(Lco/vine/android/PendingCaptchaRequest;)V
.registers 6
iget-object v1, p0, Lco/vine/android/PendingRequestHelper;->mAppController:Lco/vine/android/client/AppController;
if-eqz v1, :cond_16
iget-object v1, p0, Lco/vine/android/PendingRequestHelper;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v1}, Lco/vine/android/client/AppController;->generateReqIdForCanceledCaptcha()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lco/vine/android/PendingRequestHelper;->addRequest(Ljava/lang/String;)Ljava/lang/String;
iget-object v1, p0, Lco/vine/android/PendingRequestHelper;->mAppController:Lco/vine/android/client/AppController;
iget v2, p1, Lco/vine/android/PendingCaptchaRequest;->actionCode:I
iget-object v3, p1, Lco/vine/android/PendingCaptchaRequest;->bundle:Landroid/os/Bundle;
invoke-virtual {v1, v0, v2, v3}, Lco/vine/android/client/AppController;->failRequest(Ljava/lang/String;ILandroid/os/Bundle;)V
:cond_16
return-void
.end method
.method public handlePendingCaptchaRequest()V
.registers 2
iget-object v0, p0, Lco/vine/android/PendingRequestHelper;->mCaptchaRequestHelper:Lco/vine/android/CaptchaRequestHelper;
invoke-virtual {v0}, Lco/vine/android/CaptchaRequestHelper;->handlePendingCaptchaRequest()V
return-void
.end method
.method public handleRetryCaptchaRequest(Lco/vine/android/PendingCaptchaRequest;)V
.registers 5
iget-object v0, p0, Lco/vine/android/PendingRequestHelper;->mAppController:Lco/vine/android/client/AppController;
if-eqz v0, :cond_11
iget-object v0, p0, Lco/vine/android/PendingRequestHelper;->mAppController:Lco/vine/android/client/AppController;
iget v1, p1, Lco/vine/android/PendingCaptchaRequest;->actionCode:I
iget-object v2, p1, Lco/vine/android/PendingCaptchaRequest;->bundle:Landroid/os/Bundle;
invoke-virtual {v0, v1, v2}, Lco/vine/android/client/AppController;->retryRequest(ILandroid/os/Bundle;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lco/vine/android/PendingRequestHelper;->addRequest(Ljava/lang/String;)Ljava/lang/String;
:cond_11
return-void
.end method
.method public hasPendingRequest()Z
.registers 2
iget-object v0, p0, Lco/vine/android/PendingRequestHelper;->mPendingRequests:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public hasPendingRequest(I)Z
.registers 5
if-eqz p1, :cond_1a
iget-object v2, p0, Lco/vine/android/PendingRequestHelper;->mPendingRequests:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_8
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_1a
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/PendingRequest;
iget v2, v1, Lco/vine/android/PendingRequest;->fetchType:I
if-ne v2, p1, :cond_8
const/4 v2, 0x1
:goto_19
return v2
:cond_1a
const/4 v2, 0x0
goto :goto_19
.end method
.method public abstract hideProgress(I)V
.end method
.method public onActivityResult(IILandroid/content/Intent;)Z
.registers 5
iget-object v0, p0, Lco/vine/android/PendingRequestHelper;->mCaptchaRequestHelper:Lco/vine/android/CaptchaRequestHelper;
invoke-virtual {v0, p1, p2, p3}, Lco/vine/android/CaptchaRequestHelper;->onActivityResult(IILandroid/content/Intent;)Z
move-result v0
return v0
.end method
.method public onCaptchaRequired(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)V
.registers 12
iget-object v0, p0, Lco/vine/android/PendingRequestHelper;->mCaptchaRequestHelper:Lco/vine/android/CaptchaRequestHelper;
move-object v1, p1
move-object v2, p2
move v3, p3
move-object v4, p4
move-object v5, p5
invoke-virtual/range {v0 .. v5}, Lco/vine/android/CaptchaRequestHelper;->onCaptchaRequired(Landroid/app/Activity;Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)V
return-void
.end method
.method public onCreate(Lco/vine/android/client/AppController;Landroid/os/Bundle;)V
.registers 5
iput-object p1, p0, Lco/vine/android/PendingRequestHelper;->mAppController:Lco/vine/android/client/AppController;
if-eqz p2, :cond_c
const-string v0, "pending_reqs"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v0
iput-object v0, p0, Lco/vine/android/PendingRequestHelper;->mPendingRequests:Ljava/util/ArrayList;
:cond_c
iget-object v0, p0, Lco/vine/android/PendingRequestHelper;->mPendingRequests:Ljava/util/ArrayList;
if-nez v0, :cond_18
new-instance v0, Ljava/util/ArrayList;
const/4 v1, 0x5
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Lco/vine/android/PendingRequestHelper;->mPendingRequests:Ljava/util/ArrayList;
:cond_18
return-void
.end method
.method public onResume()V
.registers 5
iget-object v2, p0, Lco/vine/android/PendingRequestHelper;->mPendingRequests:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
add-int/lit8 v0, v2, -0x1
:goto_8
if-ltz v0, :cond_2f
iget-object v2, p0, Lco/vine/android/PendingRequestHelper;->mPendingRequests:Ljava/util/ArrayList;
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/PendingRequest;
iget-object v2, p0, Lco/vine/android/PendingRequestHelper;->mAppController:Lco/vine/android/client/AppController;
iget-object v3, v1, Lco/vine/android/PendingRequest;->id:Ljava/lang/String;
invoke-virtual {v2, v3}, Lco/vine/android/client/AppController;->isPendingRequest(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_24
iget v2, v1, Lco/vine/android/PendingRequest;->fetchType:I
invoke-virtual {p0, v2}, Lco/vine/android/PendingRequestHelper;->showProgress(I)V
:goto_21
add-int/lit8 v0, v0, -0x1
goto :goto_8
:cond_24
iget v2, v1, Lco/vine/android/PendingRequest;->fetchType:I
invoke-virtual {p0, v2}, Lco/vine/android/PendingRequestHelper;->hideProgress(I)V
iget-object v2, p0, Lco/vine/android/PendingRequestHelper;->mPendingRequests:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_21
:cond_2f
return-void
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v0, "pending_reqs"
iget-object v1, p0, Lco/vine/android/PendingRequestHelper;->mPendingRequests:Ljava/util/ArrayList;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
iget-object v0, p0, Lco/vine/android/PendingRequestHelper;->mCaptchaRequestHelper:Lco/vine/android/CaptchaRequestHelper;
invoke-virtual {v0, p1}, Lco/vine/android/CaptchaRequestHelper;->onSaveInstanceState(Landroid/os/Bundle;)V
return-void
.end method
.method public removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;
.registers 7
iget-object v2, p0, Lco/vine/android/PendingRequestHelper;->mPendingRequests:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v3
const/4 v0, 0x0
:goto_7
if-ge v0, v3, :cond_21
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/PendingRequest;
iget-object v4, v1, Lco/vine/android/PendingRequest;->id:Ljava/lang/String;
invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_1e
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/PendingRequest;
:goto_1d
return-object v4
:cond_1e
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_21
const/4 v4, 0x0
goto :goto_1d
.end method
.method public restorePendingCaptchaRequest(Landroid/os/Bundle;)V
.registers 3
iget-object v0, p0, Lco/vine/android/PendingRequestHelper;->mCaptchaRequestHelper:Lco/vine/android/CaptchaRequestHelper;
invoke-virtual {v0, p1}, Lco/vine/android/CaptchaRequestHelper;->restorePendingCaptchaRequest(Landroid/os/Bundle;)V
return-void
.end method
.method public abstract showProgress(I)V
.end method