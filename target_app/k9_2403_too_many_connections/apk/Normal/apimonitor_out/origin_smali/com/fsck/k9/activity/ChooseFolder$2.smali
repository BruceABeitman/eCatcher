.class Lcom/fsck/k9/activity/ChooseFolder$2;
.super Lcom/fsck/k9/MessagingListener;
.source "ChooseFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/ChooseFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/ChooseFolder;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/ChooseFolder;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/ChooseFolder$2;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    invoke-direct {p0}, Lcom/fsck/k9/MessagingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public listFolders(Lcom/fsck/k9/Account;[Lcom/fsck/k9/mail/Folder;)V
    .registers 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/ChooseFolder$2;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    move-object v14, v0

    iget-object v14, v14, Lcom/fsck/k9/activity/ChooseFolder;->mAccount:Lcom/fsck/k9/Account;

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_11

    :goto_10
    return-void

    :cond_11
    sget-object v2, Lcom/fsck/k9/Account$FolderMode;->ALL:Lcom/fsck/k9/Account$FolderMode;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/ChooseFolder$2;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    move-object v14, v0

    iget-boolean v14, v14, Lcom/fsck/k9/activity/ChooseFolder;->showDisplayableOnly:Z

    if-eqz v14, :cond_72

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getFolderDisplayMode()Lcom/fsck/k9/Account$FolderMode;

    move-result-object v2

    :goto_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/ChooseFolder$2;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/fsck/k9/activity/ChooseFolder;->getApplication()Landroid/app/Application;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v12

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v3, p2

    array-length v7, v3

    const/4 v6, 0x0

    :goto_3a
    if-ge v6, v7, :cond_c1

    aget-object v5, v3, v6

    invoke-virtual {v5}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/ChooseFolder$2;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    move-object v14, v0

    iget-boolean v14, v14, Lcom/fsck/k9/activity/ChooseFolder;->hideCurrentFolder:Z

    if-eqz v14, :cond_77

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/ChooseFolder$2;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    move-object v14, v0

    iget-object v14, v14, Lcom/fsck/k9/activity/ChooseFolder;->mFolder:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6f

    const-string v14, "INBOX"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/ChooseFolder$2;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    move-object v15, v0

    iget-object v15, v15, Lcom/fsck/k9/activity/ChooseFolder;->mFolder:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_77

    const-string v14, "INBOX"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_77

    :cond_6f
    :goto_6f
    add-int/lit8 v6, v6, 0x1

    goto :goto_3a

    :cond_72
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getFolderTargetMode()Lcom/fsck/k9/Account$FolderMode;

    move-result-object v2

    goto :goto_20

    :cond_77
    :try_start_77
    invoke-virtual {v5, v12}, Lcom/fsck/k9/mail/Folder;->refresh(Lcom/fsck/k9/Preferences;)V

    invoke-virtual {v5}, Lcom/fsck/k9/mail/Folder;->getDisplayClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v4

    sget-object v14, Lcom/fsck/k9/Account$FolderMode;->FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;

    if-ne v2, v14, :cond_86

    sget-object v14, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v4, v14, :cond_6f

    :cond_86
    sget-object v14, Lcom/fsck/k9/Account$FolderMode;->FIRST_AND_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    if-ne v2, v14, :cond_92

    sget-object v14, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-eq v4, v14, :cond_92

    sget-object v14, Lcom/fsck/k9/mail/Folder$FolderClass;->SECOND_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v4, v14, :cond_6f

    :cond_92
    sget-object v14, Lcom/fsck/k9/Account$FolderMode;->NOT_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    if-ne v2, v14, :cond_9a

    sget-object v14, Lcom/fsck/k9/mail/Folder$FolderClass;->SECOND_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;
    :try_end_98
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_77 .. :try_end_98} :catch_a2

    if-eq v4, v14, :cond_6f

    :cond_9a
    :goto_9a
    invoke-virtual {v5}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    :catch_a2
    move-exception v14

    move-object v9, v14

    const-string v14, "k9"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Couldn\'t get prefs to check for displayability of folder "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9a

    :cond_c1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/ChooseFolder$2;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    move-object v14, v0

    iget-boolean v14, v14, Lcom/fsck/k9/activity/ChooseFolder;->showOptionNone:Z

    if-eqz v14, :cond_cf

    const-string v14, "-NONE-"

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_cf
    new-instance v14, Lcom/fsck/k9/activity/ChooseFolder$2$1;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/ChooseFolder$2$1;-><init>(Lcom/fsck/k9/activity/ChooseFolder$2;)V

    invoke-static {v8, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/ChooseFolder$2;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    move-object v14, v0

    iget-object v14, v14, Lcom/fsck/k9/activity/ChooseFolder;->adapter:Landroid/widget/ArrayAdapter;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/ChooseFolder$2;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    move-object v14, v0

    iget-object v14, v14, Lcom/fsck/k9/activity/ChooseFolder;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v14}, Landroid/widget/ArrayAdapter;->clear()V

    const/4 v13, -0x1

    const/4 v11, 0x0

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_f5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_159

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v14, "INBOX"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_14e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/ChooseFolder$2;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    move-object v14, v0

    iget-object v14, v14, Lcom/fsck/k9/activity/ChooseFolder;->adapter:Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/ChooseFolder$2;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    move-object v15, v0

    const v16, 0x7f080072

    invoke-virtual/range {v15 .. v16}, Lcom/fsck/k9/activity/ChooseFolder;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/ChooseFolder$2;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    move-object v14, v0

    iput-object v10, v14, Lcom/fsck/k9/activity/ChooseFolder;->heldInbox:Ljava/lang/String;

    :goto_126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/ChooseFolder$2;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    move-object v14, v0

    iget-object v14, v14, Lcom/fsck/k9/activity/ChooseFolder;->mFolder:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_14a

    const-string v14, "INBOX"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/ChooseFolder$2;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    move-object v15, v0

    iget-object v15, v15, Lcom/fsck/k9/activity/ChooseFolder;->mFolder:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_14b

    const-string v14, "INBOX"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_14b

    :cond_14a
    move v13, v11

    :cond_14b
    add-int/lit8 v11, v11, 0x1

    goto :goto_f5

    :cond_14e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/ChooseFolder$2;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    move-object v14, v0

    iget-object v14, v14, Lcom/fsck/k9/activity/ChooseFolder;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v14, v10}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_126

    :cond_159
    const/4 v14, -0x1

    if-eq v13, v14, :cond_168

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/ChooseFolder$2;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    move-object v14, v0

    #getter for: Lcom/fsck/k9/activity/ChooseFolder;->mHandler:Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;
    invoke-static {v14}, Lcom/fsck/k9/activity/ChooseFolder;->access$000(Lcom/fsck/k9/activity/ChooseFolder;)Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;->setSelectedFolder(I)V

    :cond_168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/ChooseFolder$2;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    move-object v14, v0

    #getter for: Lcom/fsck/k9/activity/ChooseFolder;->mHandler:Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;
    invoke-static {v14}, Lcom/fsck/k9/activity/ChooseFolder;->access$000(Lcom/fsck/k9/activity/ChooseFolder;)Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;

    move-result-object v14

    invoke-virtual {v14}, Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;->dataChanged()V

    goto/16 :goto_10
.end method

.method public listFoldersFailed(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/fsck/k9/activity/ChooseFolder$2;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-object v0, v0, Lcom/fsck/k9/activity/ChooseFolder;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/fsck/k9/activity/ChooseFolder$2;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    #getter for: Lcom/fsck/k9/activity/ChooseFolder;->mHandler:Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/ChooseFolder;->access$000(Lcom/fsck/k9/activity/ChooseFolder;)Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;->progress(Z)V

    goto :goto_a
.end method

.method public listFoldersFinished(Lcom/fsck/k9/Account;)V
    .registers 4

    iget-object v0, p0, Lcom/fsck/k9/activity/ChooseFolder$2;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-object v0, v0, Lcom/fsck/k9/activity/ChooseFolder;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/fsck/k9/activity/ChooseFolder$2;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    #getter for: Lcom/fsck/k9/activity/ChooseFolder;->mHandler:Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/ChooseFolder;->access$000(Lcom/fsck/k9/activity/ChooseFolder;)Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;->progress(Z)V

    goto :goto_a
.end method

.method public listFoldersStarted(Lcom/fsck/k9/Account;)V
    .registers 4

    iget-object v0, p0, Lcom/fsck/k9/activity/ChooseFolder$2;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-object v0, v0, Lcom/fsck/k9/activity/ChooseFolder;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/fsck/k9/activity/ChooseFolder$2;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    #getter for: Lcom/fsck/k9/activity/ChooseFolder;->mHandler:Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/ChooseFolder;->access$000(Lcom/fsck/k9/activity/ChooseFolder;)Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;->progress(Z)V

    goto :goto_a
.end method
