.class public Lcom/fsck/k9/service/RemoteControlReceiver;
.super Lcom/fsck/k9/service/CoreReceiver;
.source "RemoteControlReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/fsck/k9/service/CoreReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public receive(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 15

    const-string v10, "k9"

    sget-boolean v8, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v8, :cond_1e

    const-string v8, "k9"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RemoteControlReceiver.onReceive"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const-string v8, "com.fsck.k9.K9RemoteControl.set"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2f

    invoke-static {p1, p2, p3}, Lcom/fsck/k9/service/RemoteControlService;->set(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Integer;)V

    const/4 p3, 0x0

    :cond_2e
    :goto_2e
    return-object p3

    :cond_2f
    const-string v8, "com.fsck.k9.K9RemoteControl.requestAccounts"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e

    :try_start_3b
    invoke-static {p1}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fsck/k9/Preferences;->getAccounts()[Lcom/fsck/k9/Account;

    move-result-object v1

    array-length v8, v1

    new-array v7, v8, [Ljava/lang/String;

    array-length v8, v1

    new-array v3, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    :goto_4a
    array-length v8, v1

    if-ge v5, v8, :cond_5e

    aget-object v0, v1, v5

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4a

    :cond_5e
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/fsck/k9/service/RemoteControlReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v2

    const-string v8, "com.fsck.k9.K9RemoteControl.accountUuids"

    invoke-virtual {v2, v8, v7}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v8, "com.fsck.k9.K9RemoteControl.accountDescriptions"

    invoke-virtual {v2, v8, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_6d} :catch_6e

    goto :goto_2e

    :catch_6e
    move-exception v8

    move-object v4, v8

    const-string v8, "k9"

    const-string v8, "Could not handle K9_RESPONSE_INTENT"

    invoke-static {v10, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e
.end method
