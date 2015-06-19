.class public Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;
.super Lcom/pinguo/camera360/base/BaseFragment;
.source "IdCameraPictureFragment.java"
.implements Landroid/view/View$OnClickListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.field private static final TAG:Ljava/lang/String;
.field private idPhotoPaths:Ljava/util/ArrayList;
.field private mBackToCamera:Landroid/widget/ImageView;
.field private mCameraButton:Landroid/view/View;
.field private mCouldMakeIdPhoto:Z
.field private mCountContainer:Landroid/view/View;
.field private mCurrCount:Landroid/widget/TextView;
.field private mDeleteDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
.field private mDeletePhoto:Landroid/widget/TextView;
.field private mEmptyTipsLayout:Landroid/view/View;
.field private mIdPhotoAdapter:Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$IdPhotoAdapter;
.field private mIdPhotoGroup:Landroid/widget/RelativeLayout;
.field private mStartMakeIdPhotoBtn:Landroid/widget/Button;
.field private mSyncDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
.field private mTotalCount:Landroid/widget/TextView;
.field private mViewPager:Landroid/support/v4/view/ViewPager;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseFragment;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->idPhotoPaths:Ljava/util/ArrayList;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;)Landroid/support/v4/view/ViewPager;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->idPhotoPaths:Ljava/util/ArrayList;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$IdPhotoAdapter;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mIdPhotoAdapter:Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$IdPhotoAdapter;
return-void
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;)Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$IdPhotoAdapter;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mIdPhotoAdapter:Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$IdPhotoAdapter;
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mEmptyTipsLayout:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->updateCountTip()V
return-void
.end method
.method static synthetic access$6()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->TAG:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$7(Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->deletePicture()V
return-void
.end method
.method private checkAndTipCurrPhoto()Z
.registers 6
const/4 v2, 0x0
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mIdPhotoAdapter:Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$IdPhotoAdapter;
if-eqz v3, :cond_d
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mIdPhotoAdapter:Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$IdPhotoAdapter;
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$IdPhotoAdapter;->getCount()I
move-result v3
if-nez v3, :cond_e
:goto_d
:cond_d
return v2
:cond_e
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->checkCurrPhoto()Z
move-result v3
if-nez v3, :cond_49
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mSyncDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
if-nez v3, :cond_43
new-instance v3, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
invoke-direct {v3, v4}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V
const v4, 0x7f08018d
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setMessage(I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
move-result-object v0
new-instance v1, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$DeleteDialogListener;
const/4 v3, 0x0
invoke-direct {v1, p0, v3}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$DeleteDialogListener;-><init>(Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$DeleteDialogListener;)V
const v3, 0x7f0802c5
invoke-virtual {v0, v3, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
move-result-object v3
const v4, 0x7f0802c6
invoke-virtual {v3, v4, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->show()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v3
iput-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mSyncDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
goto :goto_d
:cond_43
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mSyncDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V
goto :goto_d
:cond_49
const/4 v2, 0x1
goto :goto_d
.end method
.method private checkCurrPhoto()Z
.registers 5
const/4 v2, 0x0
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I
move-result v0
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->idPhotoPaths:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
if-lt v0, v3, :cond_10
:goto_f
:cond_f
return v2
:cond_10
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->idPhotoPaths:Ljava/util/ArrayList;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
if-eqz v1, :cond_f
new-instance v3, Ljava/io/File;
invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_f
const/4 v2, 0x1
goto :goto_f
.end method
.method private checkPhotoSizeCouldMake()Z
.registers 10
const/4 v5, 0x1
iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I
move-result v3
iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->idPhotoPaths:Ljava/util/ArrayList;
invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
new-instance v1, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V
iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I
sget-object v6, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->TAG:Ljava/lang/String;
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "picture width:"
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
const-string/jumbo v8, ", height:"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
const/16 v6, 0x244
if-lt v4, v6, :cond_45
const/16 v6, 0x30c
if-ge v0, v6, :cond_46
:cond_45
const/4 v5, 0x0
:cond_46
return v5
.end method
.method private deletePicture()V
.registers 13
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
invoke-virtual {v9}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I
move-result v6
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->idPhotoPaths:Ljava/util/ArrayList;
invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
move-result v9
if-lez v9, :cond_6b
sget-object v10, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->TAG:Ljava/lang/String;
new-instance v11, Ljava/lang/StringBuilder;
const-string/jumbo v9, "deletePicture path = "
invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->idPhotoPaths:Ljava/util/ArrayList;
invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v9
check-cast v9, Ljava/lang/String;
invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const-string/jumbo v11, "position = "
invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v10, v9}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->idPhotoPaths:Ljava/util/ArrayList;
invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/lang/String;
:try_start_3e
new-instance v4, Ljava/io/File;
invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/io/File;->exists()Z
move-result v9
if-eqz v9, :cond_6b
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppInstance()Lcom/pinguo/camera360/PgCameraApplication;
move-result-object v0
if-eqz v0, :cond_6b
new-instance v2, Lcom/pinguo/camera360/gallery/data/Path;
const/16 v9, 0x3ec
invoke-direct {v2, v9, v5}, Lcom/pinguo/camera360/gallery/data/Path;-><init>(ILjava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;
move-result-object v9
invoke-virtual {v9, v5}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getTakenTimeFromPath(Ljava/lang/String;)J
move-result-wide v7
invoke-virtual {v2, v7, v8}, Lcom/pinguo/camera360/gallery/data/Path;->setTokenMills(J)V
invoke-virtual {v0}, Lcom/pinguo/camera360/PgCameraApplication;->getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;
move-result-object v1
if-eqz v1, :cond_6b
const/4 v9, 0x1
invoke-virtual {v1, v2, v9}, Lcom/pinguo/camera360/gallery/data/DataManager;->deleteSingle(Lcom/pinguo/camera360/gallery/data/Path;Z)V
:try_end_6b
.catch Ljava/lang/Exception; {:try_start_3e .. :try_end_6b} :catch_74
:goto_6b
:cond_6b
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mIdPhotoAdapter:Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$IdPhotoAdapter;
invoke-virtual {v9}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$IdPhotoAdapter;->notifyDataSetChanged()V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->updateCountTip()V
return-void
:catch_74
move-exception v3
const-string/jumbo v9, "IdCameraPictureFragment"
invoke-static {v9, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_6b
.end method
.method private initListener()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mCameraButton:Landroid/view/View;
invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mStartMakeIdPhotoBtn:Landroid/widget/Button;
invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mBackToCamera:Landroid/widget/ImageView;
invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mDeletePhoto:Landroid/widget/TextView;
invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
return-void
.end method
.method private sync(Ljava/util/List;)V
.registers 5
new-instance v0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$SyncDeletedPhotoTask;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$SyncDeletedPhotoTask;-><init>(Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$SyncDeletedPhotoTask;)V
const/4 v1, 0x1
new-array v1, v1, [Ljava/util/List;
const/4 v2, 0x0
aput-object p1, v1, v2
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$SyncDeletedPhotoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
return-void
.end method
.method private updateCountTip()V
.registers 7
const/4 v5, 0x0
const/4 v4, 0x4
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->idPhotoPaths:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_5f
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mCountContainer:Landroid/view/View;
invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mTotalCount:Landroid/widget/TextView;
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->idPhotoPaths:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
const v3, 0x7f08018c
invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;
move-result-object v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mCurrCount:Landroid/widget/TextView;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I
move-result v1
add-int/lit8 v1, v1, 0x1
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mEmptyTipsLayout:Landroid/view/View;
invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mDeletePhoto:Landroid/widget/TextView;
invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mCouldMakeIdPhoto:Z
if-eqz v0, :cond_5e
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mStartMakeIdPhotoBtn:Landroid/widget/Button;
invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V
:goto_5e
:cond_5e
return-void
:cond_5f
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mCountContainer:Landroid/view/View;
invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mTotalCount:Landroid/widget/TextView;
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mCurrCount:Landroid/widget/TextView;
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mEmptyTipsLayout:Landroid/view/View;
invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mDeletePhoto:Landroid/widget/TextView;
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mCouldMakeIdPhoto:Z
if-eqz v0, :cond_5e
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mStartMakeIdPhotoBtn:Landroid/widget/Button;
invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V
goto :goto_5e
.end method
.method public onClick(Landroid/view/View;)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x0
sget-object v0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "onClick"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
sparse-switch v0, :sswitch_data_a6
:cond_10
:goto_10
const-string v1, " - Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:sswitch_11
const v0, 0x7f0a00b1
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportGalleryLayBtnClick(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V
goto :goto_10
:sswitch_1f
const v0, 0x7f0a02e3
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportGalleryLayBtnClick(I)V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->checkAndTipCurrPhoto()Z
move-result v0
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mDeleteDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
if-nez v0, :cond_59
new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V
const v1, 0x7f0801df
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setMessage(I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
move-result-object v6
new-instance v7, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$DeleteDialogListener;
invoke-direct {v7, p0, v4}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$DeleteDialogListener;-><init>(Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$DeleteDialogListener;)V
const v0, 0x7f0802c5
invoke-virtual {v6, v0, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
move-result-object v0
const v1, 0x7f0802c6
invoke-virtual {v0, v1, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->show()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mDeleteDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
goto :goto_10
:cond_59
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mDeleteDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V
goto :goto_10
:sswitch_5f
const v0, 0x7f0a02e5
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportGalleryLayBtnClick(I)V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->checkAndTipCurrPhoto()Z
move-result v0
if-eqz v0, :cond_10
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->checkPhotoSizeCouldMake()Z
move-result v0
if-nez v0, :cond_82
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v1, 0x7f080352
const v2, 0x7f08018f
const/16 v3, -0x3e7
move-object v5, v4
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
goto :goto_10
:cond_82
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mCouldMakeIdPhoto:Z
if-eqz v0, :cond_10
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->idPhotoPaths:Ljava/util/ArrayList;
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I
move-result v2
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v1, v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListActivity;->startActivity(Landroid/content/Context;Ljava/lang/String;)V
goto/16 :goto_10
:sswitch_9d
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V
goto/16 :goto_10
:sswitch_data_a6
.sparse-switch
0x7f0a00b1 -> :sswitch_11
0x7f0a02e3 -> :sswitch_1f
0x7f0a02e5 -> :sswitch_5f
0x7f0a02e9 -> :sswitch_9d
.end sparse-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v1, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->TAG:Ljava/lang/String;
const-string/jumbo v2, "onCreate"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/order/model/IdPassportSort;->create(Landroid/content/Context;)Lcom/pinguo/camera360/order/model/IdPassportSort;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/order/model/IdPassportSort;->remoteLoad()V
invoke-static {}, Lcom/pinguo/camera360/push/utils/SystemUtil;->isZhCn()Z
move-result v1
if-eqz v1, :cond_2a
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getIdPassportOpenState()Z
move-result v1
if-eqz v1, :cond_2a
const/4 v1, 0x1
:goto_27
iput-boolean v1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mCouldMakeIdPhoto:Z
const-string v1, " - Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_2a
const/4 v1, 0x0
goto :goto_27
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 8
sget-object v1, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->TAG:Ljava/lang/String;
const-string/jumbo v2, "onCreateView"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const v1, 0x7f030081
const/4 v2, 0x0
invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/RelativeLayout;
iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mIdPhotoGroup:Landroid/widget/RelativeLayout;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mIdPhotoGroup:Landroid/widget/RelativeLayout;
new-instance v2, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$1;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$1;-><init>(Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;)V
invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mIdPhotoGroup:Landroid/widget/RelativeLayout;
const v2, 0x7f0a02ed
invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/support/v4/view/ViewPager;
iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mIdPhotoGroup:Landroid/widget/RelativeLayout;
const v2, 0x7f0a00b1
invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mBackToCamera:Landroid/widget/ImageView;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mIdPhotoGroup:Landroid/widget/RelativeLayout;
const v2, 0x7f0a02e5
invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/Button;
iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mStartMakeIdPhotoBtn:Landroid/widget/Button;
iget-boolean v1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mCouldMakeIdPhoto:Z
if-nez v1, :cond_50
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mStartMakeIdPhotoBtn:Landroid/widget/Button;
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V
:cond_50
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mIdPhotoGroup:Landroid/widget/RelativeLayout;
const v2, 0x7f0a02e3
invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mDeletePhoto:Landroid/widget/TextView;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mIdPhotoGroup:Landroid/widget/RelativeLayout;
const v2, 0x7f0a02e6
invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mEmptyTipsLayout:Landroid/view/View;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mIdPhotoGroup:Landroid/widget/RelativeLayout;
const v2, 0x7f0a02ec
invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mTotalCount:Landroid/widget/TextView;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mIdPhotoGroup:Landroid/widget/RelativeLayout;
const v2, 0x7f0a02eb
invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mCurrCount:Landroid/widget/TextView;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mIdPhotoGroup:Landroid/widget/RelativeLayout;
const v2, 0x7f0a02e9
invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mCameraButton:Landroid/view/View;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mIdPhotoGroup:Landroid/widget/RelativeLayout;
const v2, 0x7f0a02ea
invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mCountContainer:Landroid/view/View;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
const/4 v2, 0x2
invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
const/16 v2, 0xa
invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V
:try_start_a5
invoke-static {}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getAllIdPhotoPath()Ljava/util/ArrayList;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->idPhotoPaths:Ljava/util/ArrayList;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->idPhotoPaths:Ljava/util/ArrayList;
invoke-direct {p0, v1}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->sync(Ljava/util/List;)V
sget-object v1, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "idPhotoPaths = "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->idPhotoPaths:Ljava/util/ArrayList;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:goto_cb
:try_end_cb
.catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_cb} :catch_ce
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mIdPhotoGroup:Landroid/widget/RelativeLayout;
return-object v1
:catch_ce
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_cb
.end method
.method public onDestroy()V
.registers 4
const-string v1, " + Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
sget-object v0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "onDestroy"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onDestroy()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->destroyDrawingCache()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->removeAllViews()V
iput-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->idPhotoPaths:Ljava/util/ArrayList;
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->idPhotoPaths:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
iput-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->idPhotoPaths:Ljava/util/ArrayList;
:cond_23
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mStartMakeIdPhotoBtn:Landroid/widget/Button;
invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mBackToCamera:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mDeletePhoto:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
if-eqz v0, :cond_3b
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
:cond_3b
const-string v1, " - Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onPageScrollStateChanged(I)V
.registers 2
return-void
.end method
.method public onPageScrolled(IFI)V
.registers 4
return-void
.end method
.method public onPageSelected(I)V
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->updateCountTip()V
return-void
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "onPause"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onPause()V
const-string v1, " - Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "onResume"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onResume()V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->initListener()V
const-string v1, " - Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStop()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "onStop"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onStop()V
const-string v1, " - Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method