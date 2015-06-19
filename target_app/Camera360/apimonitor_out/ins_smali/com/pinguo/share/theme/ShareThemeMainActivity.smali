.class public Lcom/pinguo/share/theme/ShareThemeMainActivity;
.super Landroid/app/Activity;
.source "ShareThemeMainActivity.java"
.field public static final ACTIVITY_CONTENT:Ljava/lang/String; = "activity_content"
.field public static final ACTIVITY_ID:Ljava/lang/String; = "activity_id"
.field public static final ALERT_DIALOG_NET_WORK:I = 0x10010
.field public static final DEFAULT:Ljava/lang/String; = "default"
.field public static final DESCRIPTION:Ljava/lang/String; = "description"
.field public static final DOWNLOAD_CURRENT_CANCEL:I = 0x10006
.field public static final DOWNLOAD_CURRENT_FAIL:I = 0x10005
.field public static final DOWNLOAD_CURRENT_START:I = 0x10008
.field public static final DOWNLOAD_CURRENT_SUCCESS:I = 0x10004
.field public static final DOWNLOAD_CURRONT_PROCESS:I = 0x10007
.field public static final DOWNLOAD_TEMPLATE_CANCEL:I = 0x10013
.field public static final DOWNLOAD_TEMPLATE_FAIL:I = 0x10012
.field public static final DOWNLOAD_TEMPLATE_LIST_CANCEL:I = 0x10003
.field public static final DOWNLOAD_TEMPLATE_LIST_FAIL:I = 0x10002
.field public static final DOWNLOAD_TEMPLATE_LIST_SUCCESS:I = 0x10001
.field public static final DOWNLOAD_TEMPLATE_SUCCESS:I = 0x10011
.field public static final ID:Ljava/lang/String; = "id"
.field public static final NAME:Ljava/lang/String; = "name"
.field public static final PATH:Ljava/lang/String; = "path"
.field private static final STR_TEMPLATE_INFORMATION:Ljava/lang/String; = null
.field public static final TAG:Ljava/lang/String; = "tag"
.field public static final TAG_BIG_PATH:Ljava/lang/String; = "big_path"
.field public static final TAG_PUSH:Ljava/lang/String; = "push"
.field public static final THEME:Ljava/lang/String; = "theme"
.field private static final UPDATE_GRID_VIEW:I = 0x10009
.field private bClick:Z
.field private bInit:Z
.field private bInitDialgo:Z
.field private mActivityContent:Ljava/lang/String;
.field private mAdapter:Lcom/pinguo/share/theme/ShareThemeAdapter;
.field private mContext:Landroid/content/Context;
.field private mCurrentDownloadStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;
.field private mDownloadAlertDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
.field private mFailLoadingBitmap:Landroid/graphics/Bitmap;
.field private mGridView:Landroid/widget/GridView;
.field private mHandler:Landroid/os/Handler;
.field private mLastSelectedTemplateId:I
.field private mList:Ljava/util/List;
.field private mLoadingBitmap:Landroid/graphics/Bitmap;
.field private mOnClick:Landroid/view/View$OnClickListener;
.field private mPhotoHeight:I
.field private mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
.field private mTNC:Lcom/pinguo/share/theme/ThemeNetConsole;
.field private mTempList:Ljava/util/List;
.field private mXC:Lcom/pinguo/share/theme/ThemeXMLConsole;
.field private nCurrentDownloadType:I
.field private strLocalString:Ljava/lang/String;
.field private strNetString:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_FILE_NAME:Ljava/lang/String;
sput-object v0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->STR_TEMPLATE_INFORMATION:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 4
const/4 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
iput-object v1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mXC:Lcom/pinguo/share/theme/ThemeXMLConsole;
iput-object v1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mTNC:Lcom/pinguo/share/theme/ThemeNetConsole;
iput-object v1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mAdapter:Lcom/pinguo/share/theme/ShareThemeAdapter;
iput-object v1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mList:Ljava/util/List;
iput-boolean v2, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->bClick:Z
iput-object v1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mCurrentDownloadStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;
iput v2, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->nCurrentDownloadType:I
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->strLocalString:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->strNetString:Ljava/lang/String;
iput-object v1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mDownloadAlertDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
iput-object v1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
new-instance v0, Lcom/pinguo/share/theme/ShareThemeMainActivity$1;
invoke-direct {v0, p0}, Lcom/pinguo/share/theme/ShareThemeMainActivity$1;-><init>(Lcom/pinguo/share/theme/ShareThemeMainActivity;)V
iput-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mOnClick:Landroid/view/View$OnClickListener;
iput-boolean v2, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->bInitDialgo:Z
iput-object v1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mTempList:Ljava/util/List;
iput-boolean v2, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->bInit:Z
new-instance v0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;
invoke-direct {v0, p0}, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;-><init>(Lcom/pinguo/share/theme/ShareThemeMainActivity;)V
iput-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mHandler:Landroid/os/Handler;
iput v2, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mLastSelectedTemplateId:I
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mList:Ljava/util/List;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/share/theme/ShareThemeMainActivity;Lcom/pinguo/share/theme/ThemeXMLStruct;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mCurrentDownloadStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;
return-void
.end method
.method static synthetic access$10(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/theme/ShareThemeAdapter;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mAdapter:Lcom/pinguo/share/theme/ShareThemeAdapter;
return-object v0
.end method
.method static synthetic access$11(Lcom/pinguo/share/theme/ShareThemeMainActivity;)I
.registers 2
iget v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mLastSelectedTemplateId:I
return v0
.end method
.method static synthetic access$12(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Landroid/widget/GridView;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mGridView:Landroid/widget/GridView;
return-object v0
.end method
.method static synthetic access$13(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/theme/ThemeNetConsole;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mTNC:Lcom/pinguo/share/theme/ThemeNetConsole;
return-object v0
.end method
.method static synthetic access$14(Lcom/pinguo/share/theme/ShareThemeMainActivity;)I
.registers 2
iget v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->nCurrentDownloadType:I
return v0
.end method
.method static synthetic access$15(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mActivityContent:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$16(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->strNetString:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$17(Lcom/pinguo/share/theme/ShareThemeMainActivity;Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->strNetString:Ljava/lang/String;
return-void
.end method
.method static synthetic access$18(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->strLocalString:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$19(Lcom/pinguo/share/theme/ShareThemeMainActivity;)I
.registers 2
iget v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mPhotoHeight:I
return v0
.end method
.method static synthetic access$2(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/theme/ThemeXMLStruct;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mCurrentDownloadStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;
return-object v0
.end method
.method static synthetic access$20(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Landroid/view/View$OnClickListener;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mOnClick:Landroid/view/View$OnClickListener;
return-object v0
.end method
.method static synthetic access$21(Lcom/pinguo/share/theme/ShareThemeMainActivity;Lcom/pinguo/share/theme/ShareThemeAdapter;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mAdapter:Lcom/pinguo/share/theme/ShareThemeAdapter;
return-void
.end method
.method static synthetic access$22(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/theme/ThemeXMLConsole;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mXC:Lcom/pinguo/share/theme/ThemeXMLConsole;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mLoadingBitmap:Landroid/graphics/Bitmap;
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mFailLoadingBitmap:Landroid/graphics/Bitmap;
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/share/theme/ShareThemeMainActivity;I)V
.registers 2
iput p1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->nCurrentDownloadType:I
return-void
.end method
.method static synthetic access$6(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mDownloadAlertDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
return-object v0
.end method
.method static synthetic access$7(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mHandler:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic access$8(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
return-object v0
.end method
.method static synthetic access$9(Lcom/pinguo/share/theme/ShareThemeMainActivity;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->showNewAlertInformation()V
return-void
.end method
.method private createDownloadAlertDialog()V
.registers 4
new-instance v0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-direct {v0, p0}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mDownloadAlertDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mDownloadAlertDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
iget-object v1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mContext:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f080061
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setTitle(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mDownloadAlertDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
iget-object v1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mContext:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f080062
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mDownloadAlertDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
const/4 v1, 0x3
invoke-virtual {v0, v1}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setProgressStyle(I)V
iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mDownloadAlertDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
iget-object v1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mContext:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f080063
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/pinguo/share/theme/ShareThemeMainActivity$3;
invoke-direct {v2, p0}, Lcom/pinguo/share/theme/ShareThemeMainActivity$3;-><init>(Lcom/pinguo/share/theme/ShareThemeMainActivity;)V
invoke-virtual {v0, v1, v2}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mDownloadAlertDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
new-instance v1, Lcom/pinguo/share/theme/ShareThemeMainActivity$4;
invoke-direct {v1, p0}, Lcom/pinguo/share/theme/ShareThemeMainActivity$4;-><init>(Lcom/pinguo/share/theme/ShareThemeMainActivity;)V
invoke-virtual {v0, v1}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
return-void
.end method
.method private downloadThemeList()V
.registers 5
const/4 v3, 0x0
new-instance v0, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;
invoke-direct {v0, p0}, Lcom/pinguo/share/theme/ShareThemeMainActivity$5;-><init>(Lcom/pinguo/share/theme/ShareThemeMainActivity;)V
invoke-virtual {p0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->isFinishing()Z
move-result v1
if-nez v1, :cond_23
new-instance v1, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-direct {v1, p0}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
iget-object v1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
const/4 v2, 0x6
invoke-virtual {v1, v2}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setProgressStyle(I)V
iget-object v1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-virtual {v1}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->show()V
iget-object v1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-virtual {v1, v3, v3}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setOrientation(IZ)V
:cond_23
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
return-void
.end method
.method private init()V
.registers 14
const/4 v4, 0x1
iget-boolean v1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->bInit:Z
if-eqz v1, :cond_6
:goto_5
:cond_5
return-void
:cond_6
iput-boolean v4, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->bInit:Z
new-instance v7, Ljava/io/File;
sget-object v1, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_SAVE_PATH:Ljava/lang/String;
invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v7}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_1b
invoke-virtual {v7}, Ljava/io/File;->mkdir()Z
move-result v1
if-eqz v1, :cond_5
:cond_1b
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mList:Ljava/util/List;
const v1, 0x7f0a00c2
invoke-virtual {p0, v1}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/GridView;
iput-object v1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mGridView:Landroid/widget/GridView;
invoke-static {}, Lcom/pinguo/share/util/ShareModuleUtil;->getLocationInfo()Ljava/lang/String;
sget-object v1, Lcom/pinguo/share/theme/ShareThemeMainActivity;->STR_TEMPLATE_INFORMATION:Ljava/lang/String;
invoke-static {v1}, Lcom/pinguo/share/theme/ThemeXMLConsole;->loadJSONFile(Ljava/lang/String;)Ljava/util/List;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mTempList:Ljava/util/List;
const/4 v9, 0x0
:goto_39
iget-object v1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mTempList:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-lt v9, v1, :cond_7f
invoke-static {}, Lcom/pinguo/share/util/ShareModuleUtil;->getLocationInfo()Ljava/lang/String;
const/4 v10, 0x0
iget-object v1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mTempList:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_4b
:cond_4b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_8d
new-instance v0, Lcom/pinguo/share/theme/ShareThemeAdapter;
iget-object v2, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mTempList:Ljava/util/List;
iget v3, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mPhotoHeight:I
iget-object v4, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mOnClick:Landroid/view/View$OnClickListener;
iget-object v5, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mLoadingBitmap:Landroid/graphics/Bitmap;
move-object v1, p0
invoke-direct/range {v0 .. v5}, Lcom/pinguo/share/theme/ShareThemeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILandroid/view/View$OnClickListener;Landroid/graphics/Bitmap;)V
iget v1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mLastSelectedTemplateId:I
invoke-virtual {v0, v1}, Lcom/pinguo/share/theme/ShareThemeAdapter;->setSelectedId(I)V
iget-object v1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mGridView:Landroid/widget/GridView;
invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mList:Ljava/util/List;
iget-object v2, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mTempList:Ljava/util/List;
invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
iget-object v1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mTempList:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
const/4 v2, 0x2
if-lt v1, v2, :cond_7b
if-lez v10, :cond_139
:cond_7b
invoke-direct {p0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->downloadThemeList()V
goto :goto_5
:cond_7f
iget-object v1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mTempList:Ljava/util/List;
invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-virtual {v1, v4}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setLocalInfo(Z)V
add-int/lit8 v9, v9, 0x1
goto :goto_39
:cond_8d
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v9
check-cast v9, Lcom/pinguo/share/theme/ThemeXMLStruct;
new-instance v2, Ljava/lang/StringBuilder;
sget-object v3, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_SAVE_PATH:Ljava/lang/String;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, "/"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v9}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getSmall()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/pinguo/share/util/ShareModuleUtil;->getNewThemeFileName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
new-instance v8, Ljava/io/File;
invoke-direct {v8, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v8}, Ljava/io/File;->exists()Z
move-result v2
if-eqz v2, :cond_128
new-instance v11, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V
iput-boolean v4, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v6
if-eqz v6, :cond_4b
iget-object v2, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->strLocalString:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v9}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getId()I
move-result v2
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v9}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getTitle()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v9}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getSmall()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v9}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getUrlPrefix()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v9}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getPreviewName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v9}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getPreviewUrl()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v9}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getActivity()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v9}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getTag()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v9}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getDefault()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->strLocalString:Ljava/lang/String;
goto/16 :goto_4b
:cond_128
invoke-virtual {v9}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getUrlPrefix()Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "default_theme"
invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_4b
add-int/lit8 v10, v10, 0x1
goto/16 :goto_4b
:cond_139
iget-object v1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mContext:Landroid/content/Context;
invoke-static {v1}, Lcom/pinguo/share/theme/ThemeNetConsole;->checkAndUpdateTimespan(Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_5
invoke-direct {p0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->downloadThemeList()V
goto/16 :goto_5
.end method
.method private initDialog()V
.registers 2
iget-boolean v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->bInitDialgo:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->bInitDialgo:Z
invoke-direct {p0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->createDownloadAlertDialog()V
goto :goto_4
.end method
.method private showNewAlertInformation()V
.registers 2
const v0, 0x7f08003d
invoke-virtual {p0, v0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Lcom/pinguo/share/ShareAccess;->showToast(Landroid/app/Activity;Ljava/lang/String;)V
return-void
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 5
if-eqz p3, :cond_9
const/4 v0, 0x0
invoke-virtual {p0, v0, p3}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->setResult(ILandroid/content/Intent;)V
invoke-virtual {p0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->finish()V
:cond_9
invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 9
const-string v1, " + Lcom/pinguo/share/theme/ShareThemeMainActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v6, 0x1
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
:try_start_4
sget-object v5, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_SAVE_PATH:Ljava/lang/String;
invoke-static {v5}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->checkNomediaFile(Ljava/lang/String;)Z
:try_end_9
.catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_af
:goto_9
invoke-virtual {p0, v6}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->requestWindowFeature(I)Z
invoke-virtual {p0, v6}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->setRequestedOrientation(I)V
new-instance v0, Landroid/util/DisplayMetrics;
invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V
invoke-virtual {p0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v5
invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v5
invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
invoke-virtual {p0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f0c0008
invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I
move-result v3
iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I
int-to-float v5, v5
iget v6, v0, Landroid/util/DisplayMetrics;->density:F
div-float/2addr v5, v6
const/high16 v6, 0x421c
sub-float/2addr v5, v6
iget v6, v0, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v5, v6
int-to-float v6, v3
div-float/2addr v5, v6
invoke-static {v5}, Ljava/lang/Math;->round(F)I
move-result v5
iput v5, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mPhotoHeight:I
const v5, 0x7f030027
invoke-virtual {p0, v5}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->setContentView(I)V
invoke-virtual {p0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->getIntent()Landroid/content/Intent;
move-result-object v5
const-string/jumbo v6, "id"
invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_61
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v5
if-lez v5, :cond_61
invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
move-result v5
iput v5, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mLastSelectedTemplateId:I
:cond_61
invoke-virtual {p0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->getIntent()Landroid/content/Intent;
move-result-object v5
const-string/jumbo v6, "activity_content"
invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
iput-object v5, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mActivityContent:Ljava/lang/String;
invoke-virtual {p0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f020054
invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v5
iput-object v5, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mLoadingBitmap:Landroid/graphics/Bitmap;
invoke-virtual {p0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f020053
invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v5
iput-object v5, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mFailLoadingBitmap:Landroid/graphics/Bitmap;
iput-object p0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mContext:Landroid/content/Context;
invoke-direct {p0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->initDialog()V
const v5, 0x7f0a00c0
invoke-virtual {p0, v5}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->findViewById(I)Landroid/view/View;
move-result-object v4
new-instance v5, Lcom/pinguo/share/theme/ShareThemeMainActivity$6;
invoke-direct {v5, p0}, Lcom/pinguo/share/theme/ShareThemeMainActivity$6;-><init>(Lcom/pinguo/share/theme/ShareThemeMainActivity;)V
invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v5, Lcom/pinguo/share/theme/ThemeXMLConsole;
invoke-direct {v5}, Lcom/pinguo/share/theme/ThemeXMLConsole;-><init>()V
iput-object v5, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mXC:Lcom/pinguo/share/theme/ThemeXMLConsole;
iget-object v5, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mTNC:Lcom/pinguo/share/theme/ThemeNetConsole;
if-nez v5, :cond_ae
new-instance v5, Lcom/pinguo/share/theme/ThemeNetConsole;
invoke-direct {v5, p0}, Lcom/pinguo/share/theme/ThemeNetConsole;-><init>(Landroid/content/Context;)V
iput-object v5, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mTNC:Lcom/pinguo/share/theme/ThemeNetConsole;
:cond_ae
const-string v1, " - Lcom/pinguo/share/theme/ShareThemeMainActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_af
move-exception v1
const-string/jumbo v5, "ShareTheme"
invoke-static {v5, v1}, Lcom/pinguo/Camera360Lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
goto/16 :goto_9
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/pinguo/share/theme/ShareThemeMainActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onDestroy()V
iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mDownloadAlertDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mDownloadAlertDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->dismiss()V
:cond_c
const-string v1, " - Lcom/pinguo/share/theme/ShareThemeMainActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/pinguo/share/theme/ShareThemeMainActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onPause()V
invoke-static {p0}, Lcom/pinguo/share/ShareAccess;->statOnPause(Landroid/app/Activity;)V
iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mTNC:Lcom/pinguo/share/theme/ThemeNetConsole;
invoke-virtual {v0}, Lcom/pinguo/share/theme/ThemeNetConsole;->stop()V
const-string v1, " - Lcom/pinguo/share/theme/ShareThemeMainActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/pinguo/share/theme/ShareThemeMainActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onResume()V
invoke-static {p0}, Lcom/pinguo/share/ShareAccess;->statOnResume(Landroid/app/Activity;)V
const-string v1, " - Lcom/pinguo/share/theme/ShareThemeMainActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStart()V
.registers 3
const-string v1, " + Lcom/pinguo/share/theme/ShareThemeMainActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onStart()V
iget-boolean v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->bInit:Z
if-nez v0, :cond_20
invoke-direct {p0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->initDialog()V
invoke-direct {p0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->init()V
iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mTNC:Lcom/pinguo/share/theme/ThemeNetConsole;
invoke-virtual {v0}, Lcom/pinguo/share/theme/ThemeNetConsole;->getDownloadList()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mTNC:Lcom/pinguo/share/theme/ThemeNetConsole;
iget-object v1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, v1}, Lcom/pinguo/share/theme/ThemeNetConsole;->go(Landroid/os/Handler;)V
:cond_20
const-string v1, " - Lcom/pinguo/share/theme/ShareThemeMainActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStop()V
.registers 3
const-string v1, " + Lcom/pinguo/share/theme/ShareThemeMainActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onStop()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity;->bInitDialgo:Z
const-string v1, " - Lcom/pinguo/share/theme/ShareThemeMainActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method