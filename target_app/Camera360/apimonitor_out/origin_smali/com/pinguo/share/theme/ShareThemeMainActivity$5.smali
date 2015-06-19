.class Lcom/pinguo/share/theme/ShareThemeMainActivity$5;
.super Ljava/lang/Thread;
.source "ShareThemeMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/share/theme/ShareThemeMainActivity;->downloadThemeList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/share/theme/ShareThemeMainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    const/4 v13, 0x0

    const-wide/16 v2, 0x3e8

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_6} :catch_116

    :goto_6
    const/4 v12, 0x0

    iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mTNC:Lcom/pinguo/share/theme/ThemeNetConsole;
    invoke-static {v0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$13(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/theme/ThemeNetConsole;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/share/theme/ThemeNetConsole;->currentNetType()I

    move-result v0

    if-eqz v0, :cond_4f

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mTNC:Lcom/pinguo/share/theme/ThemeNetConsole;
    invoke-static {v0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$13(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/theme/ThemeNetConsole;

    move-result-object v0

    iget-object v2, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$7(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Landroid/os/Handler;

    move-result-object v2

    const v3, 0x10001

    const v4, 0x10002

    const v5, 0x10003

    invoke-virtual/range {v0 .. v5}, Lcom/pinguo/share/theme/ThemeNetConsole;->getThemeInformation(Ljava/util/List;Landroid/os/Handler;III)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4f

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_11c

    iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mList:Ljava/util/List;
    invoke-static {v0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$0(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mList:Ljava/util/List;
    invoke-static {v0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$0(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4f
    iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mList:Ljava/util/List;
    invoke-static {v0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$0(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c1

    new-instance v10, Lcom/pinguo/share/theme/ThemeXMLStruct;

    invoke-direct {v10}, Lcom/pinguo/share/theme/ThemeXMLStruct;-><init>()V

    invoke-virtual {v10, v13}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setId(I)V

    iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    invoke-virtual {v0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08005d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setTitle(Ljava/lang/String;)V

    const-string/jumbo v0, "default_theme.jpg"

    invoke-virtual {v10, v0}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setUrlPrefix(Ljava/lang/String;)V

    const-string/jumbo v0, "default_theme_s.jpg"

    invoke-virtual {v10, v0}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setSmall(Ljava/lang/String;)V

    const-string/jumbo v0, "default_theme"

    invoke-virtual {v10, v0}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setPreviewName(Ljava/lang/String;)V

    const-string/jumbo v0, "default_theme.jpg"

    invoke-virtual {v10, v0}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setPreviewUrl(Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setActivity(I)V

    const-string/jumbo v0, ""

    invoke-virtual {v10, v0}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setTag(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    invoke-virtual {v10, v0}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setDefault(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    invoke-virtual {v10, v0}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setTemplate(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    invoke-virtual {v10, v0}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setUpdate(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    invoke-virtual {v10, v0}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setContent(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    invoke-virtual {v10, v0}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setDescription(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    invoke-virtual {v10, v0}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setPush(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mList:Ljava/util/List;
    invoke-static {v0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$0(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c1
    iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->strLocalString:Ljava/lang/String;
    invoke-static {v0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$18(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_182

    iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->strLocalString:Ljava/lang/String;
    invoke-static {v0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$18(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_182

    iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->strLocalString:Ljava/lang/String;
    invoke-static {v0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$18(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->strNetString:Ljava/lang/String;
    invoke-static {v2}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$16(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_182

    const-string/jumbo v0, "I"

    const-string/jumbo v2, "No Change"

    invoke-static {v0, v2}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
    invoke-static {v0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$8(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_115

    iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
    invoke-static {v0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$8(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_115

    iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    invoke-virtual {v0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_115

    iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
    invoke-static {v0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$8(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->dismiss()V

    :cond_115
    :goto_115
    return-void

    :catch_116
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_6

    :cond_11c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pinguo/share/theme/ThemeXMLStruct;

    iget-object v2, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->strNetString:Ljava/lang/String;
    invoke-static {v2}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$16(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getId()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getSmall()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getUrlPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getPreviewName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getPreviewUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getActivity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getDefault()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->strNetString:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$17(Lcom/pinguo/share/theme/ShareThemeMainActivity;Ljava/lang/String;)V

    goto/16 :goto_37

    :cond_182
    const-string/jumbo v0, "I"

    const-string/jumbo v2, "Change"

    invoke-static {v0, v2}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    new-instance v2, Lcom/pinguo/share/theme/ShareThemeAdapter;

    iget-object v3, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    iget-object v4, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mList:Ljava/util/List;
    invoke-static {v4}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$0(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mPhotoHeight:I
    invoke-static {v5}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$19(Lcom/pinguo/share/theme/ShareThemeMainActivity;)I

    move-result v5

    iget-object v6, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mOnClick:Landroid/view/View$OnClickListener;
    invoke-static {v6}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$20(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Landroid/view/View$OnClickListener;

    move-result-object v6

    iget-object v7, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mLoadingBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$3(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/pinguo/share/theme/ShareThemeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILandroid/view/View$OnClickListener;Landroid/graphics/Bitmap;)V

    #setter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mAdapter:Lcom/pinguo/share/theme/ShareThemeAdapter;
    invoke-static {v0, v2}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$21(Lcom/pinguo/share/theme/ShareThemeMainActivity;Lcom/pinguo/share/theme/ShareThemeAdapter;)V

    iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$7(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Landroid/os/Handler;

    move-result-object v0

    const v2, 0x10009

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$7(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mList:Ljava/util/List;
    invoke-static {v0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$0(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1ff

    iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mList:Ljava/util/List;
    invoke-static {v0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$0(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1ff

    if-eqz v12, :cond_1ff

    iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mXC:Lcom/pinguo/share/theme/ThemeXMLConsole;
    invoke-static {v0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$22(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/theme/ThemeXMLConsole;

    move-result-object v0

    sget-object v2, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v12}, Lcom/pinguo/share/theme/ThemeXMLConsole;->saveJSONFile(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mXC:Lcom/pinguo/share/theme/ThemeXMLConsole;
    invoke-static {v0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$22(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/theme/ThemeXMLConsole;

    move-result-object v0

    iget-object v2, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mList:Ljava/util/List;
    invoke-static {v2}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$0(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pinguo/share/theme/ThemeXMLConsole;->getDefaultInformation(Ljava/util/List;)Lcom/pinguo/share/theme/ThemeXMLStruct;

    move-result-object v10

    if-eqz v10, :cond_1ff

    invoke-virtual {v10}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/pinguo/share/theme/ThemeXMLConsole;->setSelect(I)V

    :cond_1ff
    iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mTNC:Lcom/pinguo/share/theme/ThemeNetConsole;
    invoke-static {v0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$13(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/theme/ThemeNetConsole;

    move-result-object v0

    iget-object v2, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$7(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pinguo/share/theme/ThemeNetConsole;->go(Landroid/os/Handler;)V

    goto/16 :goto_115
.end method
