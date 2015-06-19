.class public Lco/vine/android/service/VineUploadService$SessionChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VineUploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/service/VineUploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SessionChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/service/VineUploadService;


# direct methods
.method public constructor <init>(Lco/vine/android/service/VineUploadService;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/service/VineUploadService$SessionChangedReceiver;->this$0:Lco/vine/android/service/VineUploadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-eqz p2, :cond_1d

    const-string v0, "co.vine.android.session.logout"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "co.vine.android.session.login"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1a
    invoke-static {}, Lco/vine/android/client/VineAccountHelper;->resetActiveSession()V

    :cond_1d
    return-void
.end method
