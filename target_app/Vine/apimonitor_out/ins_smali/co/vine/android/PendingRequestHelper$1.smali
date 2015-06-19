.class  Lco/vine/android/PendingRequestHelper$1;
.super Lco/vine/android/CaptchaRequestHelper;
.source "PendingRequestHelper.java"
.field final synthetic this$0:Lco/vine/android/PendingRequestHelper;
.method constructor <init>(Lco/vine/android/PendingRequestHelper;)V
.registers 2
iput-object p1, p0, Lco/vine/android/PendingRequestHelper$1;->this$0:Lco/vine/android/PendingRequestHelper;
invoke-direct {p0}, Lco/vine/android/CaptchaRequestHelper;-><init>()V
return-void
.end method
.method protected handleFailedCaptchaRequest(Lco/vine/android/PendingCaptchaRequest;)V
.registers 3
iget-object v0, p0, Lco/vine/android/PendingRequestHelper$1;->this$0:Lco/vine/android/PendingRequestHelper;
invoke-virtual {v0, p1}, Lco/vine/android/PendingRequestHelper;->handleFailedCaptchaRequest(Lco/vine/android/PendingCaptchaRequest;)V
return-void
.end method
.method protected handleRetryCaptchaRequest(Lco/vine/android/PendingCaptchaRequest;)V
.registers 3
iget-object v0, p0, Lco/vine/android/PendingRequestHelper$1;->this$0:Lco/vine/android/PendingRequestHelper;
invoke-virtual {v0, p1}, Lco/vine/android/PendingRequestHelper;->handleRetryCaptchaRequest(Lco/vine/android/PendingCaptchaRequest;)V
return-void
.end method