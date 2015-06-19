.class Lco/vine/android/service/GCMRegistrationService$GCMRegistrationListener;
.super Lco/vine/android/client/AppSessionListener;
.source "GCMRegistrationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/service/GCMRegistrationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GCMRegistrationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/service/GCMRegistrationService;


# direct methods
.method private constructor <init>(Lco/vine/android/service/GCMRegistrationService;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/service/GCMRegistrationService$GCMRegistrationListener;->this$0:Lco/vine/android/service/GCMRegistrationService;

    invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lco/vine/android/service/GCMRegistrationService;Lco/vine/android/service/GCMRegistrationService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lco/vine/android/service/GCMRegistrationService$GCMRegistrationListener;-><init>(Lco/vine/android/service/GCMRegistrationService;)V

    return-void
.end method


# virtual methods
.method public onGcmRegistrationComplete(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 9

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_24

    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-lez v1, :cond_24

    const-string v1, "GCMRegService"

    const-string v2, "GCM registration completed successfully; saving regId and stopping service now."

    invoke-static {v1, v2}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lco/vine/android/service/GCMRegistrationService$GCMRegistrationListener;->this$0:Lco/vine/android/service/GCMRegistrationService;

    invoke-static {v1}, Lco/vine/android/service/GCMRegistrationService;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "registrationIdSent"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_24
    iget-object v1, p0, Lco/vine/android/service/GCMRegistrationService$GCMRegistrationListener;->this$0:Lco/vine/android/service/GCMRegistrationService;

    #calls: Lco/vine/android/service/GCMRegistrationService;->stopService()V
    invoke-static {v1}, Lco/vine/android/service/GCMRegistrationService;->access$500(Lco/vine/android/service/GCMRegistrationService;)V

    return-void
.end method
