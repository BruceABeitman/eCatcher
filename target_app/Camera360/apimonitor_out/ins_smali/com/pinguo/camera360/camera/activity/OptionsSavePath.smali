.class public Lcom/pinguo/camera360/camera/activity/OptionsSavePath;
.super Lcom/pinguo/camera360/base/BaseRotateActivity;
.source "OptionsSavePath.java"
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;
.field public static final NAME:Ljava/lang/String; = "name"
.field public static final PATH:Ljava/lang/String; = "path"
.field private static final SD_CARD_PATH:Ljava/lang/String; = null
.field private static final TAG:Ljava/lang/String; = null
.field public static final TAG_RESULT:I = 0x7f0300d4
.field static mFielFilter:Ljava/io/FileFilter;
.field static mFileComparator:Ljava/util/Comparator;
.field private btnSavePathSelect:Landroid/widget/Button;
.field private dialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
.field private layOptionSavePath:Lcom/pinguo/camera360/lib/ui/RotateLayout;
.field private laySavePathRoot:Landroid/widget/FrameLayout;
.field  listener:Landroid/content/DialogInterface$OnClickListener;
.field private mCurrListView:Landroid/widget/ListView;
.field private mIsRoot:Z
.field  mOnItemClick:Landroid/widget/AdapterView$OnItemClickListener;
.field private mPathTitle:Lcom/pinguo/camera360/ui/TitleView;
.field private mRootFile:Ljava/io/File;
.field private select_which:I
.field private tvSavePath:Landroid/widget/TextView;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->TAG:Ljava/lang/String;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->SD_CARD_PATH:Ljava/lang/String;
new-instance v0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath$1;
invoke-direct {v0}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath$1;-><init>()V
sput-object v0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->mFielFilter:Ljava/io/FileFilter;
new-instance v0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath$3;
invoke-direct {v0}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath$3;-><init>()V
sput-object v0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->mFileComparator:Ljava/util/Comparator;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseRotateActivity;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->layOptionSavePath:Lcom/pinguo/camera360/lib/ui/RotateLayout;
new-instance v0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath$2;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath$2;-><init>(Lcom/pinguo/camera360/camera/activity/OptionsSavePath;)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->listener:Landroid/content/DialogInterface$OnClickListener;
new-instance v0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath$4;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath$4;-><init>(Lcom/pinguo/camera360/camera/activity/OptionsSavePath;)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->mOnItemClick:Landroid/widget/AdapterView$OnItemClickListener;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/camera/activity/OptionsSavePath;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->usePath()V
return-void
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/camera/activity/OptionsSavePath;Ljava/io/File;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->updateView(Ljava/io/File;)V
return-void
.end method
.method private getDlgMessage()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const v1, 0x7f0802d0
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->getPath()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private getPath()Ljava/lang/String;
.registers 5
iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->mCurrListView:Landroid/widget/ListView;
invoke-virtual {v2}, Landroid/widget/ListView;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v1
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_27
new-instance v2, Ljava/lang/StringBuilder;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:cond_27
return-object v1
.end method
.method private initData()V
.registers 5
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->getIntent()Landroid/content/Intent;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v1
const-string/jumbo v2, "select_root"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->getIntent()Landroid/content/Intent;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v1
const-string/jumbo v2, "select_which"
const/4 v3, 0x1
invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v1
iput v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->select_which:I
new-instance v1, Ljava/io/File;
invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
iput-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->mRootFile:Ljava/io/File;
return-void
.end method
.method private initListener()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->mPathTitle:Lcom/pinguo/camera360/ui/TitleView;
invoke-virtual {v0, p0}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->btnSavePathSelect:Landroid/widget/Button;
invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method private initView()V
.registers 3
const v0, 0x7f0a04cc
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/ui/TitleView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->mPathTitle:Lcom/pinguo/camera360/ui/TitleView;
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->mPathTitle:Lcom/pinguo/camera360/ui/TitleView;
const v1, 0x7f0802d4
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(I)V
const v0, 0x7f0a04b7
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/lib/ui/RotateLayout;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->layOptionSavePath:Lcom/pinguo/camera360/lib/ui/RotateLayout;
const v0, 0x7f0a04cd
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->tvSavePath:Landroid/widget/TextView;
const v0, 0x7f0a04cf
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->laySavePathRoot:Landroid/widget/FrameLayout;
const v0, 0x7f0a04ce
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->btnSavePathSelect:Landroid/widget/Button;
return-void
.end method
.method private isRootDir(Ljava/io/File;)Z
.registers 5
const/4 v0, 0x0
if-eqz p1, :cond_12
invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->mRootFile:Ljava/io/File;
invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method private obtainListView(Landroid/content/Context;Ljava/io/File;Z)Landroid/widget/ListView;
.registers 15
const/4 v10, 0x0
sget-object v8, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->mFielFilter:Ljava/io/FileFilter;
invoke-virtual {p2, v8}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
move-result-object v7
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
if-nez p3, :cond_26
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
const-string/jumbo v8, "name"
const-string/jumbo v9, "......."
invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v8, "path"
const/4 v9, 0x0
invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_26
const/4 v4, 0x0
:goto_27
if-eqz v7, :cond_2c
array-length v8, v7
if-lt v4, v8, :cond_5f
:cond_2c
sget-object v8, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->mFileComparator:Ljava/util/Comparator;
invoke-static {v1, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
new-instance v5, Landroid/widget/ListView;
invoke-direct {v5, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V
new-instance v0, Lcom/pinguo/camera360/adapter/OptionsSavePathAdapter;
invoke-direct {v0, p1, v1}, Lcom/pinguo/camera360/adapter/OptionsSavePathAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V
invoke-virtual {v5, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v8, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->mOnItemClick:Landroid/widget/AdapterView$OnItemClickListener;
invoke-virtual {v5, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->getResources()Landroid/content/res/Resources;
move-result-object v8
const v9, 0x7f0200d2
invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v8
invoke-virtual {v5, v8}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V
const/4 v8, 0x2
invoke-virtual {v5, v8}, Landroid/widget/ListView;->setDividerHeight(I)V
invoke-virtual {v5, v10}, Landroid/widget/ListView;->setBackgroundResource(I)V
invoke-virtual {v5, v10}, Landroid/widget/ListView;->setCacheColorHint(I)V
invoke-virtual {v5, p2}, Landroid/widget/ListView;->setTag(Ljava/lang/Object;)V
return-object v5
:cond_5f
aget-object v2, v7, v4
new-instance v6, Ljava/util/HashMap;
invoke-direct {v6}, Ljava/util/HashMap;-><init>()V
const-string/jumbo v8, "name"
invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v9
invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v8, "path"
invoke-virtual {v6, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v4, v4, 0x1
goto :goto_27
.end method
.method private updateView(Ljava/io/File;)V
.registers 8
iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->laySavePathRoot:Landroid/widget/FrameLayout;
invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V
invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->isRootDir(Ljava/io/File;)Z
move-result v0
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->mIsRoot:Z
iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->laySavePathRoot:Landroid/widget/FrameLayout;
iget-boolean v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->mIsRoot:Z
invoke-direct {p0, p0, p1, v3}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->obtainListView(Landroid/content/Context;Ljava/io/File;Z)Landroid/widget/ListView;
move-result-object v3
iput-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->mCurrListView:Landroid/widget/ListView;
invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
if-eqz v0, :cond_2d
iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->tvSavePath:Landroid/widget/TextView;
invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_23
iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->btnSavePathSelect:Landroid/widget/Button;
if-eqz v0, :cond_48
const/16 v2, 0x8
:goto_29
invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V
return-void
:cond_2d
iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->mCurrListView:Landroid/widget/ListView;
invoke-virtual {v2}, Landroid/widget/ListView;->getTag()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/io/File;
iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->tvSavePath:Landroid/widget/TextView;
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v3
sget-object v4, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->SD_CARD_PATH:Ljava/lang/String;
const-string/jumbo v5, ""
invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_23
:cond_48
const/4 v2, 0x0
goto :goto_29
.end method
.method private usePath()V
.registers 6
invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->getPath()Ljava/lang/String;
move-result-object v2
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v3
invoke-virtual {v3, v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setPictureSavePath(Ljava/lang/String;)V
const-string/jumbo v3, "pic_save_path"
invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v3, "select_which"
iget v4, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->select_which:I
invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
new-instance v1, Landroid/content/Intent;
invoke-direct {v1}, Landroid/content/Intent;-><init>()V
if-eqz v0, :cond_28
invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
:cond_28
const v3, 0x7f0300d4
invoke-virtual {p0, v3, v1}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->setResult(ILandroid/content/Intent;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->finish()V
return-void
.end method
.method public onBackClick()V
.registers 1
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->finish()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/activity/OptionsSavePath; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
packed-switch v0, :pswitch_data_32
:goto_8
const-string v1, " - Lcom/pinguo/camera360/camera/activity/OptionsSavePath; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_9
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->dialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->dialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->dialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->dismiss()V
:cond_1a
invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->getDlgMessage()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->listener:Landroid/content/DialogInterface$OnClickListener;
invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->showDialogTips(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->dialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->dialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->dialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0, v2, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOrientation(IZ)V
goto :goto_8
nop
:pswitch_data_32
.packed-switch 0x7f0a04ce
:pswitch_9
.end packed-switch
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/pinguo/camera360/camera/activity/OptionsSavePath; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseRotateActivity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f0300d4
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->setContentView(I)V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->initData()V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->initView()V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->initListener()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->mRootFile:Ljava/io/File;
invoke-direct {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->updateView(Ljava/io/File;)V
const-string v1, " - Lcom/pinguo/camera360/camera/activity/OptionsSavePath; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;Z)V
.registers 5
const-string v1, " + Lcom/pinguo/camera360/camera/activity/OptionsSavePath; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/pinguo/camera360/camera/activity/OptionsSavePath; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 9
const/4 v0, 0x1
const/4 v1, 0x4
if-ne p1, v1, :cond_12
iget-boolean v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->mIsRoot:Z
if-nez v1, :cond_12
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->mCurrListView:Landroid/widget/ListView;
const/4 v2, 0x0
const/4 v3, 0x0
const-wide/16 v4, 0x0
invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z
:goto_11
:cond_11
return v0
:cond_12
const/16 v1, 0x52
if-eq p1, v1, :cond_11
invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/base/BaseRotateActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
goto :goto_11
.end method
.method public onOptionsSavePathTitileBack(Landroid/view/View;)V
.registers 7
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->mCurrListView:Landroid/widget/ListView;
const/4 v1, 0x0
const/4 v2, 0x0
const-wide/16 v3, 0x0
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->finish()V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/camera/activity/OptionsSavePath; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseRotateActivity;->onPause()V
invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V
const-string v1, " - Lcom/pinguo/camera360/camera/activity/OptionsSavePath; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/camera/activity/OptionsSavePath; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseRotateActivity;->onResume()V
invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V
const-string v1, " - Lcom/pinguo/camera360/camera/activity/OptionsSavePath; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onRightBtnClick()V
.registers 1
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->finish()V
return-void
.end method
.method protected setOrientationIndicator(IZ)V
.registers 3
return-void
.end method