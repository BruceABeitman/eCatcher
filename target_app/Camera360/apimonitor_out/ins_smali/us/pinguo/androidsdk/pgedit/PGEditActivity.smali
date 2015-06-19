.class public Lus/pinguo/androidsdk/pgedit/PGEditActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "PGEditActivity.java"
.field private mControllerActionListener:Lus/pinguo/androidsdk/pgedit/PGEditController$PGEditControllerActionListener;
.field private mPGEditController:Lus/pinguo/androidsdk/pgedit/PGEditController;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V
return-void
.end method
.method static synthetic access$0(Lus/pinguo/androidsdk/pgedit/PGEditActivity;)Lus/pinguo/androidsdk/pgedit/PGEditController;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->mPGEditController:Lus/pinguo/androidsdk/pgedit/PGEditController;
return-object v0
.end method
.method public finish()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->mPGEditController:Lus/pinguo/androidsdk/pgedit/PGEditController;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditController;->finish()V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 28
const-string v1, " + Lus/pinguo/androidsdk/pgedit/PGEditActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super/range {p0 .. p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V
invoke-virtual/range {p0 .. p0}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v5
const-string/jumbo v9, "pg_sdk_edit_main"
invoke-static {v5, v9}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getLayout(Landroid/content/Context;Ljava/lang/String;)I
move-result v5
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->setContentView(I)V
invoke-virtual/range {p0 .. p0}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->getIntent()Landroid/content/Intent;
move-result-object v5
const-string/jumbo v9, "entry_type"
const/4 v10, 0x0
invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v15
invoke-virtual/range {p0 .. p0}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v5
const-string/jumbo v9, "pg_sdk_edit_root"
invoke-static {v5, v9}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I
move-result v5
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->findViewById(I)Landroid/view/View;
move-result-object v4
new-instance v6, Landroid/util/DisplayMetrics;
invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V
invoke-virtual/range {p0 .. p0}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v5
invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v5
invoke-virtual {v5, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
invoke-virtual/range {p0 .. p0}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v5
invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v7
const/4 v5, 0x1
if-ne v15, v5, :cond_11c
new-instance v5, Lus/pinguo/androidsdk/pgedit/PGEditActivity$1;
move-object/from16 v0, p0
invoke-direct {v5, v0}, Lus/pinguo/androidsdk/pgedit/PGEditActivity$1;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditActivity;)V
move-object/from16 v0, p0
iput-object v5, v0, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->mControllerActionListener:Lus/pinguo/androidsdk/pgedit/PGEditController$PGEditControllerActionListener;
invoke-virtual/range {p0 .. p0}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->getIntent()Landroid/content/Intent;
move-result-object v5
const-string/jumbo v9, "photo_path"
invoke-virtual {v5, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual/range {p0 .. p0}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->getIntent()Landroid/content/Intent;
move-result-object v5
const-string/jumbo v9, "is_camera360"
const/4 v10, 0x0
invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v17
invoke-virtual/range {p0 .. p0}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->getIntent()Landroid/content/Intent;
move-result-object v5
const-string/jumbo v9, "org_path"
invoke-virtual {v5, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v21
invoke-virtual/range {p0 .. p0}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->getIntent()Landroid/content/Intent;
move-result-object v5
const-string/jumbo v9, "share_path"
invoke-virtual {v5, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v23
invoke-virtual/range {p0 .. p0}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->getIntent()Landroid/content/Intent;
move-result-object v5
const-string/jumbo v9, "is_show_org"
const/4 v10, 0x1
invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v18
invoke-virtual/range {p0 .. p0}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->getIntent()Landroid/content/Intent;
move-result-object v5
const-string/jumbo v9, "index"
const/4 v10, 0x0
invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v16
new-instance v2, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;
invoke-virtual/range {p0 .. p0}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v5
move-object/from16 v0, p0
iget-object v8, v0, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->mControllerActionListener:Lus/pinguo/androidsdk/pgedit/PGEditController$PGEditControllerActionListener;
invoke-direct/range {v2 .. v8}, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;-><init>(Ljava/lang/String;Landroid/view/View;Landroid/content/Context;Landroid/util/DisplayMetrics;Landroid/support/v4/app/FragmentTransaction;Lus/pinguo/androidsdk/pgedit/PGEditController$PGEditControllerActionListener;)V
move-object/from16 v0, v21
invoke-virtual {v2, v0}, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->setOrgPath(Ljava/lang/String;)V
move/from16 v0, v17
invoke-virtual {v2, v0}, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->setIsCamera360(Z)V
move-object/from16 v0, v23
invoke-virtual {v2, v0}, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->setSharePath(Ljava/lang/String;)V
move/from16 v0, v18
invoke-virtual {v2, v0}, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->setIsShowOrg(Z)V
move/from16 v0, v16
invoke-virtual {v2, v0}, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->setIndex(I)V
move-object/from16 v0, p0
iput-object v2, v0, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->mPGEditController:Lus/pinguo/androidsdk/pgedit/PGEditController;
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
move-result-object v5
const-string/jumbo v9, "key_max_texture_size"
const/4 v10, -0x2
invoke-virtual {v5, v9, v10}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getInt(Ljava/lang/String;I)I
move-result v24
if-eqz v17, :cond_114
new-instance v20, Landroid/graphics/BitmapFactory$Options;
invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v5, 0x1
move-object/from16 v0, v20
iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
move-object/from16 v0, v20
invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-object/from16 v0, v20
iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
move-object/from16 v0, v20
iget v9, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I
invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I
move-result v19
move/from16 v0, v19
move/from16 v1, v24
if-le v0, v1, :cond_114
invoke-virtual/range {p0 .. p0}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v5
invoke-virtual/range {p0 .. p0}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v9
const-string/jumbo v10, "pg_sdk_edit_effect_scale_size"
invoke-static {v9, v10}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getString(Landroid/content/Context;Ljava/lang/String;)I
move-result v9
const/4 v10, 0x1
invoke-static {v5, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v25
const/16 v5, 0x11
const/4 v9, 0x0
const/4 v10, 0x0
move-object/from16 v0, v25
invoke-virtual {v0, v5, v9, v10}, Landroid/widget/Toast;->setGravity(III)V
invoke-virtual/range {v25 .. v25}, Landroid/widget/Toast;->show()V
:cond_114
:goto_114
move-object/from16 v0, p0
iget-object v5, v0, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->mPGEditController:Lus/pinguo/androidsdk/pgedit/PGEditController;
invoke-virtual {v5}, Lus/pinguo/androidsdk/pgedit/PGEditController;->onCreate()V
const-string v1, " - Lus/pinguo/androidsdk/pgedit/PGEditActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_11c
invoke-virtual/range {p0 .. p0}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->getIntent()Landroid/content/Intent;
move-result-object v5
const-string/jumbo v9, "input"
invoke-virtual {v5, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual/range {p0 .. p0}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->getIntent()Landroid/content/Intent;
move-result-object v5
const-string/jumbo v9, "output"
invoke-virtual {v5, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v22
if-eqz v3, :cond_140
if-nez v22, :cond_140
const-string/jumbo v5, ".jpg"
const-string/jumbo v9, "_edit.jpg"
invoke-virtual {v3, v5, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v22
:cond_140
new-instance v8, Lus/pinguo/androidsdk/pgedit/PGEditController;
invoke-virtual/range {p0 .. p0}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v11
new-instance v14, Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;
move-object/from16 v0, p0
invoke-direct {v14, v0}, Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditActivity;)V
move-object v9, v3
move-object v10, v4
move-object v12, v6
move-object v13, v7
invoke-direct/range {v8 .. v14}, Lus/pinguo/androidsdk/pgedit/PGEditController;-><init>(Ljava/lang/String;Landroid/view/View;Landroid/content/Context;Landroid/util/DisplayMetrics;Landroid/support/v4/app/FragmentTransaction;Lus/pinguo/androidsdk/pgedit/PGEditController$PGEditControllerActionListener;)V
move-object/from16 v0, v22
invoke-virtual {v8, v0}, Lus/pinguo/androidsdk/pgedit/PGEditController;->setSavePhotoPath(Ljava/lang/String;)V
move-object/from16 v0, p0
iput-object v8, v0, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->mPGEditController:Lus/pinguo/androidsdk/pgedit/PGEditController;
goto :goto_114
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lus/pinguo/androidsdk/pgedit/PGEditActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->mPGEditController:Lus/pinguo/androidsdk/pgedit/PGEditController;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditController;->onDestroy()V
const-string v1, " - Lus/pinguo/androidsdk/pgedit/PGEditActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 4
const/4 v0, 0x4
if-ne p1, v0, :cond_a
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->mPGEditController:Lus/pinguo/androidsdk/pgedit/PGEditController;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditController;->keyBack()V
const/4 v0, 0x1
:goto_9
return v0
:cond_a
invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
goto :goto_9
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lus/pinguo/androidsdk/pgedit/PGEditActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->mPGEditController:Lus/pinguo/androidsdk/pgedit/PGEditController;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditController;->onPause()V
const-string v1, " - Lus/pinguo/androidsdk/pgedit/PGEditActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lus/pinguo/androidsdk/pgedit/PGEditActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->mPGEditController:Lus/pinguo/androidsdk/pgedit/PGEditController;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditController;->onResume()V
const-string v1, " - Lus/pinguo/androidsdk/pgedit/PGEditActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method