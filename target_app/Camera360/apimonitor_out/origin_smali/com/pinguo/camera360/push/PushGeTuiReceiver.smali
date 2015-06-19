.class public Lcom/pinguo/camera360/push/PushGeTuiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushGeTuiReceiver.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final TAG_JSON:Ljava/lang/String; = "json"

.field private static mClientId:Ljava/lang/String;

.field private static mPreference:Lcom/pinguo/camera360/push/utils/PushPreference;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/pinguo/camera360/push/PushGeTuiReceiver;->mClientId:Ljava/lang/String;

    sput-object v0, Lcom/pinguo/camera360/push/PushGeTuiReceiver;->mPreference:Lcom/pinguo/camera360/push/utils/PushPreference;

    const-string/jumbo v0, "GexinSdkDemo"

    sput-object v0, Lcom/pinguo/camera360/push/PushGeTuiReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private setPushIntent(Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_23

    sget-object v1, Lcom/pinguo/camera360/push/PushGeTuiReceiver;->mPreference:Lcom/pinguo/camera360/push/utils/PushPreference;

    const-string/jumbo v2, "push_data"

    invoke-virtual {v1, v2, p1}, Lcom/pinguo/camera360/push/utils/PushPreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/pinguo/camera360/push/PushGeTuiReceiver;->mPreference:Lcom/pinguo/camera360/push/utils/PushPreference;

    invoke-virtual {v1}, Lcom/pinguo/camera360/push/utils/PushPreference;->commit()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/pinguo/camera360/push/PushGeTuiReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/pinguo/camera360/push/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "json"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/pinguo/camera360/push/PushGeTuiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_23
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object p1, p0, Lcom/pinguo/camera360/push/PushGeTuiReceiver;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/pinguo/camera360/push/PushGeTuiReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onReceive() action="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "action"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/pinguo/camera360/push/utils/PushPreference;

    iget-object v4, p0, Lcom/pinguo/camera360/push/PushGeTuiReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/pinguo/camera360/push/utils/PushPreference;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/pinguo/camera360/push/PushGeTuiReceiver;->mPreference:Lcom/pinguo/camera360/push/utils/PushPreference;

    const-string/jumbo v3, "action"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_ae

    :cond_35
    :goto_35
    return-void

    :pswitch_36
    const-string/jumbo v3, "payload"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_35

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    sget-object v3, Lcom/pinguo/camera360/push/PushGeTuiReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Got Payload:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/push/PushGeTuiReceiver;->setPushIntent(Ljava/lang/String;)V

    goto :goto_35

    :pswitch_5d
    const-string/jumbo v3, "clientid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/pinguo/camera360/push/PushGeTuiReceiver;->mClientId:Ljava/lang/String;

    sget-object v3, Lcom/pinguo/camera360/push/PushGeTuiReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "cid:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/pinguo/camera360/push/PushGeTuiReceiver;->mClientId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/pinguo/camera360/push/PushGeTuiReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "SDK Version: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/sdk/PushManager;->getInstance()Lcom/igexin/sdk/PushManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/igexin/sdk/PushManager;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/pinguo/camera360/push/PushGeTuiReceiver;->mClientId:Ljava/lang/String;

    if-eqz v3, :cond_35

    sget-object v3, Lcom/pinguo/camera360/push/PushGeTuiReceiver;->mPreference:Lcom/pinguo/camera360/push/utils/PushPreference;

    const-string/jumbo v4, "clientId"

    sget-object v5, Lcom/pinguo/camera360/push/PushGeTuiReceiver;->mClientId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/pinguo/camera360/push/utils/PushPreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/pinguo/camera360/push/PushGeTuiReceiver;->mPreference:Lcom/pinguo/camera360/push/utils/PushPreference;

    invoke-virtual {v3}, Lcom/pinguo/camera360/push/utils/PushPreference;->commit()V

    goto :goto_35

    :pswitch_data_ae
    .packed-switch 0x2711
        :pswitch_36
        :pswitch_5d
    .end packed-switch
.end method
