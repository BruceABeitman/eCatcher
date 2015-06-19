.class public Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;
.super Ljava/lang/Object;
.source "PhotoPageControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$OnSoundPlayCompletedListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$OnShareListClick;,
        Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$PhotoPageAction;
    }
.end annotation


# static fields
.field public static final EDIT_PHOTO_REQUEST:I = 0x2724

.field public static final PIC_DESCRIB_INFO_NAME:Ljava/lang/String; = "describe"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

.field private mCurrPhotoPath:Ljava/lang/String;

.field private mCurrSoundInfo:Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;

.field private mDialogLayout:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private mIndex:I

.field private mIsCamera360:Z

.field private mLastPlayedPhoto:Ljava/lang/String;

.field private mPhotoCameraModeIndex:I

.field private mPhotoItem:Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;

.field private mPhotoPageModel:Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;

.field private mPhotoPageView:Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;

.field private mPicInfoDialog:Landroid/app/Dialog;

.field private mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

.field private mShareListListener:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$OnShareListClick;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "none"

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mLastPlayedPhoto:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mCurrPhotoPath:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoCameraModeIndex:I

    return-void
.end method

.method private MakeEffectForCamera360(Landroid/view/View;)V
    .registers 5

    :try_start_0
    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->checkPhotoState()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->checkJpg()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->enterPhotoEditModel(Landroid/view/View;)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    const-string/jumbo v1, "finished"

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoItem:Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;

    invoke-virtual {v2}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getProjectState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->onClick(Landroid/view/View;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    goto :goto_f

    :catch_23
    move-exception v0

    sget-object v1, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "can not get project state ....."

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    :cond_30
    :try_start_30
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    const v2, 0x7f0800b5

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/RootActivity;->showToastShort(I)Lcom/pinguo/camera360/lib/ui/RotateTextToast;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_38} :catch_23

    goto :goto_f
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mIsCamera360:Z

    return v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mCurrPhotoPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;)Lcom/pinguo/camera360/gallery/RootActivity;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;)Landroid/app/Dialog;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPicInfoDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->savePicDescriInfoToDB(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private checkBitmap(Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1e

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v2, :cond_1f

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v2, :cond_1f

    :cond_1e
    :goto_1e
    return v1

    :cond_1f
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method private checkJpg()Z
    .registers 8

    const v6, 0x7f0802ab

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mIsCamera360:Z

    if-eqz v4, :cond_1f

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    invoke-virtual {v4}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectPath()Ljava/lang/String;

    move-result-object v2

    :goto_e
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_22

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v4, v6}, Lcom/pinguo/camera360/gallery/RootActivity;->showToastShort(I)Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    :goto_1e
    return v3

    :cond_1f
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mCurrPhotoPath:Ljava/lang/String;

    goto :goto_e

    :cond_22
    invoke-direct {p0, v2}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->checkBitmap(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2e

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v4, v6}, Lcom/pinguo/camera360/gallery/RootActivity;->showToastShort(I)Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    goto :goto_1e

    :cond_2e
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, ".jpg"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4a

    const-string/jumbo v4, ".jpeg"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    :cond_4a
    const/4 v3, 0x1

    goto :goto_1e

    :cond_4c
    iget-object v4, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v4, v6}, Lcom/pinguo/camera360/gallery/RootActivity;->showToastShort(I)Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    goto :goto_1e
.end method

.method private checkPhotoState()Z
    .registers 5

    sget-object v1, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " canTheProjectBeEdited :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    invoke-virtual {v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pinguo/camera360/save/processer/PhotoProcesserUtils;->canTheProjectBeEdited(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1f
    invoke-static {}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    invoke-virtual {v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getPhotoProjectForTime(J)Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoItem:Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;

    sget-object v1, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " canTheProjectBeEdited , get state from db : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoItem:Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;

    invoke-virtual {v3}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getProjectState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_4a} :catch_58

    const-string/jumbo v1, "finished"

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoItem:Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;

    invoke-virtual {v2}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getProjectState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_57
    return v1

    :catch_58
    move-exception v0

    sget-object v1, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "can not get project state ....."

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_57
.end method

.method private getPicDescInfoFromJson(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-nez p1, :cond_4

    const/4 v3, 0x0

    :goto_3
    return-object v3

    :cond_4
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "describe"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_14} :catch_16

    move-result-object v3

    goto :goto_3

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string/jumbo v3, ""

    goto :goto_3
.end method

.method private savePicDescriInfoToDB(Ljava/lang/String;ILjava/lang/String;)V
    .registers 15

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-static {}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;->galleryPicDetailsEdit()V

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v5}, Lcom/pinguo/camera360/gallery/RootActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    invoke-static {p3}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCRC32forFile(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :try_start_27
    const-string/jumbo v5, "describe"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_2d} :catch_70

    :goto_2d
    const-string/jumbo v5, "eftAppendix"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/pinguo/camera360/gallery/data/model/C360Photo;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v6, "id= ?"

    new-array v7, v10, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPicInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->cancel()V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setIsChangedPicDesciribe(Z)V

    sget-object v5, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "save pic describe ---"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "--info done"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_70
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2d
.end method

.method private showVideoInfoDialog()V
    .registers 25

    const/16 v17, 0x0

    :try_start_2
    invoke-static {}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getVideoInfo(J)Lcom/pinguo/camera360/video/VideoInfo;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_17

    move-result-object v17

    :goto_14
    if-nez v17, :cond_1c

    :goto_16
    return-void

    :catch_17
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14

    :cond_1c
    new-instance v18, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    move-object/from16 v19, v0

    const v20, 0x7f090043

    invoke-direct/range {v18 .. v20}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/pinguo/camera360/gallery/RootActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v19, 0x7f030035

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    :try_start_49
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string/jumbo v19, "yyyy/MM/dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v13, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v19, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J

    move-result-wide v20

    invoke-direct/range {v19 .. v21}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    sget-object v19, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "data = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_85} :catch_21b

    :goto_85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/pinguo/camera360/gallery/RootActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v19, 0x7f0a0149

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    const v19, 0x7f080085

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v19, 0x7f0a014a

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    sget-object v19, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "time = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v19, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "resources.getString(R.string.album_picture_token) = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v21, 0x7f080096

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v19, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "String.format(resources.getString(R.string.album_picture_token),data) = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v21, 0x7f080096

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v3, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const v19, 0x7f080096

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v3, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v19, 0x7f0a014b

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v19, 0x7f0a014c

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v19, 0x7f0a014d

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const v19, 0x7f0a0151

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    const v19, 0x7f080086

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Lcom/pinguo/camera360/video/VideoInfo;->getVideoWidth()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v23, " x "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v17 .. v17}, Lcom/pinguo/camera360/video/VideoInfo;->getVideoHeight()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {v17 .. v17}, Lcom/pinguo/camera360/video/VideoInfo;->getVideoLength()J

    move-result-wide v19

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->formatFileSize(J)Ljava/lang/String;

    move-result-object v8

    const v19, 0x7f080087

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v8, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v19, 0x7f0a014e

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    new-instance v19, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$1;-><init>(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;Landroid/app/Dialog;)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual/range {v18 .. v18}, Landroid/app/Dialog;->show()V

    invoke-static {}, Lcom/pinguo/lib/UIContants;->getDisplaySize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v12

    invoke-virtual/range {v18 .. v18}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v19

    invoke-virtual {v12}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x3feb333333333333L

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    const/16 v21, -0x2

    invoke-virtual/range {v19 .. v21}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_16

    :catch_21b
    move-exception v6

    sget-object v19, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_85
.end method


# virtual methods
.method public create(Lcom/pinguo/camera360/gallery/RootActivity;Landroid/os/Bundle;Landroid/os/Handler;)V
    .registers 6

    const-string/jumbo v0, "path-c360"

    const-string/jumbo v1, "media-path-id"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mIsCamera360:Z

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    new-instance v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;

    invoke-direct {v0, p1}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;-><init>(Lcom/pinguo/camera360/base/BaseActivity;)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageModel:Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageModel:Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->onCreate()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageModel:Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->setListener(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$OnSoundPlayCompletedListener;)V

    iput-object p3, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;

    invoke-direct {v0, p1, p3}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;-><init>(Lcom/pinguo/camera360/base/BaseActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageView:Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageView:Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->init(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageView:Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;

    iget-boolean v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mIsCamera360:Z

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->setUiType(Z)V

    new-instance v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$OnShareListClick;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$OnShareListClick;-><init>(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$OnShareListClick;)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mShareListListener:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$OnShareListClick;

    return-void
.end method

.method public destroy()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageModel:Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->onDestroy()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageView:Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->destroy()V

    return-void
.end method

.method public enterPhotoEditModel(Landroid/view/View;)V
    .registers 10

    const/4 v3, 0x0

    const/4 v5, 0x1

    iget-boolean v4, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mIsCamera360:Z

    if-eqz v4, :cond_5b

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    invoke-virtual {v4}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectPath()Ljava/lang/String;

    move-result-object v0

    :goto_c
    iget-boolean v4, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mIsCamera360:Z

    if-eqz v4, :cond_5e

    sget-object v4, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->photo_org:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    invoke-virtual {v6}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;

    move-result-object v1

    :goto_1c
    iget-boolean v4, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mIsCamera360:Z

    if-eqz v4, :cond_60

    sget-object v3, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->share:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    invoke-virtual {v4}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;

    move-result-object v2

    :goto_2c
    iget-boolean v3, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mIsCamera360:Z

    if-eqz v3, :cond_51

    sget-object v3, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;

    iget-object v3, v3, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    invoke-virtual {v4}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    sget-object v3, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_EDIT_ORG:Lcom/pinguo/camera360/effect/model/entity/Effect;

    iget-object v3, v3, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    invoke-virtual {v4}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    :cond_50
    const/4 v5, 0x0

    :cond_51
    iget-object v3, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    iget-boolean v4, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mIsCamera360:Z

    iget v6, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mIndex:I

    invoke-static/range {v0 .. v6}, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->startEditFromCamera360(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;ZZI)V

    return-void

    :cond_5b
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mCurrPhotoPath:Ljava/lang/String;

    goto :goto_c

    :cond_5e
    move-object v1, v3

    goto :goto_1c

    :cond_60
    move-object v2, v3

    goto :goto_2c
.end method

.method public formatFileSize(J)Ljava/lang/String;
    .registers 10

    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v2, "#.00"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ""

    const-wide/16 v2, 0x400

    cmp-long v2, p1, v2

    if-gez v2, :cond_2b

    new-instance v2, Ljava/lang/StringBuilder;

    long-to-double v3, p1

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "B"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2a
    return-object v1

    :cond_2b
    const-wide/32 v2, 0x100000

    cmp-long v2, p1, v2

    if-gez v2, :cond_4f

    new-instance v2, Ljava/lang/StringBuilder;

    long-to-double v3, p1

    const-wide/high16 v5, 0x4090

    div-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2a

    :cond_4f
    const-wide/32 v2, 0x40000000

    cmp-long v2, p1, v2

    if-gez v2, :cond_73

    new-instance v2, Ljava/lang/StringBuilder;

    long-to-double v3, p1

    const-wide/high16 v5, 0x4130

    div-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2a

    :cond_73
    new-instance v2, Ljava/lang/StringBuilder;

    long-to-double v3, p1

    const-wide/high16 v5, 0x41d0

    div-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2a
.end method

.method public getContentUri(I)Landroid/net/Uri;
    .registers 5

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getCurrPhotoCameraModeIndex()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoCameraModeIndex:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    const v4, 0x7f080247

    const/16 v3, 0x5dc

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_cc

    :cond_d
    :goto_d
    return-void

    :sswitch_e
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageModel:Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageModel:Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->stopCurrSound()V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageView:Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->stopPlaySoundAnimation()V

    :cond_20
    :goto_20
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageView:Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->hideShareList()V

    goto :goto_d

    :cond_26
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageModel:Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->playCurrSound()Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageView:Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->startPlaySoundAnimation()V

    goto :goto_20

    :sswitch_34
    const v1, 0x7f0a0120

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;->galleryBigPictureShowLayBtnClick(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageView:Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mShareListListener:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$OnShareListClick;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->switchShareListState(Lcom/pinguo/share/ui/ShareListView$ShareClickListener;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageModel:Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageModel:Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->stopCurrSound()V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageView:Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->stopPlaySoundAnimation()V

    goto :goto_d

    :sswitch_57
    invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->canProcessPicture()Z

    move-result v1

    if-nez v1, :cond_6c

    new-instance v0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-direct {v0, v1, v4, v2}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show(I)V

    goto :goto_d

    :cond_6c
    const v1, 0x7f0a0121

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;->galleryBigPictureShowLayBtnClick(I)V

    iget-boolean v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mIsCamera360:Z

    if-eqz v1, :cond_7f

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->MakeEffectForCamera360(Landroid/view/View;)V

    :cond_79
    :goto_79
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageView:Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->hideShareList()V

    goto :goto_d

    :cond_7f
    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->checkJpg()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->enterPhotoEditModel(Landroid/view/View;)V

    goto :goto_79

    :sswitch_89
    invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->canProcessPicture()Z

    move-result v1

    if-nez v1, :cond_9f

    new-instance v0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-direct {v0, v1, v4, v2}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show(I)V

    goto/16 :goto_d

    :cond_9f
    const v1, 0x7f0a0122

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;->galleryBigPictureShowLayBtnClick(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageView:Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->hideShareList()V

    iget-boolean v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mIsCamera360:Z

    if-eqz v1, :cond_b3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->MakeEffectForCamera360(Landroid/view/View;)V

    goto/16 :goto_d

    :cond_b3
    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->checkJpg()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->enterPhotoEditModel(Landroid/view/View;)V

    goto/16 :goto_d

    :sswitch_be
    const v1, 0x7f0a0123

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;->galleryBigPictureShowLayBtnClick(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageView:Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->hideShareList()V

    goto/16 :goto_d

    nop

    :sswitch_data_cc
    .sparse-switch
        0x7f0a0120 -> :sswitch_34
        0x7f0a0121 -> :sswitch_57
        0x7f0a0122 -> :sswitch_89
        0x7f0a0123 -> :sswitch_be
        0x7f0a0147 -> :sswitch_e
    .end sparse-switch
.end method

.method public onLongPress(Lcom/pinguo/camera360/gallery/data/MediaItem;)V
    .registers 27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getCameraModeIndex()I

    move-result v20

    const/16 v21, 0xe

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1e

    invoke-direct/range {p0 .. p0}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->showVideoInfoDialog()V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPicInfoDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    if-nez v20, :cond_64

    new-instance v20, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    move-object/from16 v21, v0

    const v22, 0x7f090043

    invoke-direct/range {v20 .. v22}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPicInfoDialog:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPicInfoDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/pinguo/camera360/gallery/RootActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v20, 0x7f030035

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mDialogLayout:Landroid/widget/LinearLayout;

    :cond_64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPicInfoDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    if-eqz v20, :cond_78

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPicInfoDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Dialog;->isShowing()Z

    move-result v20

    if-nez v20, :cond_1d

    :cond_78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPicInfoDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    move-object/from16 v10, p1

    check-cast v10, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;

    const/4 v3, 0x0

    :try_start_88
    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string/jumbo v20, "yyyy/MM/dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v20, Ljava/util/Date;

    invoke-virtual {v10}, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->getDateInMs()J

    move-result-wide v21

    invoke-direct/range {v20 .. v22}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    sget-object v20, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "data = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_c2} :catch_28d

    :goto_c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/pinguo/camera360/gallery/RootActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mDialogLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const v21, 0x7f0a0149

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mDialogLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const v21, 0x7f0a014a

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    const v20, 0x7f080096

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v3, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mDialogLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const v21, 0x7f0a014b

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mDialogLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const v21, 0x7f0a014c

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mDialogLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const v21, 0x7f0a014d

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mDialogLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const v21, 0x7f0a0150

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mDialogLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const v21, 0x7f0a0151

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    check-cast p1, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->filePath:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const v20, 0x7f080097

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v24, " x "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v20, Ljava/io/File;

    iget-object v0, v10, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->filePath:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->length()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->formatFileSize(J)Ljava/lang/String;

    move-result-object v7

    const v20, 0x7f080098

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v7, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v10, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->effectName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_29c

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const v20, 0x7f080099

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    iget-object v0, v10, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->effectName:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_213
    instance-of v0, v10, Lcom/pinguo/camera360/gallery/data/Image;

    move/from16 v20, v0

    if-eqz v20, :cond_2a5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mDialogLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const v21, 0x7f0a014e

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    :goto_22b
    new-instance v20, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10, v13}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$4;-><init>(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;Lcom/pinguo/camera360/gallery/data/LocalMediaItem;Landroid/widget/EditText;)V

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPicInfoDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    new-instance v21, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$5;-><init>(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;Landroid/widget/EditText;)V

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPicInfoDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mDialogLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPicInfoDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Dialog;->show()V

    invoke-static {}, Lcom/pinguo/lib/UIContants;->getDisplaySize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPicInfoDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v20

    invoke-virtual {v15}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide v23, 0x3feb333333333333L

    mul-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v21, v0

    const/16 v22, -0x2

    invoke-virtual/range {v20 .. v22}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_1d

    :catch_28d
    move-exception v5

    sget-object v20, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c2

    :cond_29c
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_213

    :cond_2a5
    iget-object v0, v10, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->picDescribeInfo:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2be

    iget-object v0, v10, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->picDescribeInfo:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->getPicDescInfoFromJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2be
    new-instance v20, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$2;-><init>(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;Landroid/widget/EditText;)V

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v20, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$3;-><init>(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;)V

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto/16 :goto_22b
.end method

.method public onPhotoBrowsed(Ljava/lang/String;IZ)V
    .registers 10

    const/4 v2, 0x0

    iput p2, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mIndex:I

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageView:Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;

    invoke-virtual {v3, p3}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->setEditable(Z)V

    if-nez p1, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    sget-object v3, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onPhotoBrowsed : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mCurrPhotoPath:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mIsCamera360:Z

    if-nez v3, :cond_34

    sget-object v3, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, " Photo is not in Camera360 gallery , do not play sound ."

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageView:Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;

    invoke-virtual {v3, v2}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->setUiType(Z)V

    goto :goto_a

    :cond_34
    iget-object v3, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mLastPlayedPhoto:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mLastPlayedPhoto:Ljava/lang/String;

    :try_start_3e
    iget-object v3, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageModel:Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;

    invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->checkAndStopCurrPlayingSound()V

    invoke-static {}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->selectPhotoProject(Ljava/lang/String;)Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;

    move-result-object v3

    iput-object v3, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoItem:Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoItem:Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;

    invoke-static {v3}, Lcom/pinguo/camera360/save/processer/PhotoProcesserUtils;->createPictureInfoFromItem(Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;)Lcom/pinguo/camera360/photoedit/PictureInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoItem:Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;

    if-eqz v3, :cond_c3

    sget-object v3, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " mPhotoItem : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoItem:Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoItem:Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;

    invoke-virtual {v3}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getExif()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->json2SoundInfo(Ljava/lang/String;)Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mCurrSoundInfo:Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;

    sget-object v3, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " mCurrSoundInfo : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mCurrSoundInfo:Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageModel:Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;

    invoke-virtual {v3, v1}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->prepareSoundPhoto(Lcom/pinguo/camera360/photoedit/PictureInfo;)V

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageModel:Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;

    invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->playCurrSound()Z

    move-result v3

    if-eqz v3, :cond_a5

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageView:Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;

    invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->startPlaySoundAnimation()V

    :cond_a5
    iget-object v3, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    invoke-virtual {v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getCameraModeIndex()I

    move-result v3

    iput v3, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoCameraModeIndex:I

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageView:Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;

    iget v4, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoCameraModeIndex:I

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mCurrSoundInfo:Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;

    if-eqz v5, :cond_b6

    const/4 v2, 0x1

    :cond_b6
    invoke-virtual {v3, v4, v2}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->updateBottomByMode(IZ)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_b9} :catch_bb

    goto/16 :goto_a

    :catch_bb
    move-exception v0

    sget-object v2, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    :cond_c3
    :try_start_c3
    sget-object v2, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " Can not find project in DB : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_d8} :catch_bb

    goto/16 :goto_a
.end method

.method public onPlayCompleted()V
    .registers 2

    invoke-static {}, Lcom/pinguo/lib/log/GLogger;->logMethodName()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageView:Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->stopPlaySoundAnimation()V

    return-void
.end method

.method public onPlayError()V
    .registers 3

    invoke-static {}, Lcom/pinguo/lib/log/GLogger;->logMethodName()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageView:Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->stopPlaySoundAnimation()V

    sget-object v0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPlayError, stop play sound."

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageModel:Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageModel:Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->stopCurrSound()V

    :cond_1d
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12

    const/16 v8, 0xb2

    const/16 v7, 0xab

    const/16 v6, 0x49

    const/4 v5, 0x3

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_f0

    :cond_f
    :goto_f
    const/4 v3, 0x0

    :goto_10
    return v3

    :pswitch_11
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-nez v4, :cond_54

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    if-eqz v4, :cond_2c

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    invoke-virtual {v4}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getCameraModeIndex()I

    move-result v4

    if-ne v4, v3, :cond_2c

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    const v5, 0x7f080310

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/gallery/RootActivity;->showToastShort(I)Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    goto :goto_10

    :cond_2c
    iget-object v4, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    if-eqz v4, :cond_39

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    invoke-virtual {v4}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getCameraModeIndex()I

    move-result v4

    const/4 v5, 0x7

    if-eq v4, v5, :cond_42

    :cond_39
    iget-object v4, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    invoke-virtual {v4}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getCameraModeIndex()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4b

    :cond_42
    iget-object v4, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    const v5, 0x7f080312

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/gallery/RootActivity;->showToastShort(I)Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    goto :goto_10

    :cond_4b
    iget-object v4, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    const v5, 0x7f080312

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/gallery/RootActivity;->showToastShort(I)Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    goto :goto_10

    :cond_54
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v1, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v2, v4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_7a

    check-cast p1, Landroid/widget/TextView;

    const/16 v3, 0xff

    const/16 v4, 0xe0

    invoke-static {v3, v4, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_f

    :cond_7a
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_8c

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v3, :cond_8c

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_f

    :cond_8c
    check-cast p1, Landroid/widget/TextView;

    const/16 v3, 0xba

    invoke-static {v7, v8, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_f

    :pswitch_99
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-nez v4, :cond_a9

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    const v5, 0x7f080311

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/gallery/RootActivity;->showToastShort(I)Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    goto/16 :goto_10

    :cond_a9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v1, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v2, v4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_d0

    check-cast p1, Landroid/widget/TextView;

    const/16 v3, 0xff

    const/16 v4, 0xe0

    invoke-static {v3, v4, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_f

    :cond_d0
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_e2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v3, :cond_e2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_f

    :cond_e2
    check-cast p1, Landroid/widget/TextView;

    const/16 v3, 0xba

    invoke-static {v7, v8, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_f

    nop

    :pswitch_data_f0
    .packed-switch 0x7f0a0121
        :pswitch_11
        :pswitch_99
    .end packed-switch
.end method

.method public onTouchDown()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageView:Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->hideShareList()V

    return-void
.end method

.method public onVideoButtonBlick()V
    .registers 10

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    invoke-virtual {v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getCameraModeIndex()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_55

    const/4 v6, 0x0

    :try_start_f
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/RootActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    invoke-virtual {v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getVideoPath(J)Ljava/lang/String;

    move-result-object v8

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const-string/jumbo v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->getContentUri(I)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {p0, v1, v2, v3}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->playVideo(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_f .. :try_end_50} :catchall_60
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_50} :catch_56

    if-eqz v6, :cond_55

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_55
    :goto_55
    return-void

    :catch_56
    move-exception v7

    :try_start_57
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_60

    if-eqz v6, :cond_55

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_55

    :catchall_60
    move-exception v1

    if-eqz v6, :cond_66

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_66
    throw v1
.end method

.method public pause()V
    .registers 3

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mIsCamera360:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageModel:Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->checkAndStopCurrPlayingSound()V

    :cond_9
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPicInfoDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPicInfoDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPicInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    :cond_18
    return-void
.end method

.method public playVideo(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 8

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "video/*"

    invoke-virtual {v2, p2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_12
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    const v2, 0x7f080339

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_12
.end method

.method public resume()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageView:Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->resume()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPhotoPageModel:Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->onResume()V

    return-void
.end method
