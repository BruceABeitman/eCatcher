.class public Lcom/fsck/k9/remotecontrol/K9RemoteControl;
.super Ljava/lang/Object;
.source "K9RemoteControl.java"


# static fields
.field public static final K9_ACCOUNT_DESCRIPTIONS:Ljava/lang/String; = "com.fsck.k9.K9RemoteControl.accountDescriptions"

.field public static final K9_ACCOUNT_UUID:Ljava/lang/String; = "com.fsck.k9.K9RemoteControl.accountUuid"

.field public static final K9_ACCOUNT_UUIDS:Ljava/lang/String; = "com.fsck.k9.K9RemoteControl.accountUuids"

.field public static final K9_ALL_ACCOUNTS:Ljava/lang/String; = "com.fsck.k9.K9RemoteControl.allAccounts"

.field public static final K9_BACKGROUND_OPERATIONS:Ljava/lang/String; = "com.fsck.k9.K9RemoteControl.backgroundOperations"

.field public static final K9_BACKGROUND_OPERATIONS_ALWAYS:Ljava/lang/String; = "ALWAYS"

.field public static final K9_BACKGROUND_OPERATIONS_NEVER:Ljava/lang/String; = "NEVER"

.field public static final K9_BACKGROUND_OPERATIONS_WHEN_CHECKED:Ljava/lang/String; = "WHEN_CHECKED"

.field public static final K9_DISABLED:Ljava/lang/String; = "false"

.field public static final K9_ENABLED:Ljava/lang/String; = "true"

.field public static final K9_FOLDERS_ALL:Ljava/lang/String; = "ALL"

.field public static final K9_FOLDERS_FIRST_AND_SECOND_CLASS:Ljava/lang/String; = "FIRST_AND_SECOND_CLASS"

.field public static final K9_FOLDERS_FIRST_CLASS:Ljava/lang/String; = "FIRST_CLASS"

.field public static final K9_FOLDERS_NONE:Ljava/lang/String; = "NONE"

.field public static final K9_FOLDERS_NOT_SECOND_CLASS:Ljava/lang/String; = "NOT_SECOND_CLASS"

.field public static final K9_NOTIFICATION_ENABLED:Ljava/lang/String; = "com.fsck.k9.K9RemoteControl.notificationEnabled"

.field public static final K9_POLL_CLASSES:Ljava/lang/String; = "com.fsck.k9.K9RemoteControl.pollClasses"

.field public static final K9_POLL_FREQUENCIES:[Ljava/lang/String; = null

.field public static final K9_POLL_FREQUENCY:Ljava/lang/String; = "com.fsck.k9.K9RemoteControl.pollFrequency"

.field public static final K9_PUSH_CLASSES:Ljava/lang/String; = "com.fsck.k9.K9RemoteControl.pushClasses"

.field public static final K9_REMOTE_CONTROL_PERMISSION:Ljava/lang/String; = "com.fsck.k9.permission.REMOTE_CONTROL"

.field public static final K9_REQUEST_ACCOUNTS:Ljava/lang/String; = "com.fsck.k9.K9RemoteControl.requestAccounts"

.field public static final K9_RING_ENABLED:Ljava/lang/String; = "com.fsck.k9.K9RemoteControl.ringEnabled"

.field public static final K9_SET:Ljava/lang/String; = "com.fsck.k9.K9RemoteControl.set"

.field public static final K9_THEME:Ljava/lang/String; = "com.fsck.k9.K9RemoteControl.theme"

.field public static final K9_THEME_DARK:Ljava/lang/String; = "DARK"

.field public static final K9_THEME_LIGHT:Ljava/lang/String; = "LIGHT"

.field public static final K9_VIBRATE_ENABLED:Ljava/lang/String; = "com.fsck.k9.K9RemoteControl.notificationEnabled"

.field protected static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "10"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "15"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "30"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "60"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "120"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "180"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "360"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "720"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "1440"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/remotecontrol/K9RemoteControl;->K9_POLL_FREQUENCIES:[Ljava/lang/String;

    const-string v0, "K9RemoteControl"

    sput-object v0, Lcom/fsck/k9/remotecontrol/K9RemoteControl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetchAccounts(Landroid/content/Context;Lcom/fsck/k9/remotecontrol/K9AccountReceptor;)V
    .registers 10

    const/4 v4, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.fsck.k9.K9RemoteControl.requestAccounts"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Lcom/fsck/k9/remotecontrol/AccountReceiver;

    invoke-direct {v3, p1}, Lcom/fsck/k9/remotecontrol/AccountReceiver;-><init>(Lcom/fsck/k9/remotecontrol/K9AccountReceptor;)V

    const-string v2, "com.fsck.k9.permission.REMOTE_CONTROL"

    const/4 v5, -0x1

    move-object v0, p0

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static set(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    const-string v0, "com.fsck.k9.K9RemoteControl.set"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.fsck.k9.permission.REMOTE_CONTROL"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method
