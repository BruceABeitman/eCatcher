.class public Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
.super Ljava/lang/Object;
.source "AlbumActionBar.java"
.implements Landroid/view/View$OnClickListener;
.field public static final ACION_MODE_ALBUM_BROWSE:I = 0x8
.field public static final ACION_MODE_NAVIGATION:I = 0x2
.field public static final ACION_MODE_NONE:I = 0x1
.field public static final ACION_MODE_PHOTO_BROWSE:I = 0x10
.field public static final ACION_MODE_PHOTO_EDIT:I = 0x20
.field public static final ACION_MODE_SELECTION:I = 0x4
.field public static final ACTION_FROM_SYNC_PHOTO:I = -0x1
.field public static final ACTION_MODE_PICK_ONE_PHOTO:I = 0x40
.field public static final ACTION_MODE_PICK_PHOTOS:I = 0x100
.field public static final ACTION_MODE_SELECTION_ALBUMSET:I = 0x80
.field private static final AD_UNIT_ID:Ljava/lang/String; = "a153460711125ba"
.field public static final CONFIG_URL:Ljava/lang/String; = "http://admaster.mobi/sdkconfig.xml"
.field public static final EXECUTION_RESULT_CANCEL:I = 0x3
.field public static final EXECUTION_RESULT_FAIL:I = 0x2
.field public static final EXECUTION_RESULT_SUCCESS:I = 0x1
.field private static final MSG_DO_SHARE:I = 0x3
.field private static final MSG_TASK_COMPLETE:I = 0x1
.field private static final MSG_TASK_UPDATE:I = 0x2
.field public static final REQUEST_CODE_USER_LOGIN:I = 0x3e8
.field private static final TAG:Ljava/lang/String; = "AlbumActionBar"
.field private static final TAG_AD:Ljava/lang/String; = "AD"
.field public static final TEST_TRACKING_URL:Ljava/lang/String; = "http://admaster.mobi/android/log/a222,c123,b132,"
.field  count:I
.field private mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
.field private mActivityState:Lcom/pinguo/camera360/gallery/ActivityState;
.field private mAdLayout:Landroid/widget/FrameLayout;
.field private mAlbumNaviHeader:Landroid/view/View;
.field private mAlbumNaviRooter:Landroid/view/View;
.field private mAlbumSelectHeader:Landroid/view/View;
.field private mAlbumSelectRooter:Landroid/view/View;
.field private mAlbumSetRooter:Landroid/view/View;
.field private mAlbumTitle:Landroid/widget/TextView;
.field private mAlbumToCamera:Landroid/widget/ImageView;
.field private mBatchDelete:Landroid/widget/Button;
.field private mC360Album:Landroid/widget/Button;
.field private mCloudAlbum:Landroid/widget/Button;
.field private mCurrentActionMode:I
.field private mDeleteAlbumSetBtn:Landroid/widget/Button;
.field private mDeleteBtnClickeListener:Landroid/view/View$OnClickListener;
.field private mDeleteDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
.field private mDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
.field private mEnterSelect:Landroid/widget/CheckBox;
.field private mEnterSelectionView:Landroid/view/View;
.field private final mHandler:Landroid/os/Handler;
.field private mHideAlbumSetBtn:Landroid/widget/Button;
.field private mLeaveSelect:Landroid/widget/TextView;
.field private mOnShowListener:Landroid/content/DialogInterface$OnShowListener;
.field private mOtherAlbum:Landroid/widget/Button;
.field private mPhotoBack:Landroid/widget/ImageView;
.field private mPhotoHeader:Landroid/view/View;
.field private mPhotoPageHandler:Landroid/os/Handler;
.field private mPhotoRooter:Landroid/view/View;
.field private mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
.field private mPhotoTitle:Landroid/widget/TextView;
.field private mPhotoToCamera:Landroid/widget/ImageView;
.field private mPicPuzzle:Landroid/widget/Button;
.field private mPopupMenu:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;
.field private mSelectAllItem:Landroid/widget/TextView;
.field private mSelectCounter:Landroid/widget/TextView;
.field private mSelectPhotosBack:Landroid/view/View;
.field private mSelectPhotosCancel:Landroid/view/View;
.field private mSelectPhotosCounter:Landroid/widget/TextView;
.field private mSelectPhotosHavePhotoLayout:Landroid/view/View;
.field private mSelectPhotosHeader:Landroid/view/View;
.field private mSelectPhotosNoPhotoLayout:Landroid/view/View;
.field private mSelectPhotosSureBtn:Landroid/view/View;
.field private mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;
.field private mSingleDelete:Landroid/widget/Button;
.field private mSingleDeleteNotifyer:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$SingleDeleteNotifyer;
.field private mTask:Lcom/pinguo/camera360/gallery/util/Future;
.field private mTemplatePuzzle:Landroid/widget/Button;
.field private mWaitOnStop:Z
.method public constructor <init>(Lcom/pinguo/camera360/gallery/RootActivity;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->count:I
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mCurrentActionMode:I
new-instance v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$1;-><init>(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
const v0, 0x7f0a012b
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mAlbumNaviHeader:Landroid/view/View;
const v0, 0x7f0a012c
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mAlbumToCamera:Landroid/widget/ImageView;
const v0, 0x7f0a012d
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mAlbumTitle:Landroid/widget/TextView;
const v0, 0x7f0a0130
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectPhotosHeader:Landroid/view/View;
const v0, 0x7f0a0134
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectPhotosSureBtn:Landroid/view/View;
const v0, 0x7f0a0137
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectPhotosCounter:Landroid/widget/TextView;
const v0, 0x7f0a0132
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectPhotosBack:Landroid/view/View;
const v0, 0x7f0a0133
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectPhotosCancel:Landroid/view/View;
const v0, 0x7f0a0135
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectPhotosNoPhotoLayout:Landroid/view/View;
const v0, 0x7f0a0136
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectPhotosHavePhotoLayout:Landroid/view/View;
const v0, 0x7f0a012f
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mEnterSelectionView:Landroid/view/View;
const v0, 0x7f0a012e
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/CheckBox;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mEnterSelect:Landroid/widget/CheckBox;
const v0, 0x7f0a0138
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mAlbumSelectHeader:Landroid/view/View;
const v0, 0x7f0a0043
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mLeaveSelect:Landroid/widget/TextView;
const v0, 0x7f0a0139
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectCounter:Landroid/widget/TextView;
const v0, 0x7f0a0045
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectAllItem:Landroid/widget/TextView;
const v0, 0x7f0a0154
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mAlbumSetRooter:Landroid/view/View;
const v0, 0x7f0a0156
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mHideAlbumSetBtn:Landroid/widget/Button;
const v0, 0x7f0a0157
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mDeleteAlbumSetBtn:Landroid/widget/Button;
const v0, 0x7f0a013a
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoHeader:Landroid/view/View;
const v0, 0x7f0a013b
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoBack:Landroid/widget/ImageView;
const v0, 0x7f0a013d
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoToCamera:Landroid/widget/ImageView;
const v0, 0x7f0a013c
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoTitle:Landroid/widget/TextView;
new-instance v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;-><init>(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPopupMenu:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;
const v0, 0x7f0a0152
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mAlbumNaviRooter:Landroid/view/View;
const v0, 0x7f0a011d
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mC360Album:Landroid/widget/Button;
const v0, 0x7f0a011e
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mOtherAlbum:Landroid/widget/Button;
const v0, 0x7f0a011f
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mCloudAlbum:Landroid/widget/Button;
const v0, 0x7f0a0153
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mAlbumSelectRooter:Landroid/view/View;
const v0, 0x7f0a0125
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPicPuzzle:Landroid/widget/Button;
const v0, 0x7f0a0124
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mTemplatePuzzle:Landroid/widget/Button;
const v0, 0x7f0a0126
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mBatchDelete:Landroid/widget/Button;
const v0, 0x7f0a0155
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoRooter:Landroid/view/View;
const v0, 0x7f0a0123
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSingleDelete:Landroid/widget/Button;
new-instance v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$2;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$2;-><init>(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;Lcom/pinguo/camera360/gallery/ui/GLRoot;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mHandler:Landroid/os/Handler;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoPageHandler:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;ILcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->onActionItemClicked(ILcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;)V
return-void
.end method
.method static synthetic access$10(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectAllItem:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic access$11(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
return-object v0
.end method
.method static synthetic access$12(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/ActivityState;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivityState:Lcom/pinguo/camera360/gallery/ActivityState;
return-object v0
.end method
.method static synthetic access$13(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPopupMenu:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mDeleteDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
return-void
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$SingleDeleteNotifyer;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSingleDeleteNotifyer:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$SingleDeleteNotifyer;
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/RootActivity;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/ui/SelectionManager;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;
return-object v0
.end method
.method static synthetic access$6(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
return-object v0
.end method
.method static synthetic access$7(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mHandler:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic access$8(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Landroid/widget/CheckBox;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mEnterSelect:Landroid/widget/CheckBox;
return-object v0
.end method
.method static synthetic access$9(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->stopTaskAndDismissDialog()V
return-void
.end method
.method private enterPuzzle(Z)V
.registers 17
iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-virtual {v9}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->getSelectedPaths()Ljava/util/ArrayList;
move-result-object v7
invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
move-result v8
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->isVideoSelected()Z
move-result v9
if-eqz v9, :cond_29
iget-object v10, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v9}, Lcom/pinguo/camera360/gallery/RootActivity;->getResources()Landroid/content/res/Resources;
move-result-object v11
if-eqz p1, :cond_25
const v9, 0x7f0801e1
:goto_1d
invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v9
invoke-virtual {v10, v9}, Lcom/pinguo/camera360/gallery/RootActivity;->showToastShort(Ljava/lang/String;)Lcom/pinguo/camera360/lib/ui/RotateTextToast;
:goto_24
return-void
:cond_25
const v9, 0x7f0801e2
goto :goto_1d
:cond_29
const/4 v9, 0x2
if-ge v8, v9, :cond_4a
iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
iget-object v10, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v10}, Lcom/pinguo/camera360/gallery/RootActivity;->getResources()Landroid/content/res/Resources;
move-result-object v10
const v11, 0x7f0802a9
const/4 v12, 0x1
new-array v12, v12, [Ljava/lang/Object;
const/4 v13, 0x0
const/4 v14, 0x2
invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v14
aput-object v14, v12, v13
invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Lcom/pinguo/camera360/gallery/RootActivity;->showToastShort(Ljava/lang/String;)Lcom/pinguo/camera360/lib/ui/RotateTextToast;
goto :goto_24
:cond_4a
invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v9
:cond_4e
invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
move-result v10
if-nez v10, :cond_ab
iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-virtual {v9}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->getSourceMediaSet()Lcom/pinguo/camera360/gallery/data/MediaSet;
move-result-object v2
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string/jumbo v9, "media-type"
invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getPath()Lcom/pinguo/camera360/gallery/data/Path;
move-result-object v10
invoke-virtual {v10}, Lcom/pinguo/camera360/gallery/data/Path;->getType()I
move-result v10
invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string/jumbo v9, "media-path-id"
invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getPath()Lcom/pinguo/camera360/gallery/data/Path;
move-result-object v10
invoke-virtual {v10}, Lcom/pinguo/camera360/gallery/data/Path;->getPathId()Ljava/lang/String;
move-result-object v10
invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v9, "media-name"
invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getName()Ljava/lang/String;
move-result-object v10
invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Landroid/content/Intent;
invoke-direct {v1}, Landroid/content/Intent;-><init>()V
invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
const/high16 v9, 0x2
invoke-virtual {v1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
if-eqz p1, :cond_105
const/4 v9, 0x4
if-le v8, v9, :cond_d4
iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
iget-object v10, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v10}, Lcom/pinguo/camera360/gallery/RootActivity;->getResources()Landroid/content/res/Resources;
move-result-object v10
const v11, 0x7f0800b1
invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Lcom/pinguo/camera360/gallery/RootActivity;->showToastShort(Ljava/lang/String;)Lcom/pinguo/camera360/lib/ui/RotateTextToast;
goto/16 :goto_24
:cond_ab
invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/pinguo/camera360/gallery/data/Path;
new-instance v10, Ljava/io/File;
invoke-virtual {v6}, Lcom/pinguo/camera360/gallery/data/Path;->getPathId()Ljava/lang/String;
move-result-object v11
invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v10}, Ljava/io/File;->exists()Z
move-result v10
if-nez v10, :cond_4e
iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
iget-object v10, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v10}, Lcom/pinguo/camera360/gallery/RootActivity;->getResources()Landroid/content/res/Resources;
move-result-object v10
const v11, 0x7f0800e7
invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Lcom/pinguo/camera360/gallery/RootActivity;->showToastShort(Ljava/lang/String;)Lcom/pinguo/camera360/lib/ui/RotateTextToast;
goto/16 :goto_24
:cond_d4
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v9
:cond_dd
:goto_dd
invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
move-result v10
if-nez v10, :cond_f9
iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
const-class v10, Lcom/pinguo/camera360/puzzle/PuzzleActivity;
invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
const-string/jumbo v9, "intent_key_puzzle_array"
invoke-virtual {v1, v9, v7}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
const/16 v10, 0x3e9
invoke-virtual {v9, v1, v10}, Lcom/pinguo/camera360/gallery/RootActivity;->startActivityForResult(Landroid/content/Intent;I)V
goto/16 :goto_24
:cond_f9
invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/camera360/gallery/data/Path;
if-eqz v3, :cond_dd
invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_dd
:cond_105
const/16 v9, 0x9
if-le v8, v9, :cond_11d
iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
iget-object v10, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v10}, Lcom/pinguo/camera360/gallery/RootActivity;->getResources()Landroid/content/res/Resources;
move-result-object v10
const v11, 0x7f0800b0
invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Lcom/pinguo/camera360/gallery/RootActivity;->showToastShort(Ljava/lang/String;)Lcom/pinguo/camera360/lib/ui/RotateTextToast;
goto/16 :goto_24
:cond_11d
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v9
:cond_126
:goto_126
invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
move-result v10
if-nez v10, :cond_142
iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
const-class v10, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;
invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
const-string/jumbo v9, "intent_key_puzzle_array"
invoke-virtual {v1, v9, v5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
const/16 v10, 0x3e8
invoke-virtual {v9, v1, v10}, Lcom/pinguo/camera360/gallery/RootActivity;->startActivityForResult(Landroid/content/Intent;I)V
goto/16 :goto_24
:cond_142
invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/camera360/gallery/data/Path;
if-eqz v3, :cond_126
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/data/Path;->getPathId()Ljava/lang/String;
move-result-object v10
invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_126
.end method
.method private handleHideAlbumsetAction()V
.registers 9
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->getSelectedCount()I
move-result v0
if-nez v0, :cond_d
:cond_c
:goto_c
return-void
:cond_d
new-instance v4, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$3;
invoke-direct {v4, p0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$3;-><init>(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)V
new-instance v5, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$4;
invoke-direct {v5, p0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$4;-><init>(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getFirstHideAlbumList()Z
move-result v0
if-eqz v0, :cond_34
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
const v1, 0x7f080091
const v2, 0x7f0802c5
const v3, 0x7f0802c6
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
const/4 v0, 0x0
invoke-virtual {v7, v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setFirstHideAlbumList(Z)V
goto :goto_c
:cond_34
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivityState:Lcom/pinguo/camera360/gallery/ActivityState;
instance-of v0, v0, Lcom/pinguo/camera360/gallery/AlbumSetPage;
if-eqz v0, :cond_c
iget-object v6, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivityState:Lcom/pinguo/camera360/gallery/ActivityState;
check-cast v6, Lcom/pinguo/camera360/gallery/AlbumSetPage;
invoke-virtual {v6}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->hideAlbums()V
goto :goto_c
.end method
.method private isVideoSelected()Z
.registers 6
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->getSelectedPaths()Ljava/util/ArrayList;
move-result-object v1
if-eqz v1, :cond_18
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v2
if-lez v2, :cond_18
invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_12
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_1a
:cond_18
const/4 v2, 0x0
:goto_19
return v2
:cond_1a
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/gallery/data/Path;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/Path;->getPathId()Ljava/lang/String;
move-result-object v3
sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "photo_org.jpg"
invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_12
const/4 v2, 0x1
goto :goto_19
.end method
.method private onActionItemClicked(ILcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;)V
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->onActionItemClicked(ILcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;Z)V
return-void
.end method
.method private stopTaskAndDismissDialog()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mTask:Lcom/pinguo/camera360/gallery/util/Future;
if-eqz v0, :cond_20
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mWaitOnStop:Z
if-nez v0, :cond_e
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mTask:Lcom/pinguo/camera360/gallery/util/Future;
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/util/Future;->cancel()V
:cond_e
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mTask:Lcom/pinguo/camera360/gallery/util/Future;
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/util/Future;->waitDone()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
:cond_1e
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mTask:Lcom/pinguo/camera360/gallery/util/Future;
:cond_20
return-void
.end method
.method private updateAlbumHeaderViews()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectPhotosHeader:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mCurrentActionMode:I
and-int/lit8 v0, v0, 0x2
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mAlbumToCamera:Landroid/widget/ImageView;
const v1, 0x7f0200de
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mEnterSelect:Landroid/widget/CheckBox;
invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V
:cond_1b
:goto_1b
return-void
:cond_1c
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mCurrentActionMode:I
and-int/lit8 v0, v0, 0x8
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mAlbumToCamera:Landroid/widget/ImageView;
const v1, 0x7f0200db
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mEnterSelect:Landroid/widget/CheckBox;
invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V
goto :goto_1b
.end method
.method public getActionBarMode()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mCurrentActionMode:I
return v0
.end method
.method public highLightC360AlbumBtn(Z)V
.registers 7
const v4, 0x7f02014c
const v3, 0x7f02014b
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/RootActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
if-eqz p1, :cond_21
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mC360Album:Landroid/widget/Button;
invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mOtherAlbum:Landroid/widget/Button;
invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V
:goto_20
return-void
:cond_21
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mC360Album:Landroid/widget/Button;
invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mOtherAlbum:Landroid/widget/Button;
invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V
goto :goto_20
.end method
.method public onActionItemClicked(ILcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;Z)V
.registers 10
sparse-switch p1, :sswitch_data_22
:goto_3
return-void
:sswitch_4
const v2, 0x7f0800a4
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;
move-result-object v5
:goto_12
move-object v0, p0
move v1, p1
move-object v3, p2
move v4, p3
invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->startAction(IILcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;ZLjava/util/ArrayList;)V
goto :goto_3
:cond_1a
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->getSelectedPaths()Ljava/util/ArrayList;
move-result-object v5
goto :goto_12
nop
:sswitch_data_22
.sparse-switch
0x7f0a0123 -> :sswitch_4
0x7f0a0126 -> :sswitch_4
0x7f0a0157 -> :sswitch_4
.end sparse-switch
.end method
.method public onBackPressedInPickPhotos()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivityState:Lcom/pinguo/camera360/gallery/ActivityState;
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;
move-result-object v0
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->lockRenderThread()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getStateManager()Lcom/pinguo/camera360/gallery/StateManager;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivityState:Lcom/pinguo/camera360/gallery/ActivityState;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/StateManager;->finishState(Lcom/pinguo/camera360/gallery/ActivityState;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;
move-result-object v0
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->unlockRenderThread()V
:cond_21
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;
move-result-object v0
const/4 v1, 0x7
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/data/DataManager;->setActivityMode(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/RootActivity;->setResult(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->finish()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 18
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/gallery/ui/AlbumActionBar; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v8, -0x1
invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I
move-result v13
sparse-switch v13, :sswitch_data_3e6
:goto_8
:cond_8
const-string v1, " - Lcom/pinguo/camera360/gallery/ui/AlbumActionBar; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:sswitch_9
const v13, 0x7f0a011d
invoke-static {v13}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;->galleryBtnClick(I)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivityState:Lcom/pinguo/camera360/gallery/ActivityState;
instance-of v13, v13, Lcom/pinguo/camera360/gallery/AlbumSetPage;
if-eqz v13, :cond_74
new-instance v3, Landroid/os/Bundle;
invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
const-string/jumbo v13, "media-type"
const/16 v14, 0x3ea
invoke-virtual {v3, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string/jumbo v13, "media-path-id"
const-string/jumbo v14, "path-c360"
invoke-virtual {v3, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;
move-result-object v13
invoke-interface {v13}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->lockRenderThread()V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/RootActivity;->getStateManager()Lcom/pinguo/camera360/gallery/StateManager;
move-result-object v13
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivityState:Lcom/pinguo/camera360/gallery/ActivityState;
const-class v15, Lcom/pinguo/camera360/gallery/AlbumPage;
invoke-virtual {v13, v14, v15, v3}, Lcom/pinguo/camera360/gallery/StateManager;->switchState(Lcom/pinguo/camera360/gallery/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;
move-result-object v13
invoke-interface {v13}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->unlockRenderThread()V
:goto_54
:cond_54
const/4 v13, 0x1
move-object/from16 v0, p0
invoke-virtual {v0, v13}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->highLightC360AlbumBtn(Z)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mEnterSelectionView:Landroid/view/View;
const/16 v14, 0x8
invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mEnterSelect:Landroid/widget/CheckBox;
const/4 v14, 0x0
invoke-virtual {v13, v14}, Landroid/widget/CheckBox;->setChecked(Z)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mEnterSelect:Landroid/widget/CheckBox;
const/4 v14, 0x0
invoke-virtual {v13, v14}, Landroid/widget/CheckBox;->setVisibility(I)V
goto :goto_8
:cond_74
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivityState:Lcom/pinguo/camera360/gallery/ActivityState;
instance-of v13, v13, Lcom/pinguo/camera360/gallery/AlbumPage;
if-eqz v13, :cond_54
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->getSourceMediaSet()Lcom/pinguo/camera360/gallery/data/MediaSet;
move-result-object v13
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getPath()Lcom/pinguo/camera360/gallery/data/Path;
move-result-object v13
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/data/Path;->getType()I
move-result v13
const/16 v14, 0x3eb
if-ne v13, v14, :cond_54
new-instance v3, Landroid/os/Bundle;
invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
const-string/jumbo v13, "media-type"
const/16 v14, 0x3ea
invoke-virtual {v3, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string/jumbo v13, "media-path-id"
const-string/jumbo v14, "path-c360"
invoke-virtual {v3, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;
move-result-object v13
invoke-interface {v13}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->lockRenderThread()V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/RootActivity;->getStateManager()Lcom/pinguo/camera360/gallery/StateManager;
move-result-object v13
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/StateManager;->destroyTop()V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/RootActivity;->getStateManager()Lcom/pinguo/camera360/gallery/StateManager;
move-result-object v13
const-class v14, Lcom/pinguo/camera360/gallery/AlbumPage;
invoke-virtual {v13, v14, v3}, Lcom/pinguo/camera360/gallery/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;
move-result-object v13
invoke-interface {v13}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->unlockRenderThread()V
goto :goto_54
:sswitch_d5
const v13, 0x7f0a011e
invoke-static {v13}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;->galleryBtnClick(I)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivityState:Lcom/pinguo/camera360/gallery/ActivityState;
instance-of v13, v13, Lcom/pinguo/camera360/gallery/AlbumPage;
if-eqz v13, :cond_134
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->getSourceMediaSet()Lcom/pinguo/camera360/gallery/data/MediaSet;
move-result-object v13
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getPath()Lcom/pinguo/camera360/gallery/data/Path;
move-result-object v13
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/data/Path;->getType()I
move-result v13
const/16 v14, 0x3ea
if-ne v13, v14, :cond_134
new-instance v3, Landroid/os/Bundle;
invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
const-string/jumbo v13, "media-type"
const/16 v14, 0x3e9
invoke-virtual {v3, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string/jumbo v13, "media-path-id"
const-string/jumbo v14, "path-set"
invoke-virtual {v3, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;
move-result-object v13
invoke-interface {v13}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->lockRenderThread()V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/RootActivity;->getStateManager()Lcom/pinguo/camera360/gallery/StateManager;
move-result-object v13
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivityState:Lcom/pinguo/camera360/gallery/ActivityState;
const-class v15, Lcom/pinguo/camera360/gallery/AlbumSetPage;
invoke-virtual {v13, v14, v15, v3}, Lcom/pinguo/camera360/gallery/StateManager;->switchState(Lcom/pinguo/camera360/gallery/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;
move-result-object v13
invoke-interface {v13}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->unlockRenderThread()V
:cond_134
const/4 v13, 0x0
move-object/from16 v0, p0
invoke-virtual {v0, v13}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->highLightC360AlbumBtn(Z)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mEnterSelectionView:Landroid/view/View;
const/4 v14, 0x0
invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mEnterSelect:Landroid/widget/CheckBox;
const/4 v14, 0x0
invoke-virtual {v13, v14}, Landroid/widget/CheckBox;->setChecked(Z)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mEnterSelect:Landroid/widget/CheckBox;
const/16 v14, 0x8
invoke-virtual {v13, v14}, Landroid/widget/CheckBox;->setVisibility(I)V
goto/16 :goto_8
:sswitch_155
const v13, 0x7f0a011f
invoke-static {v13}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;->galleryBtnClick(I)V
const/4 v13, 0x7
invoke-static {v13}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalRegisterClick(I)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-static {v13}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;
move-result-object v12
invoke-virtual {v12}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;
move-result-object v4
invoke-virtual {v12}, Lcom/pinguo/camera360/login/model/User;->isLogin()Z
move-result v13
if-eqz v13, :cond_188
new-instance v6, Landroid/content/Intent;
invoke-direct {v6}, Landroid/content/Intent;-><init>()V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
const-class v14, Lcom/pinguo/album/activities/PGAlbumActivity;
invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v13, v6}, Lcom/pinguo/camera360/gallery/RootActivity;->startActivity(Landroid/content/Intent;)V
goto/16 :goto_8
:cond_188
new-instance v6, Landroid/content/Intent;
invoke-direct {v6}, Landroid/content/Intent;-><init>()V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
const-class v14, Lcom/pinguo/album/activities/PGAlbumGuideActivity;
invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v13, v6}, Lcom/pinguo/camera360/gallery/RootActivity;->startActivity(Landroid/content/Intent;)V
goto/16 :goto_8
:sswitch_19f
move-object/from16 v0, p0
iget v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mCurrentActionMode:I
and-int/lit8 v13, v13, 0x2
if-eqz v13, :cond_1d3
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivityState:Lcom/pinguo/camera360/gallery/ActivityState;
if-eqz v13, :cond_1ca
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;
move-result-object v13
invoke-interface {v13}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->lockRenderThread()V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/RootActivity;->finish()V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;
move-result-object v13
invoke-interface {v13}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->unlockRenderThread()V
:cond_1ca
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-static {v13}, Lcom/pinguo/camera360/PgCameraApplication;->startCameraActivity(Landroid/content/Context;)V
goto/16 :goto_8
:cond_1d3
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivityState:Lcom/pinguo/camera360/gallery/ActivityState;
if-eqz v13, :cond_8
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;
move-result-object v13
invoke-interface {v13}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->lockRenderThread()V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/RootActivity;->getStateManager()Lcom/pinguo/camera360/gallery/StateManager;
move-result-object v13
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivityState:Lcom/pinguo/camera360/gallery/ActivityState;
invoke-virtual {v13, v14}, Lcom/pinguo/camera360/gallery/StateManager;->finishState(Lcom/pinguo/camera360/gallery/ActivityState;)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;
move-result-object v13
invoke-interface {v13}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->unlockRenderThread()V
goto/16 :goto_8
:sswitch_200
const v13, 0x7f0a022b
invoke-static {v13}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;->galleryBtnClick(I)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
if-eqz v13, :cond_220
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->inSelectionMode()Z
move-result v13
if-nez v13, :cond_220
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->enterSelectionMode()V
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->updateSelectCounterText()V
:cond_220
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;
if-eqz v13, :cond_23a
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->inSelectionMode()Z
move-result v13
if-nez v13, :cond_23a
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->enterSelectionMode()V
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->updateAlbumSetTopBarText()V
:cond_23a
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mEnterSelect:Landroid/widget/CheckBox;
const/4 v14, 0x0
invoke-virtual {v13, v14}, Landroid/widget/CheckBox;->setChecked(Z)V
goto/16 :goto_8
:sswitch_244
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
if-eqz v13, :cond_8
new-instance v5, Landroid/content/Intent;
invoke-direct {v5}, Landroid/content/Intent;-><init>()V
const-string/jumbo v13, "paths"
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-virtual {v14}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->getSelectedFilePaths()Ljava/util/ArrayList;
move-result-object v14
invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-static {v13, v5}, Lcom/pinguo/camera360/nearbytransfer/NbtfActiviy;->enterSendModule(Landroid/content/Context;Landroid/content/Intent;)V
goto/16 :goto_8
:sswitch_266
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->onBackPressedInPickPhotos()V
goto/16 :goto_8
:sswitch_26b
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->inSelectionMode()Z
move-result v13
if-eqz v13, :cond_8
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->leaveSelectionMode()V
goto/16 :goto_8
:sswitch_27e
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
if-eqz v13, :cond_295
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->inSelectionMode()Z
move-result v13
if-eqz v13, :cond_295
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->leaveSelectionMode()V
:cond_295
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;
if-eqz v13, :cond_8
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->inSelectionMode()Z
move-result v13
if-eqz v13, :cond_8
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->leaveSelectionMode()V
goto/16 :goto_8
:sswitch_2ae
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;
if-eqz v13, :cond_8
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->inSelectionMode()Z
move-result v13
if-eqz v13, :cond_8
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectAllItem:Landroid/widget/TextView;
invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v11
check-cast v11, Ljava/lang/String;
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/RootActivity;->getResources()Landroid/content/res/Resources;
move-result-object v10
const v13, 0x7f080088
invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v13
invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v13
if-eqz v13, :cond_2f4
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectAllItem:Landroid/widget/TextView;
const v14, 0x7f08008d
invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v14
invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->selectAll()V
goto/16 :goto_8
:cond_2f4
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectAllItem:Landroid/widget/TextView;
const v14, 0x7f080088
invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v14
invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->deSelectAll()V
goto/16 :goto_8
:sswitch_30b
const v13, 0x7f0a013d
invoke-static {v13}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;->galleryBigPictureShowLayBtnClick(I)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivityState:Lcom/pinguo/camera360/gallery/ActivityState;
if-eqz v13, :cond_334
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;
move-result-object v13
invoke-interface {v13}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->lockRenderThread()V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/RootActivity;->finish()V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v13}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;
move-result-object v13
invoke-interface {v13}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->unlockRenderThread()V
:cond_334
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-static {v13}, Lcom/pinguo/camera360/PgCameraApplication;->startCameraActivity(Landroid/content/Context;)V
goto/16 :goto_8
:sswitch_33d
const/4 v13, 0x0
move-object/from16 v0, p0
invoke-direct {v0, v13}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->enterPuzzle(Z)V
const v13, 0x7f0a0125
invoke-static {v13}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;->galleryBatchLayBtnClick(I)V
goto/16 :goto_8
:sswitch_34b
const/4 v13, 0x1
move-object/from16 v0, p0
invoke-direct {v0, v13}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->enterPuzzle(Z)V
const v13, 0x7f0a0124
invoke-static {v13}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;->galleryBatchLayBtnClick(I)V
goto/16 :goto_8
:sswitch_359
const v8, 0x7f080090
:sswitch_35c
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mDeleteBtnClickeListener:Landroid/view/View$OnClickListener;
if-eqz v13, :cond_371
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mDeleteBtnClickeListener:Landroid/view/View$OnClickListener;
move-object/from16 v0, p1
invoke-interface {v13, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V
const v13, 0x7f0a0123
invoke-static {v13}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;->galleryBigPictureShowLayBtnClick(I)V
:sswitch_371
:cond_371
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mDeleteDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
if-eqz v13, :cond_381
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mDeleteDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v13}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->isShowing()Z
move-result v13
if-nez v13, :cond_8
:cond_381
const v13, 0x7f0a0126
invoke-static {v13}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;->galleryBatchLayBtnClick(I)V
const v13, 0x7f080090
if-eq v8, v13, :cond_38f
const v8, 0x7f0801ec
:cond_38f
const/4 v7, 0x0
new-instance v2, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$DeleteDialogListener;
invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I
move-result v13
move-object/from16 v0, p0
invoke-direct {v2, v0, v13, v7}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$DeleteDialogListener;-><init>(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;ILcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;)V
new-instance v13, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-direct {v13, v14}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-virtual {v13, v8}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setMessage(I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
move-result-object v1
const v13, 0x7f0802c5
invoke-virtual {v1, v13, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
move-result-object v13
const v14, 0x7f0802c6
invoke-virtual {v13, v14, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
move-result-object v13
invoke-virtual {v13}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->show()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v13
move-object/from16 v0, p0
iput-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mDeleteDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
const v13, 0x7f080090
if-ne v8, v13, :cond_3d1
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mDeleteDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v13}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->getDialogMessageView()Landroid/widget/TextView;
move-result-object v9
if-eqz v9, :cond_3d1
const/4 v13, 0x3
invoke-virtual {v9, v13}, Landroid/widget/TextView;->setGravity(I)V
:cond_3d1
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoPageHandler:Landroid/os/Handler;
if-eqz v13, :cond_8
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoPageHandler:Landroid/os/Handler;
const/4 v14, 0x1
invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V
goto/16 :goto_8
:sswitch_3e1
invoke-direct/range {p0 .. p0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->handleHideAlbumsetAction()V
goto/16 :goto_8
:sswitch_data_3e6
.sparse-switch
0x7f0a0043 -> :sswitch_27e
0x7f0a0045 -> :sswitch_2ae
0x7f0a011d -> :sswitch_9
0x7f0a011e -> :sswitch_d5
0x7f0a011f -> :sswitch_155
0x7f0a0123 -> :sswitch_35c
0x7f0a0124 -> :sswitch_34b
0x7f0a0125 -> :sswitch_33d
0x7f0a0126 -> :sswitch_371
0x7f0a012c -> :sswitch_19f
0x7f0a012f -> :sswitch_200
0x7f0a0132 -> :sswitch_266
0x7f0a0133 -> :sswitch_26b
0x7f0a0134 -> :sswitch_244
0x7f0a013d -> :sswitch_30b
0x7f0a0156 -> :sswitch_3e1
0x7f0a0157 -> :sswitch_359
.end sparse-switch
.end method
.method public pause()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->stopTaskAndDismissDialog()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mLeaveSelect:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoToCamera:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectCounter:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mAlbumToCamera:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectPhotosBack:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectPhotosSureBtn:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectPhotosCancel:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mEnterSelectionView:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mC360Album:Landroid/widget/Button;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mOtherAlbum:Landroid/widget/Button;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mCloudAlbum:Landroid/widget/Button;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPicPuzzle:Landroid/widget/Button;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mTemplatePuzzle:Landroid/widget/Button;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mBatchDelete:Landroid/widget/Button;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSingleDelete:Landroid/widget/Button;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mEnterSelect:Landroid/widget/CheckBox;
invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
return-void
.end method
.method public resume()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mLeaveSelect:Landroid/widget/TextView;
invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoToCamera:Landroid/widget/ImageView;
invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectCounter:Landroid/widget/TextView;
invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mAlbumToCamera:Landroid/widget/ImageView;
invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectPhotosBack:Landroid/view/View;
invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectPhotosSureBtn:Landroid/view/View;
invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectPhotosCancel:Landroid/view/View;
invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mEnterSelectionView:Landroid/view/View;
invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mC360Album:Landroid/widget/Button;
invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mOtherAlbum:Landroid/widget/Button;
invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mCloudAlbum:Landroid/widget/Button;
invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPicPuzzle:Landroid/widget/Button;
invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mTemplatePuzzle:Landroid/widget/Button;
invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mBatchDelete:Landroid/widget/Button;
invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSingleDelete:Landroid/widget/Button;
invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mEnterSelect:Landroid/widget/CheckBox;
new-instance v1, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$8;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$8;-><init>(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)V
invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
return-void
.end method
.method public setActionBarMode(IZ)V
.registers 9
const/4 v5, 0x0
const/4 v4, 0x4
const/4 v1, 0x0
const/16 v2, 0x8
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectPhotosHeader:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/DataManager;->getActivityMode()I
move-result v0
const/4 v3, 0x5
if-ne v0, v3, :cond_43
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mAlbumNaviHeader:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mEnterSelect:Landroid/widget/CheckBox;
invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mAlbumToCamera:Landroid/widget/ImageView;
const v1, 0x7f0200db
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mAlbumSelectHeader:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoHeader:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mAlbumNaviRooter:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mAlbumSelectRooter:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoRooter:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
:goto_42
return-void
:cond_43
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/DataManager;->getActivityMode()I
move-result v0
if-ne v0, v2, :cond_9d
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mAlbumNaviHeader:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mEnterSelect:Landroid/widget/CheckBox;
invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mAlbumSelectHeader:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoHeader:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectPhotosHeader:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectPhotosBack:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectPhotosCancel:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPopupMenu:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;
if-eqz v0, :cond_8a
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPopupMenu:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->getState()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;
move-result-object v0
sget-object v3, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;->SENDER_IN_SELECTION:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenuState;
if-ne v0, v3, :cond_8a
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectPhotosBack:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectPhotosCancel:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_8a
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mAlbumNaviRooter:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mAlbumSelectRooter:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoRooter:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->updateSelectPhotosCounterText()V
goto :goto_42
:cond_9d
iput p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mCurrentActionMode:I
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mCurrentActionMode:I
and-int/lit8 v0, v0, 0x10
if-eqz v0, :cond_125
if-eqz p2, :cond_125
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoHeader:Landroid/view/View;
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
const v4, 0x7f040010
invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoRooter:Landroid/view/View;
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
const v4, 0x7f04000a
invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V
:goto_c3
:cond_c3
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mAlbumNaviHeader:Landroid/view/View;
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mCurrentActionMode:I
and-int/lit8 v0, v0, 0xa
if-eqz v0, :cond_14b
move v0, v1
:goto_cc
invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mAlbumSelectHeader:Landroid/view/View;
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mCurrentActionMode:I
and-int/lit16 v0, v0, 0x84
if-eqz v0, :cond_14d
move v0, v1
:goto_d8
invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoHeader:Landroid/view/View;
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mCurrentActionMode:I
and-int/lit8 v0, v0, 0x20
if-eqz v0, :cond_14f
move v0, v1
:goto_e4
invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mAlbumNaviRooter:Landroid/view/View;
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mCurrentActionMode:I
and-int/lit8 v0, v0, 0xa
if-eqz v0, :cond_151
move v0, v1
:goto_f0
invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mAlbumSelectRooter:Landroid/view/View;
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mCurrentActionMode:I
and-int/lit8 v0, v0, 0x4
if-eqz v0, :cond_153
move v0, v1
:goto_fc
invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoRooter:Landroid/view/View;
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mCurrentActionMode:I
and-int/lit8 v0, v0, 0x20
if-eqz v0, :cond_155
move v0, v1
:goto_108
invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mCurrentActionMode:I
and-int/lit16 v0, v0, 0x80
if-eqz v0, :cond_157
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mAlbumSetRooter:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mHideAlbumSetBtn:Landroid/widget/Button;
invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mDeleteAlbumSetBtn:Landroid/widget/Button;
invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:goto_120
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->updateAlbumHeaderViews()V
goto/16 :goto_42
:cond_125
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mCurrentActionMode:I
and-int/lit8 v0, v0, 0x20
if-eqz v0, :cond_c3
if-eqz p2, :cond_c3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoHeader:Landroid/view/View;
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
const v4, 0x7f040011
invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoRooter:Landroid/view/View;
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
const v4, 0x7f04000b
invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V
goto/16 :goto_c3
:cond_14b
move v0, v2
goto :goto_cc
:cond_14d
move v0, v2
goto :goto_d8
:cond_14f
move v0, v2
goto :goto_e4
:cond_151
move v0, v2
goto :goto_f0
:cond_153
move v0, v2
goto :goto_fc
:cond_155
move v0, v2
goto :goto_108
:cond_157
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mAlbumSetRooter:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mHideAlbumSetBtn:Landroid/widget/Button;
invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mDeleteAlbumSetBtn:Landroid/widget/Button;
invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
goto :goto_120
.end method
.method public setActvityState(Lcom/pinguo/camera360/gallery/ActivityState;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivityState:Lcom/pinguo/camera360/gallery/ActivityState;
return-void
.end method
.method public setAlbumSetSelector(Lcom/pinguo/camera360/gallery/ui/SelectionManager;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;
return-void
.end method
.method public setHeaderTitle(Ljava/lang/String;I)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mAlbumTitle:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPopupMenu:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPopupMenu:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;
invoke-virtual {v0, p2}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->update(I)V
:cond_e
return-void
.end method
.method public setPhotoBackListener(Landroid/view/View$OnClickListener;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoBack:Landroid/widget/ImageView;
invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method public setPhotoDeleteBtnClickListener(Landroid/view/View$OnClickListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mDeleteBtnClickeListener:Landroid/view/View$OnClickListener;
return-void
.end method
.method public setPhotoSelector(Lcom/pinguo/camera360/gallery/ui/PhotoSelector;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
return-void
.end method
.method public setSingleDeleteNotifyer(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$SingleDeleteNotifyer;Landroid/os/Handler;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSingleDeleteNotifyer:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$SingleDeleteNotifyer;
iput-object p2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoPageHandler:Landroid/os/Handler;
return-void
.end method
.method public startAction(IILcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;ZLjava/util/ArrayList;)V
.registers 18
if-nez p5, :cond_3
:goto_2
return-void
:cond_3
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->stopTaskAndDismissDialog()V
new-instance v6, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$5;
invoke-direct {v6, p0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$5;-><init>(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)V
new-instance v7, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$6;
invoke-direct {v7, p0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$6;-><init>(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)V
new-instance v4, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$7;
invoke-direct {v4, p0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$7;-><init>(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)V
invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I
move-result v1
const/4 v2, 0x1
if-ne v1, v2, :cond_56
new-instance v1, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-direct {v1, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
const/4 v2, 0x6
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setProgressStyle(I)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
const/4 v2, 0x0
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setOrientation(IZ)V
:goto_3d
new-instance v11, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;
move-object/from16 v0, p5
invoke-direct {v11, p0, p1, v0, p3}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;-><init>(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;ILjava/util/ArrayList;Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/RootActivity;->getThreadPool()Lcom/pinguo/camera360/gallery/util/ThreadPool;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, v11, v2}, Lcom/pinguo/camera360/gallery/util/ThreadPool;->submit(Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;Lcom/pinguo/camera360/gallery/util/FutureListener;)Lcom/pinguo/camera360/gallery/util/Future;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mTask:Lcom/pinguo/camera360/gallery/util/Future;
move/from16 v0, p4
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mWaitOnStop:Z
goto :goto_2
:cond_56
const/4 v8, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;
if-eqz v1, :cond_61
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->getSelectedCount()I
move-result v8
:cond_61
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
if-eqz v1, :cond_6b
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->getSelectedCount()I
move-result v8
:cond_6b
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
const/4 v2, 0x1
const/4 v3, 0x0
const/4 v5, 0x0
const/4 v9, 0x0
const/4 v10, 0x0
invoke-static/range {v1 .. v10}, Lcom/pinguo/camera360/gallery/temps/GalleryUtil;->showProcessPhotosDialog(Landroid/content/Context;IZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnKeyListener;III)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
goto :goto_3d
.end method
.method public updateAlbumSetSelection(Z)V
.registers 4
if-eqz p1, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mEnterSelectionView:Landroid/view/View;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mEnterSelectionView:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
goto :goto_8
.end method
.method public updateAlbumSetTopBarText()V
.registers 14
const v12, 0x7f08008d
const v11, 0x7f080088
const v10, 0x7f020189
const/4 v9, 0x1
const/4 v8, 0x0
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;
invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->getSelectedCount()I
move-result v0
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/RootActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectCounter:Landroid/widget/TextView;
const-string/jumbo v5, "%d"
new-array v6, v9, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v6, v8
invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/16 v4, 0xa
if-ge v0, v4, :cond_7c
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectCounter:Landroid/widget/TextView;
invoke-virtual {v4, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectCounter:Landroid/widget/TextView;
const v5, 0x7f02018a
invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V
:goto_3c
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectAllItem:Landroid/widget/TextView;
invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v3
check-cast v3, Ljava/lang/String;
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/RootActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;
invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->getTotalCount()I
move-result v4
if-ne v0, v4, :cond_82
invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_65
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectAllItem:Landroid/widget/TextView;
invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_65
:goto_65
if-lez v0, :cond_96
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mHideAlbumSetBtn:Landroid/widget/Button;
invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mDeleteAlbumSetBtn:Landroid/widget/Button;
invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V
:goto_71
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectAllItem:Landroid/widget/TextView;
invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectAllItem:Landroid/widget/TextView;
invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
:cond_7c
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectCounter:Landroid/widget/TextView;
invoke-virtual {v4, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V
goto :goto_3c
:cond_82
invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_65
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectAllItem:Landroid/widget/TextView;
invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_65
:cond_96
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mHideAlbumSetBtn:Landroid/widget/Button;
invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mDeleteAlbumSetBtn:Landroid/widget/Button;
invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V
goto :goto_71
.end method
.method public updateCloudAlbumStatus()V
.registers 4
invoke-static {}, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->getInstance()Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->getStatus(Landroid/content/Context;)Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$StatusObject;
move-result-object v1
iget v0, v1, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$StatusObject;->status:I
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->updateCloudAlbumStatus(I)V
return-void
.end method
.method public updateCloudAlbumStatus(I)V
.registers 12
const/4 v9, 0x0
const/4 v8, 0x0
const/16 v7, 0x20
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mCloudAlbum:Landroid/widget/Button;
if-eqz v5, :cond_3e
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-static {v5}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;
move-result-object v1
if-eqz v1, :cond_1d
const-string/jumbo v5, ""
invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_3f
:cond_1d
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v5}, Lcom/pinguo/camera360/gallery/RootActivity;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f020192
invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v3
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-static {v5, v7}, Lcom/pinguo/album/utils/PGAlbumUtils;->dpToPixel(Landroid/content/Context;I)I
move-result v2
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-static {v5, v7}, Lcom/pinguo/album/utils/PGAlbumUtils;->dpToPixel(Landroid/content/Context;I)I
move-result v0
:goto_36
invoke-virtual {v3, v9, v9, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mCloudAlbum:Landroid/widget/Button;
invoke-virtual {v5, v8, v3, v8, v8}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
:cond_3e
return-void
:cond_3f
packed-switch p1, :pswitch_data_7a
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v5}, Lcom/pinguo/camera360/gallery/RootActivity;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f020195
invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v3
:goto_4f
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-static {v5, v7}, Lcom/pinguo/album/utils/PGAlbumUtils;->dpToPixel(Landroid/content/Context;I)I
move-result v2
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
const/16 v6, 0x19
invoke-static {v5, v6}, Lcom/pinguo/album/utils/PGAlbumUtils;->dpToPixel(Landroid/content/Context;I)I
move-result v0
goto :goto_36
:pswitch_5e
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v5}, Lcom/pinguo/camera360/gallery/RootActivity;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f020193
invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v3
goto :goto_4f
:pswitch_6c
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v5}, Lcom/pinguo/camera360/gallery/RootActivity;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f020194
invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v3
goto :goto_4f
:pswitch_data_7a
.packed-switch 0x1
:pswitch_6c
:pswitch_5e
.end packed-switch
.end method
.method public updatePhotoBrowseTitle(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoTitle:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method public updateSelectCounterText()V
.registers 13
const v11, 0x7f020189
const v10, 0x7f02014b
const/4 v9, 0x2
const/4 v4, 0x0
const/4 v3, 0x1
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
if-nez v5, :cond_e
:goto_d
return-void
:cond_e
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-virtual {v5}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->getSelectedCount()I
move-result v0
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v5}, Lcom/pinguo/camera360/gallery/RootActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectCounter:Landroid/widget/TextView;
const-string/jumbo v6, "%d"
new-array v7, v3, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
aput-object v8, v7, v4
invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/16 v5, 0xa
if-ge v0, v5, :cond_73
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectCounter:Landroid/widget/TextView;
invoke-virtual {v5, v11}, Landroid/widget/TextView;->setBackgroundResource(I)V
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectCounter:Landroid/widget/TextView;
const v6, 0x7f02018a
invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V
:goto_3f
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->isVideoSelected()Z
move-result v1
if-nez v1, :cond_79
if-lt v0, v9, :cond_79
const/16 v5, 0x9
if-gt v0, v5, :cond_79
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPicPuzzle:Landroid/widget/Button;
invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v6
invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V
:goto_54
if-nez v1, :cond_86
if-lt v0, v9, :cond_86
const/4 v5, 0x4
if-gt v0, v5, :cond_86
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mTemplatePuzzle:Landroid/widget/Button;
invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v6
invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V
:goto_64
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mBatchDelete:Landroid/widget/Button;
if-lt v0, v3, :cond_93
:goto_68
invoke-virtual {v5, v3}, Landroid/widget/Button;->setEnabled(Z)V
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectAllItem:Landroid/widget/TextView;
const/16 v4, 0x8
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_d
:cond_73
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectCounter:Landroid/widget/TextView;
invoke-virtual {v5, v11}, Landroid/widget/TextView;->setBackgroundResource(I)V
goto :goto_3f
:cond_79
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPicPuzzle:Landroid/widget/Button;
const v6, 0x7f070079
invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I
move-result v6
invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V
goto :goto_54
:cond_86
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mTemplatePuzzle:Landroid/widget/Button;
const v6, 0x7f070079
invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I
move-result v6
invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V
goto :goto_64
:cond_93
move v3, v4
goto :goto_68
.end method
.method public updateSelectPhotosCounterText()V
.registers 7
const v4, 0x7f020189
const/16 v2, 0x8
const/4 v3, 0x1
const/4 v5, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->getSelectedCount()I
move-result v0
if-gtz v0, :cond_44
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectPhotosSureBtn:Landroid/view/View;
invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectPhotosNoPhotoLayout:Landroid/view/View;
invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectPhotosHavePhotoLayout:Landroid/view/View;
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
:goto_1e
const/16 v1, 0xa
if-ge v0, v1, :cond_54
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectPhotosCounter:Landroid/widget/TextView;
invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectPhotosCounter:Landroid/widget/TextView;
const v2, 0x7f02018a
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V
:goto_2f
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectPhotosCounter:Landroid/widget/TextView;
const-string/jumbo v2, "%d"
new-array v3, v3, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v3, v5
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
:cond_44
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectPhotosSureBtn:Landroid/view/View;
invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectPhotosNoPhotoLayout:Landroid/view/View;
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectPhotosHavePhotoLayout:Landroid/view/View;
invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V
goto :goto_1e
:cond_54
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectPhotosCounter:Landroid/widget/TextView;
invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V
goto :goto_2f
.end method