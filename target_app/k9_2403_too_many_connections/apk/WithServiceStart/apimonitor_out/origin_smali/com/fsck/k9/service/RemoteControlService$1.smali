.class Lcom/fsck/k9/service/RemoteControlService$1;
.super Ljava/lang/Object;
.source "RemoteControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/service/RemoteControlService;->startService(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/service/RemoteControlService;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$preferences:Lcom/fsck/k9/Preferences;


# direct methods
.method constructor <init>(Lcom/fsck/k9/service/RemoteControlService;Landroid/content/Intent;Lcom/fsck/k9/Preferences;)V
    .registers 4

    iput-object p1, p0, Lcom/fsck/k9/service/RemoteControlService$1;->this$0:Lcom/fsck/k9/service/RemoteControlService;

    iput-object p2, p0, Lcom/fsck/k9/service/RemoteControlService$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/fsck/k9/service/RemoteControlService$1;->val$preferences:Lcom/fsck/k9/Preferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 36

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->val$intent:Landroid/content/Intent;

    move-object/from16 v31, v0

    const-string v32, "com.fsck.k9.K9RemoteControl.accountUuid"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->val$intent:Landroid/content/Intent;

    move-object/from16 v31, v0

    const-string v32, "com.fsck.k9.K9RemoteControl.allAccounts"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    sget-boolean v31, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v31, :cond_27

    if-eqz v6, :cond_12b

    const-string v31, "k9"

    const-string v32, "RemoteControlService changing settings for all accounts"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    :goto_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->val$preferences:Lcom/fsck/k9/Preferences;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/fsck/k9/Preferences;->getAccounts()[Lcom/fsck/k9/Account;

    move-result-object v5

    move-object v9, v5

    move-object v0, v9

    array-length v0, v0

    move/from16 v17, v0

    const/4 v15, 0x0

    move/from16 v16, v15

    :goto_39
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_182

    aget-object v4, v9, v16

    if-nez v6, :cond_51

    invoke-virtual {v4}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_17c

    :cond_51
    sget-boolean v31, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v31, :cond_71

    const-string v31, "k9"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "RemoteControlService changing settings for account "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v4}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->val$intent:Landroid/content/Intent;

    move-object/from16 v31, v0

    const-string v32, "com.fsck.k9.K9RemoteControl.notificationEnabled"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->val$intent:Landroid/content/Intent;

    move-object/from16 v31, v0

    const-string v32, "com.fsck.k9.K9RemoteControl.ringEnabled"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->val$intent:Landroid/content/Intent;

    move-object/from16 v31, v0

    const-string v32, "com.fsck.k9.K9RemoteControl.notificationEnabled"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->val$intent:Landroid/content/Intent;

    move-object/from16 v31, v0

    const-string v32, "com.fsck.k9.K9RemoteControl.pushClasses"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->val$intent:Landroid/content/Intent;

    move-object/from16 v31, v0

    const-string v32, "com.fsck.k9.K9RemoteControl.pollClasses"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->val$intent:Landroid/content/Intent;

    move-object/from16 v31, v0

    const-string v32, "com.fsck.k9.K9RemoteControl.pollFrequency"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    if-eqz v21, :cond_c5

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v31

    move-object v0, v4

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->setNotifyNewMail(Z)V

    :cond_c5
    if-eqz v25, :cond_d1

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v31

    move-object v0, v4

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->setRing(Z)V

    :cond_d1
    if-eqz v30, :cond_dd

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v31

    move-object v0, v4

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->setVibrate(Z)V

    :cond_dd
    if-eqz v24, :cond_e9

    invoke-static/range {v24 .. v24}, Lcom/fsck/k9/Account$FolderMode;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$FolderMode;

    move-result-object v31

    move-object v0, v4

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->setFolderPushMode(Lcom/fsck/k9/Account$FolderMode;)V

    :cond_e9
    if-eqz v22, :cond_f5

    invoke-static/range {v22 .. v22}, Lcom/fsck/k9/Account$FolderMode;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$FolderMode;

    move-result-object v31

    move-object v0, v4

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->setFolderSyncMode(Lcom/fsck/k9/Account$FolderMode;)V

    :cond_f5
    if-eqz v23, :cond_16c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->this$0:Lcom/fsck/k9/service/RemoteControlService;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/fsck/k9/service/RemoteControlService;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f050001

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    move-object v10, v7

    move-object v0, v10

    array-length v0, v0

    move/from16 v18, v0

    const/4 v15, 0x0

    :goto_10e
    move v0, v15

    move/from16 v1, v18

    if-ge v0, v1, :cond_16c

    aget-object v8, v10, v15

    move-object v0, v8

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_128

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move-object v0, v4

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->setAutomaticCheckIntervalMinutes(I)V

    :cond_128
    add-int/lit8 v15, v15, 0x1

    goto :goto_10e

    :cond_12b
    const-string v31, "k9"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "RemoteControlService changing settings for account with UUID "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_147} :catch_149

    goto/16 :goto_27

    :catch_149
    move-exception v31

    move-object/from16 v12, v31

    const-string v31, "k9"

    const-string v32, "Could not handle K9_SET"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object v2, v12

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->this$0:Lcom/fsck/k9/service/RemoteControlService;

    move-object/from16 v31, v0

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x1

    invoke-static/range {v31 .. v33}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/Toast;->show()V

    :goto_16b
    return-void

    :cond_16c
    :try_start_16c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->this$0:Lcom/fsck/k9/service/RemoteControlService;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v31

    move-object v0, v4

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->save(Lcom/fsck/k9/Preferences;)V

    :cond_17c
    add-int/lit8 v15, v16, 0x1

    move/from16 v16, v15

    goto/16 :goto_39

    :cond_182
    sget-boolean v31, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v31, :cond_18d

    const-string v31, "k9"

    const-string v32, "RemoteControlService changing global settings"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->val$intent:Landroid/content/Intent;

    move-object/from16 v31, v0

    const-string v32, "com.fsck.k9.K9RemoteControl.backgroundOperations"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v31, "ALWAYS"

    move-object/from16 v0, v31

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_1ba

    const-string v31, "NEVER"

    move-object/from16 v0, v31

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_1ba

    const-string v31, "WHEN_CHECKED"

    move-object/from16 v0, v31

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1bd

    :cond_1ba
    invoke-static {v11}, Lcom/fsck/k9/K9;->setBackgroundOps(Ljava/lang/String;)V

    :cond_1bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->val$intent:Landroid/content/Intent;

    move-object/from16 v31, v0

    const-string v32, "com.fsck.k9.K9RemoteControl.theme"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_1dd

    const-string v31, "DARK"

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_22e

    const v31, 0x1030005

    :goto_1da
    invoke-static/range {v31 .. v31}, Lcom/fsck/k9/K9;->setK9Theme(I)V

    :cond_1dd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->val$preferences:Lcom/fsck/k9/Preferences;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-static {v13}, Lcom/fsck/k9/K9;->save(Landroid/content/SharedPreferences$Editor;)V

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->this$0:Lcom/fsck/k9/service/RemoteControlService;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/fsck/k9/service/RemoteControlService;->getApplication()Landroid/app/Application;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v31

    const-string v32, "com.fsck.k9.service.RemoteControlService"

    move-object v0, v14

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v31, "com.fsck.k9.service.RemoteControlService.RESCHEDULE_ACTION"

    move-object v0, v14

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    const-wide/16 v33, 0x2710

    add-long v19, v31, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/service/RemoteControlService$1;->this$0:Lcom/fsck/k9/service/RemoteControlService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-wide/from16 v1, v19

    move-object v3, v14

    invoke-static {v0, v1, v2, v3}, Lcom/fsck/k9/service/BootReceiver;->scheduleIntent(Landroid/content/Context;JLandroid/content/Intent;)V
    :try_end_22c
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_22c} :catch_149

    goto/16 :goto_16b

    :cond_22e
    const v31, 0x103000c

    goto :goto_1da
.end method
