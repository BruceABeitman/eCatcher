.class Lcom/pinguo/camera360/login/model/SinaSso$SSOServerConnection;
.super Ljava/lang/Object;
.source "SinaSso.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/login/model/SinaSso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SSOServerConnection"
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field mCallback:Lcom/pinguo/camera360/login/model/SinaSso$SsoInterface;

.field final synthetic this$0:Lcom/pinguo/camera360/login/model/SinaSso;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/login/model/SinaSso;Landroid/app/Activity;Lcom/pinguo/camera360/login/model/SinaSso$SsoInterface;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/login/model/SinaSso$SSOServerConnection;->this$0:Lcom/pinguo/camera360/login/model/SinaSso;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/pinguo/camera360/login/model/SinaSso$SSOServerConnection;->mCallback:Lcom/pinguo/camera360/login/model/SinaSso$SsoInterface;

    iput-object p2, p0, Lcom/pinguo/camera360/login/model/SinaSso$SSOServerConnection;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 15

    invoke-static {p2}, Lcom/sina/sso/RemoteSSO$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sina/sso/RemoteSSO;

    move-result-object v10

    :try_start_4
    invoke-interface {v10}, Lcom/sina/sso/RemoteSSO;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10}, Lcom/sina/sso/RemoteSSO;->getActivityName()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/pinguo/camera360/login/model/SinaSso$SSOServerConnection;->this$0:Lcom/pinguo/camera360/login/model/SinaSso;

    iget-object v1, p0, Lcom/pinguo/camera360/login/model/SinaSso$SSOServerConnection;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/pinguo/camera360/login/model/SinaSso$SSOServerConnection;->this$0:Lcom/pinguo/camera360/login/model/SinaSso;

    iget-object v2, v2, Lcom/pinguo/camera360/login/model/SinaSso;->appkey:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    const v4, 0x80cd

    iget-object v7, p0, Lcom/pinguo/camera360/login/model/SinaSso$SSOServerConnection;->this$0:Lcom/pinguo/camera360/login/model/SinaSso;

    iget-object v7, v7, Lcom/pinguo/camera360/login/model/SinaSso;->redirecturl:Ljava/lang/String;

    move-object v8, p0

    #calls: Lcom/pinguo/camera360/login/model/SinaSso;->startSingleSignOn(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;)Z
    invoke-static/range {v0 .. v8}, Lcom/pinguo/camera360/login/model/SinaSso;->access$0(Lcom/pinguo/camera360/login/model/SinaSso;Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result v11

    if-nez v11, :cond_2e

    iget-object v0, p0, Lcom/pinguo/camera360/login/model/SinaSso$SSOServerConnection;->mCallback:Lcom/pinguo/camera360/login/model/SinaSso$SsoInterface;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/pinguo/camera360/login/model/SinaSso$SSOServerConnection;->mCallback:Lcom/pinguo/camera360/login/model/SinaSso$SsoInterface;

    invoke-interface {v0}, Lcom/pinguo/camera360/login/model/SinaSso$SsoInterface;->ssoFail()V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_2e} :catch_2f

    :cond_2e
    :goto_2e
    return-void

    :catch_2f
    move-exception v9

    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2e
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/login/model/SinaSso$SSOServerConnection;->mCallback:Lcom/pinguo/camera360/login/model/SinaSso$SsoInterface;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/login/model/SinaSso$SSOServerConnection;->mCallback:Lcom/pinguo/camera360/login/model/SinaSso$SsoInterface;

    invoke-interface {v0}, Lcom/pinguo/camera360/login/model/SinaSso$SsoInterface;->ssoFail()V

    :cond_9
    return-void
.end method
