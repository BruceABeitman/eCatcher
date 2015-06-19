.class public Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;
.super Landroid/app/Dialog;
.source "PushUpdateDialog.java"
.implements Landroid/view/View$OnClickListener;
.field private static final TAG:Ljava/lang/String;
.field private mActivity:Landroid/app/Activity;
.field private mDetailString:Ljava/lang/String;
.field private mItemUpdateCancel:Landroid/widget/TextView;
.field private mItemUpdateLater:Landroid/widget/TextView;
.field private mItemUpdateNow:Landroid/widget/TextView;
.field private mLink:Ljava/lang/String;
.field private mPreference:Lcom/pinguo/camera360/push/utils/PushPreference;
.field private mVersionString:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/app/Activity;)V
.registers 3
const v0, 0x7f090042
invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mActivity:Landroid/app/Activity;
const v0, 0x7f0300af
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->setContentView(I)V
iput-object p1, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mActivity:Landroid/app/Activity;
invoke-direct {p0}, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->initData()V
invoke-direct {p0}, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->initUI()V
invoke-direct {p0}, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->initListener()V
return-void
.end method
.method private initData()V
.registers 4
const/4 v2, 0x0
sget-object v0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->TAG:Ljava/lang/String;
const-string/jumbo v1, "initData"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/pinguo/camera360/push/utils/PushPreference;
iget-object v1, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mActivity:Landroid/app/Activity;
invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/pinguo/camera360/push/utils/PushPreference;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mPreference:Lcom/pinguo/camera360/push/utils/PushPreference;
iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mPreference:Lcom/pinguo/camera360/push/utils/PushPreference;
const-string/jumbo v1, "dialog_title"
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/push/utils/PushPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mVersionString:Ljava/lang/String;
iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mPreference:Lcom/pinguo/camera360/push/utils/PushPreference;
const-string/jumbo v1, "btn_link_2"
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/push/utils/PushPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mLink:Ljava/lang/String;
iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mPreference:Lcom/pinguo/camera360/push/utils/PushPreference;
const-string/jumbo v1, "dialog_msg"
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/push/utils/PushPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mDetailString:Ljava/lang/String;
return-void
.end method
.method private initListener()V
.registers 3
sget-object v0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->TAG:Ljava/lang/String;
const-string/jumbo v1, "initListener"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mItemUpdateNow:Landroid/widget/TextView;
invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mItemUpdateLater:Landroid/widget/TextView;
invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mItemUpdateCancel:Landroid/widget/TextView;
invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method private initUI()V
.registers 5
sget-object v2, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->TAG:Ljava/lang/String;
const-string/jumbo v3, "initUI"
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const v2, 0x7f0a0267
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
const v2, 0x7f0a0268
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const v2, 0x7f0a026b
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
iput-object v2, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mItemUpdateNow:Landroid/widget/TextView;
const v2, 0x7f0a026e
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
iput-object v2, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mItemUpdateLater:Landroid/widget/TextView;
const v2, 0x7f0a026f
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
iput-object v2, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mItemUpdateCancel:Landroid/widget/TextView;
iget-object v2, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mVersionString:Ljava/lang/String;
if-eqz v2, :cond_4d
iget-object v2, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mDetailString:Ljava/lang/String;
if-eqz v2, :cond_4d
iget-object v2, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mVersionString:Ljava/lang/String;
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v2, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mDetailString:Ljava/lang/String;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_4d
return-void
.end method
.method private startUpdateOldMethod(Ljava/lang/String;)V
.registers 6
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mActivity:Landroid/app/Activity;
const-class v2, Lcom/pinguo/camera360/push/business/update/UpdateService;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string/jumbo v1, "url"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "download_title"
iget-object v2, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mActivity:Landroid/app/Activity;
const v3, 0x7f0802f6
invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mActivity:Landroid/app/Activity;
invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
return-void
.end method
.method public cancel()V
.registers 5
invoke-super {p0}, Landroid/app/Dialog;->cancel()V
iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mPreference:Lcom/pinguo/camera360/push/utils/PushPreference;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mPreference:Lcom/pinguo/camera360/push/utils/PushPreference;
const-string/jumbo v1, "dialog_alarm_last"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-virtual {v0, v1, v2, v3}, Lcom/pinguo/camera360/push/utils/PushPreference;->putLong(Ljava/lang/String;J)V
iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mPreference:Lcom/pinguo/camera360/push/utils/PushPreference;
invoke-virtual {v0}, Lcom/pinguo/camera360/push/utils/PushPreference;->commit()V
:cond_18
return-void
.end method
.method public dismiss()V
.registers 2
invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
const/4 v0, 0x4
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushUpdateGallery(I)V
return-void
.end method
.method public hide()V
.registers 1
invoke-super {p0}, Landroid/app/Dialog;->hide()V
return-void
.end method
.method public isNeedShowDialog()V
.registers 19
new-instance v12, Lcom/pinguo/camera360/push/utils/PushPreference;
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mActivity:Landroid/app/Activity;
invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
move-result-object v13
invoke-direct {v12, v13}, Lcom/pinguo/camera360/push/utils/PushPreference;-><init>(Landroid/content/Context;)V
move-object/from16 v0, p0
iput-object v12, v0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mPreference:Lcom/pinguo/camera360/push/utils/PushPreference;
invoke-static {}, Lcom/pinguo/lib/util/Util;->getVersionCode()I
move-result v3
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mPreference:Lcom/pinguo/camera360/push/utils/PushPreference;
const-string/jumbo v13, "dialog_version_code"
const/16 v14, 0x1f5
invoke-virtual {v12, v13, v14}, Lcom/pinguo/camera360/push/utils/PushPreference;->getInt(Ljava/lang/String;I)I
move-result v9
sget-object v12, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->TAG:Ljava/lang/String;
new-instance v13, Ljava/lang/StringBuilder;
const-string/jumbo v14, "---------------->currentVersionCode: "
invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-static {v12, v13}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
sget-object v12, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->TAG:Ljava/lang/String;
new-instance v13, Ljava/lang/StringBuilder;
const-string/jumbo v14, "---------------->newVersionCode: "
invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-static {v12, v13}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
if-lt v3, v9, :cond_4f
:goto_4e
:cond_4e
return-void
:cond_4f
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mPreference:Lcom/pinguo/camera360/push/utils/PushPreference;
const-string/jumbo v13, "pref_push_update_show_back"
const/4 v14, 0x0
invoke-virtual {v12, v13, v14}, Lcom/pinguo/camera360/push/utils/PushPreference;->getInt(Ljava/lang/String;I)I
move-result v7
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mPreference:Lcom/pinguo/camera360/push/utils/PushPreference;
const-string/jumbo v13, "pref_push_update_version"
const-string/jumbo v14, ""
invoke-virtual {v12, v13, v14}, Lcom/pinguo/camera360/push/utils/PushPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
sget-object v12, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->TAG:Ljava/lang/String;
new-instance v13, Ljava/lang/StringBuilder;
const-string/jumbo v14, "currentVersion: "
invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mVersionString:Ljava/lang/String;
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-static {v12, v13}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
sget-object v12, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->TAG:Ljava/lang/String;
new-instance v13, Ljava/lang/StringBuilder;
const-string/jumbo v14, "lastVersion: "
invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-static {v12, v13}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mVersionString:Ljava/lang/String;
if-eqz v12, :cond_a8
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mVersionString:Ljava/lang/String;
invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_a8
const/4 v7, 0x0
:cond_a8
sget-object v12, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->TAG:Ljava/lang/String;
new-instance v13, Ljava/lang/StringBuilder;
const-string/jumbo v14, "needshow: "
invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-static {v12, v13}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
if-nez v7, :cond_df
const-string/jumbo v12, "GalleryActivity"
const-string/jumbo v13, "Not show!"
invoke-static {v12, v13}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
sget-object v12, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->TAG:Ljava/lang/String;
new-instance v13, Ljava/lang/StringBuilder;
const-string/jumbo v14, "need show: "
invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-static {v12, v13}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_4e
:cond_df
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mPreference:Lcom/pinguo/camera360/push/utils/PushPreference;
const-string/jumbo v13, "dialog_alarm_wifi"
const/4 v14, 0x3
invoke-virtual {v12, v13, v14}, Lcom/pinguo/camera360/push/utils/PushPreference;->getInt(Ljava/lang/String;I)I
move-result v11
sget-object v12, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->TAG:Ljava/lang/String;
new-instance v13, Ljava/lang/StringBuilder;
const-string/jumbo v14, "timewifi:"
invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-static {v12, v13}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mPreference:Lcom/pinguo/camera360/push/utils/PushPreference;
const-string/jumbo v13, "dialog_alarm_other"
const/4 v14, 0x7
invoke-virtual {v12, v13, v14}, Lcom/pinguo/camera360/push/utils/PushPreference;->getInt(Ljava/lang/String;I)I
move-result v10
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mPreference:Lcom/pinguo/camera360/push/utils/PushPreference;
const-string/jumbo v13, "dialog_alarm_last"
const-wide/16 v14, 0x0
invoke-virtual {v12, v13, v14, v15}, Lcom/pinguo/camera360/push/utils/PushPreference;->getLong(Ljava/lang/String;J)J
move-result-wide v4
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mActivity:Landroid/app/Activity;
if-nez v12, :cond_12f
invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v12
const-string/jumbo v13, "activity is null!"
invoke-static {v12, v13}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_4e
:cond_12f
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
sget-object v12, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->TAG:Ljava/lang/String;
new-instance v13, Ljava/lang/StringBuilder;
const-string/jumbo v14, "time1: "
invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sub-long v14, v1, v4
const-wide/32 v16, 0x5265c00
div-long v14, v14, v16
invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v13
const-string/jumbo v14, " time2: "
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-static {v12, v13}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mActivity:Landroid/app/Activity;
invoke-static {v12}, Lcom/pinguo/lib/network/NetworkUtils;->hasInternet(Landroid/content/Context;)Z
move-result v12
if-eqz v12, :cond_4e
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mActivity:Landroid/app/Activity;
invoke-static {v12}, Lcom/pinguo/share/util/ShareModuleUtil;->getNetType(Landroid/content/Context;)Ljava/lang/String;
move-result-object v8
invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v12
new-instance v13, Ljava/lang/StringBuilder;
const-string/jumbo v14, "netType: "
invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-static {v12, v13}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v12, "WIFI"
invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_1b8
sub-long v12, v1, v4
const-wide/32 v14, 0x5265c00
div-long/2addr v12, v14
int-to-long v14, v11
cmp-long v12, v12, v14
if-ltz v12, :cond_4e
invoke-static {}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Other;->otherUpdateShow()V
const/4 v12, 0x0
invoke-static {v12}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushUpdateGallery(I)V
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->show()V
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mPreference:Lcom/pinguo/camera360/push/utils/PushPreference;
const-string/jumbo v13, "dialog_alarm_last"
invoke-virtual {v12, v13, v1, v2}, Lcom/pinguo/camera360/push/utils/PushPreference;->putLong(Ljava/lang/String;J)V
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mPreference:Lcom/pinguo/camera360/push/utils/PushPreference;
invoke-virtual {v12}, Lcom/pinguo/camera360/push/utils/PushPreference;->commit()V
goto/16 :goto_4e
:cond_1b8
const-string/jumbo v12, "unknown"
invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-nez v12, :cond_4e
sub-long v12, v1, v4
const-wide/32 v14, 0x5265c00
div-long/2addr v12, v14
int-to-long v14, v10
cmp-long v12, v12, v14
if-ltz v12, :cond_4e
invoke-static {}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Other;->otherUpdateShow()V
const/4 v12, 0x0
invoke-static {v12}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushUpdateGallery(I)V
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->show()V
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mPreference:Lcom/pinguo/camera360/push/utils/PushPreference;
const-string/jumbo v13, "dialog_alarm_last"
invoke-virtual {v12, v13, v1, v2}, Lcom/pinguo/camera360/push/utils/PushPreference;->putLong(Ljava/lang/String;J)V
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mPreference:Lcom/pinguo/camera360/push/utils/PushPreference;
invoke-virtual {v12}, Lcom/pinguo/camera360/push/utils/PushPreference;->commit()V
goto/16 :goto_4e
.end method
.method public onClick(Landroid/view/View;)V
.registers 12
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/updateOnline/PushUpdateDialog; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
if-nez p1, :cond_f
const-class v6, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;
invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v6
const-string/jumbo v7, "the view is null"
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_e
const-string v1, " - Lcom/pinguo/camera360/updateOnline/PushUpdateDialog; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_f
iget-object v6, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mPreference:Lcom/pinguo/camera360/push/utils/PushPreference;
if-nez v6, :cond_1c
sget-object v6, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->TAG:Ljava/lang/String;
const-string/jumbo v7, "mPreference is null"
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
:cond_1c
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v6
packed-switch v6, :pswitch_data_11a
:goto_23
:cond_23
:pswitch_23
invoke-virtual {p0}, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->dismiss()V
goto :goto_e
:pswitch_27
iget-object v6, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mPreference:Lcom/pinguo/camera360/push/utils/PushPreference;
const-string/jumbo v7, "dialog_alarm_last"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v8
invoke-virtual {v6, v7, v8, v9}, Lcom/pinguo/camera360/push/utils/PushPreference;->putLong(Ljava/lang/String;J)V
iget-object v6, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mPreference:Lcom/pinguo/camera360/push/utils/PushPreference;
invoke-virtual {v6}, Lcom/pinguo/camera360/push/utils/PushPreference;->commit()V
const v6, 0x7f0a026b
invoke-static {v6}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Other;->otherUpdateClick(I)V
const/4 v6, 0x1
invoke-static {v6}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushUpdateGallery(I)V
iget-object v6, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mLink:Ljava/lang/String;
if-eqz v6, :cond_23
:try_start_46
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v6
invoke-virtual {v6}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPictureSavePath()Ljava/lang/String;
move-result-object v4
const-wide/16 v6, 0x3e8
invoke-static {}, Lcom/pinguo/lib/util/UtilStorage;->getInstance()Lcom/pinguo/lib/util/UtilStorage;
move-result-object v8
invoke-virtual {v8, v4}, Lcom/pinguo/lib/util/UtilStorage;->getAvailableStorage(Ljava/lang/String;)J
move-result-wide v8
cmp-long v6, v6, v8
if-ltz v6, :cond_8e
const-string/jumbo v6, "appDownLoad"
const-string/jumbo v7, "Storage can not used"
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
new-instance v5, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
iget-object v6, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mActivity:Landroid/app/Activity;
iget-object v7, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mActivity:Landroid/app/Activity;
const v8, 0x7f0800e9
invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v7
const/4 v8, 0x0
invoke-direct {v5, v6, v7, v8}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;I)V
const/16 v6, 0x7d0
invoke-virtual {v5, v6}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show(I)V
:try_end_7b
.catch Ljava/lang/Exception; {:try_start_46 .. :try_end_7b} :catch_7c
goto :goto_e
:catch_7c
move-exception v3
invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
sget-object v6, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->TAG:Ljava/lang/String;
const-string/jumbo v7, "The device not support downLoadManger"
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v6, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mLink:Ljava/lang/String;
invoke-direct {p0, v6}, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->startUpdateOldMethod(Ljava/lang/String;)V
goto :goto_23
:try_start_8e
:cond_8e
const-string/jumbo v1, "Camera360_update"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
sget-object v7, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;
invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, ".apk"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v6, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mActivity:Landroid/app/Activity;
const-string/jumbo v7, "download"
invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/app/DownloadManager;
iget-object v6, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mLink:Ljava/lang/String;
invoke-static {v1, v0, v6, v2}, Lcom/pinguo/lib/util/DownloadFileUtils;->doDownLoadApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/DownloadManager;)V
new-instance v5, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
iget-object v6, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mActivity:Landroid/app/Activity;
iget-object v7, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mActivity:Landroid/app/Activity;
const v8, 0x7f0802fe
invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v7
const/4 v8, 0x0
invoke-direct {v5, v6, v7, v8}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;I)V
const/16 v6, 0x7d0
invoke-virtual {v5, v6}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show(I)V
:try_end_db
.catch Ljava/lang/Exception; {:try_start_8e .. :try_end_db} :catch_7c
goto/16 :goto_23
:pswitch_dd
const/4 v6, 0x3
invoke-static {v6}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushUpdateGallery(I)V
const v6, 0x7f0a026e
invoke-static {v6}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Other;->otherUpdateClick(I)V
iget-object v6, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mPreference:Lcom/pinguo/camera360/push/utils/PushPreference;
const-string/jumbo v7, "dialog_alarm_last"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v8
invoke-virtual {v6, v7, v8, v9}, Lcom/pinguo/camera360/push/utils/PushPreference;->putLong(Ljava/lang/String;J)V
iget-object v6, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mPreference:Lcom/pinguo/camera360/push/utils/PushPreference;
invoke-virtual {v6}, Lcom/pinguo/camera360/push/utils/PushPreference;->commit()V
goto/16 :goto_23
:pswitch_fa
iget-object v6, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mVersionString:Ljava/lang/String;
if-eqz v6, :cond_23
const/4 v6, 0x2
invoke-static {v6}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushUpdateGallery(I)V
const v6, 0x7f0a026f
invoke-static {v6}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Other;->otherUpdateClick(I)V
iget-object v6, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mPreference:Lcom/pinguo/camera360/push/utils/PushPreference;
const-string/jumbo v7, "pref_push_update_version"
iget-object v8, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mVersionString:Ljava/lang/String;
invoke-virtual {v6, v7, v8}, Lcom/pinguo/camera360/push/utils/PushPreference;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v6, p0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->mPreference:Lcom/pinguo/camera360/push/utils/PushPreference;
invoke-virtual {v6}, Lcom/pinguo/camera360/push/utils/PushPreference;->commit()V
goto/16 :goto_23
nop
:pswitch_data_11a
.packed-switch 0x7f0a026b
:pswitch_27
:pswitch_23
:pswitch_23
:pswitch_dd
:pswitch_fa
.end packed-switch
.end method