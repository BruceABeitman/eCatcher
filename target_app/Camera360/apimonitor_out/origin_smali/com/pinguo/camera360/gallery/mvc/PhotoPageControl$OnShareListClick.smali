.class Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$OnShareListClick;
.super Ljava/lang/Object;
.source "PhotoPageControl.java"

# interfaces
.implements Lcom/pinguo/share/ui/ShareListView$ShareClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnShareListClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$OnShareListClick;->this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$OnShareListClick;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$OnShareListClick;-><init>(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;)V

    return-void
.end method


# virtual methods
.method public onShareItemClick(I)V
    .registers 10

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$OnShareListClick;->this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    #getter for: Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mIsCamera360:Z
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->access$0(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;)Z

    move-result v5

    if-eqz v5, :cond_da

    :try_start_c
    invoke-static {}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;

    move-result-object v5

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$OnShareListClick;->this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    #getter for: Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mCurrPhotoPath:Ljava/lang/String;
    invoke-static {v6}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->access$1(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->selectPhotoProject(Ljava/lang/String;)Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;

    move-result-object v2

    sget-object v5, Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;->share:Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;

    invoke-virtual {v2}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getDateTaken()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/pinguo/camera360/gallery/temps/SandBox;->getSandBoxPath(Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;J)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_35

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$OnShareListClick;->this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    #getter for: Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mCurrPhotoPath:Ljava/lang/String;
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->access$1(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;)Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_34} :catch_bc

    move-result-object v1

    :cond_35
    :goto_35
    if-nez v2, :cond_3b

    invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesserUtils;->obtainEmptyForImport()Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;

    move-result-object v2

    :cond_3b
    invoke-static {v2}, Lcom/pinguo/camera360/save/processer/PhotoProcesserUtils;->createPictureInfoFromItem(Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;)Lcom/pinguo/camera360/photoedit/PictureInfo;

    move-result-object v3

    invoke-static {}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->access$2()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Image path:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getProjectState()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_97

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_97

    invoke-virtual {v2}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getProjectState()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "finished"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_bb

    :cond_97
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_bb

    const-string/jumbo v5, "blank_image"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_bb

    invoke-static {v3}, Lcom/pinguo/share/ShareAccess;->pictureInfo2ShareInfo(Lcom/pinguo/camera360/photoedit/PictureInfo;)Lcom/pinguo/share/ShareInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$OnShareListClick;->this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    #getter for: Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->access$3(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;)Lcom/pinguo/camera360/gallery/RootActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/gallery/RootActivity;->getOrientation()I

    move-result v5

    iput v5, v4, Lcom/pinguo/share/ShareInfo;->uiOrientation:I

    iput-object v1, v4, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;

    packed-switch p1, :pswitch_data_1f2

    :cond_bb
    :goto_bb
    :pswitch_bb
    return-void

    :catch_bc
    move-exception v0

    invoke-static {}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->access$2()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "edit Photo, SandBox Sql error."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_35

    :cond_da
    iget-object v5, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$OnShareListClick;->this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    #getter for: Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mCurrPhotoPath:Ljava/lang/String;
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->access$1(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_35

    :pswitch_e2
    const-class v5, Lcom/pinguo/camera360/gallery/GalleryActivity;

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$OnShareListClick;->this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    #getter for: Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
    invoke-static {v6}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->access$3(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;)Lcom/pinguo/camera360/gallery/RootActivity;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f7

    invoke-static {p1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Share;->shareSiteSelectAfterGalleryBigPic(I)V

    :cond_f7
    iget-object v5, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$OnShareListClick;->this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    #getter for: Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->access$3(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;)Lcom/pinguo/camera360/gallery/RootActivity;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/pinguo/share/ShareManager;->qqShare(Landroid/app/Activity;Lcom/pinguo/share/ShareInfo;)V

    goto :goto_bb

    :pswitch_101
    const-class v5, Lcom/pinguo/camera360/gallery/GalleryActivity;

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$OnShareListClick;->this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    #getter for: Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
    invoke-static {v6}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->access$3(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;)Lcom/pinguo/camera360/gallery/RootActivity;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_116

    invoke-static {p1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Share;->shareSiteSelectAfterGalleryBigPic(I)V

    :cond_116
    iget-object v5, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$OnShareListClick;->this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    #getter for: Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->access$3(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;)Lcom/pinguo/camera360/gallery/RootActivity;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/pinguo/share/ShareManager;->weChatShare(Landroid/app/Activity;Lcom/pinguo/share/ShareInfo;)V

    goto :goto_bb

    :pswitch_120
    const-class v5, Lcom/pinguo/camera360/gallery/GalleryActivity;

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$OnShareListClick;->this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    #getter for: Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
    invoke-static {v6}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->access$3(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;)Lcom/pinguo/camera360/gallery/RootActivity;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_135

    invoke-static {p1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Share;->shareSiteSelectAfterGalleryBigPic(I)V

    :cond_135
    iget-object v5, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$OnShareListClick;->this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    #getter for: Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->access$3(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;)Lcom/pinguo/camera360/gallery/RootActivity;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/pinguo/share/ShareManager;->weChatFriendsShare(Landroid/app/Activity;Lcom/pinguo/share/ShareInfo;)V

    goto/16 :goto_bb

    :pswitch_140
    const-class v5, Lcom/pinguo/camera360/gallery/GalleryActivity;

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$OnShareListClick;->this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    #getter for: Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
    invoke-static {v6}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->access$3(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;)Lcom/pinguo/camera360/gallery/RootActivity;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_155

    invoke-static {p1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Share;->shareSiteSelectAfterGalleryBigPic(I)V

    :cond_155
    iget-object v5, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$OnShareListClick;->this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    #getter for: Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->access$3(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;)Lcom/pinguo/camera360/gallery/RootActivity;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/pinguo/share/ShareManager;->websiteShare(Landroid/app/Activity;Lcom/pinguo/share/ShareInfo;)V

    goto/16 :goto_bb

    :pswitch_160
    const-class v5, Lcom/pinguo/camera360/gallery/GalleryActivity;

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$OnShareListClick;->this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    #getter for: Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
    invoke-static {v6}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->access$3(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;)Lcom/pinguo/camera360/gallery/RootActivity;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_175

    invoke-static {p1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Share;->shareSiteSelectAfterGalleryBigPic(I)V

    :cond_175
    iget-object v5, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$OnShareListClick;->this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    #getter for: Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->access$3(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;)Lcom/pinguo/camera360/gallery/RootActivity;

    move-result-object v5

    const-string/jumbo v6, "com.instagram.android"

    invoke-static {v5, v6, v4}, Lcom/pinguo/share/ShareManager;->shareToLocalApp(Landroid/app/Activity;Ljava/lang/String;Lcom/pinguo/share/ShareInfo;)V

    goto/16 :goto_bb

    :pswitch_183
    const-class v5, Lcom/pinguo/camera360/gallery/GalleryActivity;

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$OnShareListClick;->this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    #getter for: Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
    invoke-static {v6}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->access$3(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;)Lcom/pinguo/camera360/gallery/RootActivity;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_198

    invoke-static {p1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Share;->shareSiteSelectAfterGalleryBigPic(I)V

    :cond_198
    iget-object v5, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$OnShareListClick;->this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    #getter for: Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->access$3(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;)Lcom/pinguo/camera360/gallery/RootActivity;

    move-result-object v5

    const v6, 0x7f080048

    invoke-virtual {v5, v6}, Lcom/pinguo/camera360/gallery/RootActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/pinguo/share/ShareInfo;->uiContent:Ljava/lang/String;

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$OnShareListClick;->this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    #getter for: Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->access$3(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;)Lcom/pinguo/camera360/gallery/RootActivity;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/pinguo/share/ShareManager;->otherShare(Landroid/content/Context;Lcom/pinguo/share/ShareInfo;)V

    goto/16 :goto_bb

    :pswitch_1b2
    const-class v5, Lcom/pinguo/camera360/gallery/GalleryActivity;

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$OnShareListClick;->this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    #getter for: Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
    invoke-static {v6}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->access$3(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;)Lcom/pinguo/camera360/gallery/RootActivity;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c7

    invoke-static {p1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Share;->shareSiteSelectAfterGalleryBigPic(I)V

    :cond_1c7
    iget-object v5, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$OnShareListClick;->this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    #getter for: Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->access$3(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;)Lcom/pinguo/camera360/gallery/RootActivity;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/pinguo/share/ShareManager;->shareToBeeTalkChat(Landroid/app/Activity;Lcom/pinguo/share/ShareInfo;)V

    goto/16 :goto_bb

    :pswitch_1d2
    const-class v5, Lcom/pinguo/camera360/gallery/GalleryActivity;

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$OnShareListClick;->this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    #getter for: Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
    invoke-static {v6}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->access$3(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;)Lcom/pinguo/camera360/gallery/RootActivity;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e7

    invoke-static {p1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Share;->shareSiteSelectAfterGalleryBigPic(I)V

    :cond_1e7
    iget-object v5, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$OnShareListClick;->this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    #getter for: Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->access$3(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;)Lcom/pinguo/camera360/gallery/RootActivity;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/pinguo/share/ShareManager;->shareToBeeTalkBuzz(Landroid/app/Activity;Lcom/pinguo/share/ShareInfo;)V

    goto/16 :goto_bb

    :pswitch_data_1f2
    .packed-switch 0x0
        :pswitch_e2
        :pswitch_101
        :pswitch_120
        :pswitch_160
        :pswitch_1b2
        :pswitch_1d2
        :pswitch_bb
        :pswitch_140
        :pswitch_183
    .end packed-switch
.end method
