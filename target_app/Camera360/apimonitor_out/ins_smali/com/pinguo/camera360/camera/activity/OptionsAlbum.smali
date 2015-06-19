.class public Lcom/pinguo/camera360/camera/activity/OptionsAlbum;
.super Lcom/pinguo/camera360/base/BaseActivity;
.source "OptionsAlbum.java"
.implements Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;
.implements Landroid/view/View$OnClickListener;
.field private static final BUCKET_GROUP_BY:Ljava/lang/String; = "GROUP BY 1,(2"
.field private static final BUCKET_ORDER_BY:Ljava/lang/String; = "MAX(datetaken) DESC"
.field private static final BUCKET_WHERE:Ljava/lang/String; = "1)"
.field private static final MSG_SHOW_DIALOG_PROCESS:I = 0x1
.field private static final PROJECTION_BUCKET:[Ljava/lang/String; = null
.field private static final TAG:Ljava/lang/String; = "OptionsAlbum"
.field private listView:Landroid/widget/ListView;
.field private listViewAdapter:Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;
.field private mAlbumListItems:Ljava/util/ArrayList;
.field private mAlbumTitleView:Lcom/pinguo/camera360/ui/TitleView;
.field private mCheckedCount:I
.field private mDeleteHideAlbumBtn:Landroid/widget/Button;
.field private mEmptyAlbumView:Landroid/view/View;
.field private mHander:Landroid/os/Handler;
.field  mHideAlbumList:Ljava/util/ArrayList;
.field private mIsCancelDelPic:Z
.field private mProcessDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
.field private mShowHideAlbumBtn:Landroid/widget/Button;
.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
.field private view:Landroid/view/View;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string/jumbo v2, "bucket_id"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string/jumbo v2, "bucket_display_name"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string/jumbo v2, "_data"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string/jumbo v2, "count(*)"
aput-object v2, v0, v1
sput-object v0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->PROJECTION_BUCKET:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseActivity;-><init>()V
iput v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mCheckedCount:I
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mIsCancelDelPic:Z
new-instance v0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$1;-><init>(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mHander:Landroid/os/Handler;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mProcessDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)Ljava/util/ArrayList;
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->initHideAlbumInfo()Ljava/util/ArrayList;
move-result-object v0
return-object v0
.end method
.method static synthetic access$10(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mCheckedCount:I
return v0
.end method
.method static synthetic access$11(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->showEmptyHideAlbumUI()V
return-void
.end method
.method static synthetic access$12(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumListItems:Ljava/util/ArrayList;
return-object v0
.end method
.method static synthetic access$13(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->updateTopView()V
return-void
.end method
.method static synthetic access$14(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->updateBottomView()V
return-void
.end method
.method static synthetic access$15(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mProcessDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
return-void
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mCheckedCount:I
return-void
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;Ljava/util/ArrayList;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumListItems:Ljava/util/ArrayList;
return-void
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->listViewAdapter:Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;
return-void
.end method
.method static synthetic access$6(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)Landroid/widget/ListView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->listView:Landroid/widget/ListView;
return-object v0
.end method
.method static synthetic access$7(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->listViewAdapter:Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;
return-object v0
.end method
.method static synthetic access$8(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mIsCancelDelPic:Z
return-void
.end method
.method static synthetic access$9(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)Lcom/pinguo/camera360/ui/TitleView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumTitleView:Lcom/pinguo/camera360/ui/TitleView;
return-object v0
.end method
.method private getHideAlbumList()Ljava/util/ArrayList;
.registers 12
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v8
invoke-virtual {v8}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getHideAlbumList()Ljava/lang/String;
move-result-object v4
const-string/jumbo v8, "OptionsAlbum"
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, "hideAlbumStr = "
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v8
if-nez v8, :cond_50
const/4 v2, 0x0
:try_start_25
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
:try_start_2a
:try_end_2a
.catch Lorg/json/JSONException; {:try_start_25 .. :try_end_2a} :catch_4b
new-instance v7, Lorg/json/JSONObject;
invoke-direct {v7, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v8, "hidelist"
invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v0
const/4 v5, 0x0
:goto_37
invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
move-result v8
if-lt v5, v8, :cond_3f
move-object v2, v3
:goto_3e
return-object v2
:cond_3f
invoke-virtual {v0, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Ljava/lang/String;
invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_48
.catch Lorg/json/JSONException; {:try_start_2a .. :try_end_48} :catch_52
add-int/lit8 v5, v5, 0x1
goto :goto_37
:catch_4b
move-exception v1
:goto_4c
invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_3e
:cond_50
const/4 v2, 0x0
goto :goto_3e
:catch_52
move-exception v1
move-object v2, v3
goto :goto_4c
.end method
.method private initHideAlbumInfo()Ljava/util/ArrayList;
.registers 14
const/4 v4, 0x0
const-string/jumbo v1, "OptionsAlbum"
const-string/jumbo v11, "initHideAlbumInfo"
invoke-static {v1, v11}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mHideAlbumList:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-nez v1, :cond_13
:cond_12
:goto_12
return-object v4
:cond_13
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppInstance()Lcom/pinguo/camera360/PgCameraApplication;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/PgCameraApplication;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
sget-object v2, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->PROJECTION_BUCKET:[Ljava/lang/String;
new-instance v11, Ljava/lang/StringBuilder;
const-string/jumbo v12, "1)"
invoke-direct {p0, v12}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->updateSelectWhereClause(Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v12
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v12, "GROUP BY 1,(2"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const-string/jumbo v5, "MAX(datetaken) DESC"
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v7
if-eqz v7, :cond_12
new-instance v8, Ljava/util/ArrayList;
invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
const/4 v2, 0x0
:try_start_49
:cond_49
:goto_49
invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
:try_end_4c
.catchall {:try_start_49 .. :try_end_4c} :catchall_fc
move-result v1
if-nez v1, :cond_54
invoke-interface {v7}, Landroid/database/Cursor;->close()V
move-object v4, v8
goto :goto_12
:try_start_54
:cond_54
const-string/jumbo v1, "_data"
invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v1
invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v9
const-string/jumbo v1, "/"
invoke-virtual {v9, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_73
const/4 v1, 0x0
invoke-virtual {v9}, Ljava/lang/String;->length()I
move-result v11
add-int/lit8 v11, v11, -0x1
invoke-virtual {v9, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v9
:cond_73
const-string/jumbo v1, ".jpg"
invoke-virtual {v9, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_97
const-string/jumbo v1, ".png"
invoke-virtual {v9, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_97
const-string/jumbo v1, ".JPG"
invoke-virtual {v9, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_97
const-string/jumbo v1, ".PNG"
invoke-virtual {v9, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_a3
:cond_97
const/4 v1, 0x0
const-string/jumbo v11, "/"
invoke-virtual {v9, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v11
invoke-virtual {v9, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v9
:cond_a3
const/4 v1, 0x3
invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v4
if-lez v4, :cond_49
const/4 v6, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mHideAlbumList:Ljava/util/ArrayList;
if-eqz v1, :cond_c3
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mHideAlbumList:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-lez v1, :cond_c3
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mHideAlbumList:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_bd
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v11
if-nez v11, :cond_101
:goto_c3
:cond_c3
if-eqz v6, :cond_49
const-string/jumbo v1, "OptionsAlbum"
new-instance v11, Ljava/lang/StringBuilder;
const-string/jumbo v12, "path = "
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-static {v1, v11}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "_data"
invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v1
invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
const-string/jumbo v1, "bucket_id"
invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v1
invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v5
new-instance v0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;
move-object v1, p0
invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;-><init>(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_fa
.catchall {:try_start_54 .. :try_end_fa} :catchall_fc
goto/16 :goto_49
:catchall_fc
move-exception v1
invoke-interface {v7}, Landroid/database/Cursor;->close()V
throw v1
:try_start_101
:cond_101
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v10
check-cast v10, Ljava/lang/String;
move-object v2, v10
invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
:try_end_10b
.catchall {:try_start_101 .. :try_end_10b} :catchall_fc
move-result v11
if-eqz v11, :cond_bd
const/4 v6, 0x1
goto :goto_c3
.end method
.method private initListener()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mShowHideAlbumBtn:Landroid/widget/Button;
invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mDeleteHideAlbumBtn:Landroid/widget/Button;
invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumTitleView:Lcom/pinguo/camera360/ui/TitleView;
invoke-virtual {v0, p0}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V
return-void
.end method
.method private initView()V
.registers 3
const v0, 0x7f0a01c1
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->listView:Landroid/widget/ListView;
const v0, 0x7f0a053e
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mShowHideAlbumBtn:Landroid/widget/Button;
const v0, 0x7f0a053f
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mDeleteHideAlbumBtn:Landroid/widget/Button;
const v0, 0x7f0a0154
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->view:Landroid/view/View;
const v0, 0x7f0a01c0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/ui/TitleView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumTitleView:Lcom/pinguo/camera360/ui/TitleView;
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumTitleView:Lcom/pinguo/camera360/ui/TitleView;
const v1, 0x7f08008b
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumTitleView:Lcom/pinguo/camera360/ui/TitleView;
const v1, 0x7f08008c
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setRightBtnText(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumTitleView:Lcom/pinguo/camera360/ui/TitleView;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/TitleView;->showRightBtn()V
const v0, 0x7f0a01c2
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mEmptyAlbumView:Landroid/view/View;
return-void
.end method
.method private reShownHideAlbum()V
.registers 13
iget-object v9, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->listViewAdapter:Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;
invoke-virtual {v9}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->getCheckList()[Z
move-result-object v2
array-length v9, v2
iget-object v10, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumListItems:Ljava/util/ArrayList;
invoke-virtual {v10}, Ljava/util/ArrayList;->size()I
move-result v10
if-eq v9, v10, :cond_10
:cond_f
:goto_f
return-void
:cond_10
iget-object v9, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumListItems:Ljava/util/ArrayList;
invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
move-result v9
if-eqz v9, :cond_f
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
new-instance v7, Ljava/util/ArrayList;
invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
const-string/jumbo v9, "OptionsAlbum"
new-instance v10, Ljava/lang/StringBuilder;
const-string/jumbo v11, "mHideAlbumList 0= "
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v11, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mHideAlbumList:Ljava/util/ArrayList;
invoke-virtual {v11}, Ljava/util/ArrayList;->toString()Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v5, 0x0
:goto_3f
array-length v9, v2
if-lt v5, v9, :cond_cd
iget-object v9, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mHideAlbumList:Ljava/util/ArrayList;
invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V
iget-object v9, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumListItems:Ljava/util/ArrayList;
invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V
iput-object v6, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mHideAlbumList:Ljava/util/ArrayList;
iput-object v7, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumListItems:Ljava/util/ArrayList;
iget-object v9, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->listViewAdapter:Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;
iget-object v10, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumListItems:Ljava/util/ArrayList;
invoke-virtual {v10}, Ljava/util/ArrayList;->size()I
move-result v10
new-array v10, v10, [Z
invoke-virtual {v9, v10}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->setCheckList([Z)V
const-string/jumbo v9, "OptionsAlbum"
new-instance v10, Ljava/lang/StringBuilder;
const-string/jumbo v11, "mHideAlbumList = "
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v11, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mHideAlbumList:Ljava/util/ArrayList;
invoke-virtual {v11}, Ljava/util/ArrayList;->toString()Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v9, "OptionsAlbum"
new-instance v10, Ljava/lang/StringBuilder;
const-string/jumbo v11, "newListItems = "
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7}, Ljava/util/ArrayList;->toString()Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v9, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mHideAlbumList:Ljava/util/ArrayList;
if-eqz v9, :cond_f
:try_start_97
new-instance v8, Lorg/json/JSONObject;
invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V
new-instance v1, Lorg/json/JSONArray;
invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
iget-object v9, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mHideAlbumList:Ljava/util/ArrayList;
invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v9
:goto_a7
invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
move-result v10
if-nez v10, :cond_f3
const-string/jumbo v9, "hidelist"
invoke-virtual {v8, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v9
invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setHideAlbumList(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v9
invoke-virtual {v9}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->commitAllChange()V
:try_end_c5
.catch Lorg/json/JSONException; {:try_start_97 .. :try_end_c5} :catch_c7
goto/16 :goto_f
:catch_c7
move-exception v3
invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V
goto/16 :goto_f
:cond_cd
aget-boolean v9, v2, v5
if-eqz v9, :cond_d8
const/4 v9, 0x0
aput-boolean v9, v2, v5
:goto_d4
add-int/lit8 v5, v5, 0x1
goto/16 :goto_3f
:cond_d8
iget-object v9, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumListItems:Ljava/util/ArrayList;
invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;
invoke-virtual {v4}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;->getmAlbumPath()Ljava/lang/String;
move-result-object v9
invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v9, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumListItems:Ljava/util/ArrayList;
invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v9
check-cast v9, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;
invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_d4
:try_start_f3
:cond_f3
invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
:try_end_fc
.catch Lorg/json/JSONException; {:try_start_f3 .. :try_end_fc} :catch_c7
goto :goto_a7
.end method
.method private showEmptyHideAlbumUI()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mEmptyAlbumView:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mShowHideAlbumBtn:Landroid/widget/Button;
invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mDeleteHideAlbumBtn:Landroid/widget/Button;
invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumTitleView:Lcom/pinguo/camera360/ui/TitleView;
invoke-virtual {v0, p0}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumTitleView:Lcom/pinguo/camera360/ui/TitleView;
const v1, 0x7f08008c
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setRightBtnText(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumTitleView:Lcom/pinguo/camera360/ui/TitleView;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/TitleView;->setRightBtnEnable(Z)V
return-void
.end method
.method private updateBottomView()V
.registers 5
const/4 v3, 0x1
const/4 v2, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mShowHideAlbumBtn:Landroid/widget/Button;
invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z
move-result v0
iget v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mCheckedCount:I
if-lez v1, :cond_19
if-nez v0, :cond_19
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mShowHideAlbumBtn:Landroid/widget/Button;
invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mDeleteHideAlbumBtn:Landroid/widget/Button;
invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V
:goto_18
:cond_18
return-void
:cond_19
iget v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mCheckedCount:I
if-gtz v1, :cond_18
if-eqz v0, :cond_18
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mShowHideAlbumBtn:Landroid/widget/Button;
invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mDeleteHideAlbumBtn:Landroid/widget/Button;
invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V
goto :goto_18
.end method
.method private updateSelectWhereClause(Ljava/lang/String;)Ljava/lang/String;
.registers 12
const/4 v6, 0x0
move-object v3, p1
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppInstance()Lcom/pinguo/camera360/PgCameraApplication;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/camera360/PgCameraApplication;->getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/camera360/gallery/data/DataManager;->getC360PhotoTimes()[J
move-result-object v4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
array-length v5, v4
if-lez v5, :cond_1a
array-length v7, v4
move v5, v6
:goto_18
if-lt v5, v7, :cond_71
:cond_1a
invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I
move-result v5
if-lez v5, :cond_49
new-instance v5, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v7, " and datetaken not in("
invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
new-instance v5, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
:cond_49
const-string/jumbo v5, ","
invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v5
if-lez v5, :cond_70
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v5
add-int/lit8 v5, v5, -0x1
invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
new-instance v5, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v6, ")"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
:cond_70
return-object v3
:cond_71
aget-wide v1, v4, v5
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, ","
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v5, v5, 0x1
goto :goto_18
.end method
.method private updateTopView()V
.registers 3
iget v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mCheckedCount:I
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->listView:Landroid/widget/ListView;
invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I
move-result v1
if-ne v0, v1, :cond_13
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumTitleView:Lcom/pinguo/camera360/ui/TitleView;
const v1, 0x7f08008d
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setRightBtnText(I)V
:goto_12
return-void
:cond_13
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumTitleView:Lcom/pinguo/camera360/ui/TitleView;
const v1, 0x7f08008c
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setRightBtnText(I)V
goto :goto_12
.end method
.method public deleteHideAlbum()V
.registers 22
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->listViewAdapter:Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;
invoke-virtual {v15}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->getCheckList()[Z
move-result-object v1
const-string/jumbo v15, "OptionsAlbum"
new-instance v16, Ljava/lang/StringBuilder;
const-string/jumbo v17, "checkList.length ="
invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
array-length v0, v1
move/from16 v17, v0
invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v16
const-string/jumbo v17, " mHideAlbumList.size() = "
invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v16
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mHideAlbumList:Ljava/util/ArrayList;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I
move-result v17
invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v16
const-string/jumbo v17, " mAlbumListItems.size() = "
invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v16
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumListItems:Ljava/util/ArrayList;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I
move-result v17
invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v16
invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v16
invoke-static/range {v15 .. v16}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
array-length v15, v1
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumListItems:Ljava/util/ArrayList;
move-object/from16 v16, v0
invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I
move-result v16
move/from16 v0, v16
if-eq v15, v0, :cond_5b
:goto_5a
:cond_5a
return-void
:cond_5b
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumListItems:Ljava/util/ArrayList;
invoke-virtual {v15}, Ljava/util/ArrayList;->size()I
move-result v15
if-eqz v15, :cond_5a
new-instance v10, Ljava/util/ArrayList;
invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
new-instance v11, Ljava/util/ArrayList;
invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
new-instance v8, Lorg/json/JSONObject;
invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V
new-instance v7, Lorg/json/JSONArray;
invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V
const-string/jumbo v15, "OptionsAlbum"
new-instance v16, Ljava/lang/StringBuilder;
const-string/jumbo v17, "mHideAlbumList 0= "
invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mHideAlbumList:Ljava/util/ArrayList;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->toString()Ljava/lang/String;
move-result-object v17
invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v16
invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v16
invoke-static/range {v15 .. v16}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v6, 0x0
:goto_9f
array-length v15, v1
if-lt v6, v15, :cond_f8
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mHideAlbumList:Ljava/util/ArrayList;
invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumListItems:Ljava/util/ArrayList;
invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V
const-string/jumbo v14, "bucket_id = ?"
const/4 v6, 0x0
:goto_b4
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v15
if-lt v6, v15, :cond_121
move-object/from16 v0, p0
iput-object v10, v0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mHideAlbumList:Ljava/util/ArrayList;
move-object/from16 v0, p0
iput-object v11, v0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumListItems:Ljava/util/ArrayList;
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->listViewAdapter:Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumListItems:Ljava/util/ArrayList;
move-object/from16 v16, v0
invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I
move-result v16
move/from16 v0, v16
new-array v0, v0, [Z
move-object/from16 v16, v0
invoke-virtual/range {v15 .. v16}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->setCheckList([Z)V
:try_start_d9
const-string/jumbo v15, "hidelist"
invoke-virtual {v8, v15, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v15
invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v16
invoke-virtual/range {v15 .. v16}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setHideAlbumList(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v15
invoke-virtual {v15}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->commitAllChange()V
:goto_f1
:try_end_f1
.catch Lorg/json/JSONException; {:try_start_d9 .. :try_end_f1} :catch_1b8
const/4 v15, 0x0
move-object/from16 v0, p0
iput-boolean v15, v0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mIsCancelDelPic:Z
goto/16 :goto_5a
:cond_f8
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumListItems:Ljava/util/ArrayList;
invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v13
check-cast v13, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;
aget-boolean v15, v1, v6
if-eqz v15, :cond_10f
const/4 v15, 0x0
aput-boolean v15, v1, v6
invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:goto_10c
add-int/lit8 v6, v6, 0x1
goto :goto_9f
:cond_10f
invoke-virtual {v13}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;->getmAlbumPath()Ljava/lang/String;
move-result-object v15
invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {v13}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;->getmAlbumPath()Ljava/lang/String;
move-result-object v15
invoke-virtual {v7, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_10c
:cond_121
invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;
move-object/from16 v0, p0
iget-boolean v15, v0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mIsCancelDelPic:Z
if-eqz v15, :cond_142
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;->getmAlbumPath()Ljava/lang/String;
move-result-object v15
invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;->getmAlbumPath()Ljava/lang/String;
move-result-object v15
invoke-virtual {v7, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
:goto_13e
add-int/lit8 v6, v6, 0x1
goto/16 :goto_b4
:cond_142
new-instance v9, Landroid/os/Message;
invoke-direct {v9}, Landroid/os/Message;-><init>()V
const/4 v15, 0x1
iput v15, v9, Landroid/os/Message;->what:I
iput v6, v9, Landroid/os/Message;->arg1:I
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mHander:Landroid/os/Handler;
invoke-virtual {v15, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
new-instance v5, Ljava/io/File;
invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v15
check-cast v15, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;
invoke-virtual {v15}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;->getmFirstPicPath()Ljava/lang/String;
move-result-object v15
invoke-direct {v5, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V
if-eqz v5, :cond_194
invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v12
const-string/jumbo v15, "OptionsAlbum"
new-instance v16, Ljava/lang/StringBuilder;
const-string/jumbo v17, "file isDirectory  ="
invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z
move-result v17
invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v16
const-string/jumbo v17, "file.name = "
invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v16
invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v17
invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v16
invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v16
invoke-static/range {v15 .. v16}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v12}, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->deleteDir(Ljava/io/File;)V
:cond_194
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppInstance()Lcom/pinguo/camera360/PgCameraApplication;
move-result-object v15
invoke-virtual {v15}, Lcom/pinguo/camera360/PgCameraApplication;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v15
sget-object v16, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
move-object/from16 v0, p0
invoke-direct {v0, v14}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->updateSelectWhereClause(Ljava/lang/String;)Ljava/lang/String;
move-result-object v17
const/16 v18, 0x1
move/from16 v0, v18
new-array v0, v0, [Ljava/lang/String;
move-object/from16 v18, v0
const/16 v19, 0x0
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;->getmBucketId()Ljava/lang/String;
move-result-object v20
aput-object v20, v18, v19
invoke-virtual/range {v15 .. v18}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
goto :goto_13e
:catch_1b8
move-exception v4
invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V
goto/16 :goto_f1
.end method
.method public onBackClick()V
.registers 1
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->finish()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/activity/OptionsAlbum; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mCheckedCount:I
if-nez v0, :cond_5
:goto_4
const-string v1, " - Lcom/pinguo/camera360/camera/activity/OptionsAlbum; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_5
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
packed-switch v0, :pswitch_data_4a
goto :goto_4
:pswitch_d
invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->reShownHideAlbum()V
const v0, 0x7f08008f
const/4 v1, 0x0
invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mHideAlbumList:Ljava/util/ArrayList;
if-eqz v0, :cond_27
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mHideAlbumList:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-nez v0, :cond_2b
:cond_27
invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->showEmptyHideAlbumUI()V
goto :goto_4
:cond_2b
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->listViewAdapter:Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->notifyDataSetChanged()V
goto :goto_4
:pswitch_31
new-instance v4, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$2;
invoke-direct {v4, p0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$2;-><init>(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)V
new-instance v5, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$3;
invoke-direct {v5, p0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$3;-><init>(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)V
const v1, 0x7f080090
const v2, 0x7f0802c5
const v3, 0x7f0802c6
move-object v0, p0
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
goto :goto_4
nop
:pswitch_data_4a
.packed-switch 0x7f0a053e
:pswitch_d
:pswitch_31
.end packed-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 7
const-string v1, " + Lcom/pinguo/camera360/camera/activity/OptionsAlbum; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v4, 0x7f02018b
const/4 v3, 0x1
invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f03005a
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->setContentView(I)V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->initView()V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->getHideAlbumList()Ljava/util/ArrayList;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mHideAlbumList:Ljava/util/ArrayList;
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mHideAlbumList:Ljava/util/ArrayList;
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mHideAlbumList:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-nez v0, :cond_29
:cond_22
invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->showEmptyHideAlbumUI()V
:goto_25
invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->updateBottomView()V
const-string v1, " - Lcom/pinguo/camera360/camera/activity/OptionsAlbum; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_29
const-string/jumbo v0, "OptionsAlbum"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "mHideAlbumList = "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mHideAlbumList:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->initListener()V
new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V
invoke-virtual {v0, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
move-result-object v0
invoke-virtual {v0, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
move-result-object v0
invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
move-result-object v0
invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
move-result-object v0
sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
move-result-object v0
new-instance v1, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;
const/4 v2, 0x2
invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(I)V
invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
move-result-object v0
invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
new-instance v0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$LoadAlbumSetTask;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$LoadAlbumSetTask;-><init>(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)V
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$LoadAlbumSetTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
goto :goto_25
.end method
.method protected onCreate(Landroid/os/Bundle;Z)V
.registers 5
const-string v1, " + Lcom/pinguo/camera360/camera/activity/OptionsAlbum; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/pinguo/camera360/camera/activity/OptionsAlbum; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/camera/activity/OptionsAlbum; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseActivity;->onPause()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mHander:Landroid/os/Handler;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->commitAllChange()V
const-string v1, " - Lcom/pinguo/camera360/camera/activity/OptionsAlbum; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onRightBtnClick()V
.registers 8
const v5, 0x7f08008c
const/4 v6, 0x0
iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumListItems:Ljava/util/ArrayList;
if-nez v3, :cond_9
:goto_8
return-void
:cond_9
iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->listView:Landroid/widget/ListView;
invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I
move-result v0
const/4 v2, 0x1
iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumTitleView:Lcom/pinguo/camera360/ui/TitleView;
invoke-virtual {v3}, Lcom/pinguo/camera360/ui/TitleView;->getRightBtnText()Ljava/lang/String;
move-result-object v3
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->getResources()Landroid/content/res/Resources;
move-result-object v4
invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_6f
iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumTitleView:Lcom/pinguo/camera360/ui/TitleView;
const v4, 0x7f08008d
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/ui/TitleView;->setRightBtnText(I)V
const/4 v2, 0x1
:goto_2d
const-string/jumbo v3, "OptionsAlbum"
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "isSelectAll = "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v1, 0x0
:goto_44
if-lt v1, v0, :cond_76
invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->updateBottomView()V
const-string/jumbo v3, "OptionsAlbum"
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "listViewAdapter.getCheckList() = "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v5, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->listViewAdapter:Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;
invoke-virtual {v5}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->getCheckList()[Z
move-result-object v5
invoke-static {v5}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->listViewAdapter:Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->notifyDataSetChanged()V
goto :goto_8
:cond_6f
iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mAlbumTitleView:Lcom/pinguo/camera360/ui/TitleView;
invoke-virtual {v3, v5}, Lcom/pinguo/camera360/ui/TitleView;->setRightBtnText(I)V
const/4 v2, 0x0
goto :goto_2d
:cond_76
if-eqz v2, :cond_86
iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->listViewAdapter:Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->getCheckList()[Z
move-result-object v3
const/4 v4, 0x1
aput-boolean v4, v3, v1
iput v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mCheckedCount:I
:goto_83
add-int/lit8 v1, v1, 0x1
goto :goto_44
:cond_86
iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->listViewAdapter:Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$ListViewAdapter;->getCheckList()[Z
move-result-object v3
aput-boolean v6, v3, v1
iput v6, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mCheckedCount:I
goto :goto_83
.end method