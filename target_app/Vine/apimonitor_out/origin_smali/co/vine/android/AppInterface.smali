.class public interface abstract Lco/vine/android/AppInterface;
.super Ljava/lang/Object;
.source "AppInterface.java"


# virtual methods
.method public abstract appendDebugInfo(Landroid/content/Context;Ljava/lang/StringBuilder;Z)V
.end method

.method public abstract clearUploadCaptchas(Landroid/content/Context;)V
.end method

.method public abstract doAddWidget(Landroid/content/Context;Landroid/accounts/AccountManager;Landroid/accounts/Account;)Z
.end method

.method public abstract getClearNotificationsIntent(Landroid/content/Context;)Landroid/content/Intent;
.end method

.method public abstract getDiscardAllIntent(Landroid/content/Context;)Landroid/content/Intent;
.end method

.method public abstract getNotifyFailedIntent(Landroid/content/Context;)Landroid/content/Intent;
.end method

.method public abstract getRecordingIntent(Landroid/app/Activity;ILjava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract setupWidget(Landroid/app/Activity;)V
.end method

.method public abstract startCameraService(Landroid/app/Activity;)V
.end method

.method public abstract startCapture(Landroid/app/Activity;)V
.end method

.method public abstract startConversationActivity(Landroid/app/Activity;JLjava/lang/String;JZ)V
.end method

.method public abstract startUploadsListActivity(Landroid/app/Activity;)V
.end method

.method public abstract updateClientProfile(Landroid/content/Context;Lco/vine/android/client/AppController;Z)V
.end method

.method public abstract updateRecordConfigs(Landroid/content/Context;Lorg/json/JSONObject;)V
.end method
