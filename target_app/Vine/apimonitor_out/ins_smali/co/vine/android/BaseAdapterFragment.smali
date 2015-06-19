.class public abstract Lco/vine/android/BaseAdapterFragment;
.super Lco/vine/android/BaseControllerFragment;
.source "BaseAdapterFragment.java"
.field protected static final PROGRESS_FETCH_DATA:I = 0x3
.field protected static final PROGRESS_FETCH_DATA_NEW_AUTO:I = 0x4
.field protected static final PROGRESS_FETCH_NEWER:I = 0x2
.field protected static final PROGRESS_FETCH_OLDER:I = 0x1
.field protected final mHandler:Landroid/os/Handler;
.field protected final mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;
.field protected mProgressDialog:Landroid/app/ProgressDialog;
.field protected mRefreshing:Z
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lco/vine/android/BaseControllerFragment;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lco/vine/android/BaseAdapterFragment;->mHandler:Landroid/os/Handler;
invoke-virtual {p0}, Lco/vine/android/BaseAdapterFragment;->createPendingRequestHelper()Lco/vine/android/PendingRequestHelper;
move-result-object v0
iput-object v0, p0, Lco/vine/android/BaseAdapterFragment;->mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;
return-void
.end method
.method protected addRequest(Ljava/lang/String;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lco/vine/android/BaseAdapterFragment;->mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;
invoke-virtual {v0, p1}, Lco/vine/android/PendingRequestHelper;->addRequest(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected addRequest(Ljava/lang/String;I)Ljava/lang/String;
.registers 4
iget-object v0, p0, Lco/vine/android/BaseAdapterFragment;->mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;
invoke-virtual {v0, p1, p2}, Lco/vine/android/PendingRequestHelper;->addRequest(Ljava/lang/String;I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected createPendingRequestHelper()Lco/vine/android/PendingRequestHelper;
.registers 2
new-instance v0, Lco/vine/android/BaseAdapterFragment$BasePendingRequestHelper;
invoke-direct {v0, p0}, Lco/vine/android/BaseAdapterFragment$BasePendingRequestHelper;-><init>(Lco/vine/android/BaseAdapterFragment;)V
return-object v0
.end method
.method protected dismissDialog()V
.registers 2
iget-object v0, p0, Lco/vine/android/BaseAdapterFragment;->mProgressDialog:Landroid/app/ProgressDialog;
if-eqz v0, :cond_c
iget-object v0, p0, Lco/vine/android/BaseAdapterFragment;->mProgressDialog:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/BaseAdapterFragment;->mProgressDialog:Landroid/app/ProgressDialog;
:cond_c
return-void
.end method
.method protected hasPendingRequest()Z
.registers 2
iget-object v0, p0, Lco/vine/android/BaseAdapterFragment;->mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;
invoke-virtual {v0}, Lco/vine/android/PendingRequestHelper;->hasPendingRequest()Z
move-result v0
return v0
.end method
.method protected hasPendingRequest(I)Z
.registers 3
iget-object v0, p0, Lco/vine/android/BaseAdapterFragment;->mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;
invoke-virtual {v0, p1}, Lco/vine/android/PendingRequestHelper;->hasPendingRequest(I)Z
move-result v0
return v0
.end method
.method protected abstract hideProgress(I)V
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lco/vine/android/BaseControllerFragment;->onCreate(Landroid/os/Bundle;)V
iget-object v0, p0, Lco/vine/android/BaseAdapterFragment;->mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;
iget-object v1, p0, Lco/vine/android/BaseAdapterFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v0, v1, p1}, Lco/vine/android/PendingRequestHelper;->onCreate(Lco/vine/android/client/AppController;Landroid/os/Bundle;)V
return-void
.end method
.method public onPause()V
.registers 1
invoke-super {p0}, Lco/vine/android/BaseControllerFragment;->onPause()V
invoke-virtual {p0}, Lco/vine/android/BaseAdapterFragment;->dismissDialog()V
return-void
.end method
.method public onResume()V
.registers 2
invoke-super {p0}, Lco/vine/android/BaseControllerFragment;->onResume()V
iget-object v0, p0, Lco/vine/android/BaseAdapterFragment;->mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;
invoke-virtual {v0}, Lco/vine/android/PendingRequestHelper;->onResume()V
return-void
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 3
invoke-super {p0, p1}, Lco/vine/android/BaseControllerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V
iget-object v0, p0, Lco/vine/android/BaseAdapterFragment;->mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;
invoke-virtual {v0, p1}, Lco/vine/android/PendingRequestHelper;->onSaveInstanceState(Landroid/os/Bundle;)V
return-void
.end method
.method protected removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;
.registers 3
iget-object v0, p0, Lco/vine/android/BaseAdapterFragment;->mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;
invoke-virtual {v0, p1}, Lco/vine/android/PendingRequestHelper;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;
move-result-object v0
return-object v0
.end method
.method protected abstract showProgress(I)V
.end method