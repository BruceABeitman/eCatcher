.class public Lcom/pinguo/album/activities/PGAlbumActivity;
.super Lcom/pinguo/album/activities/BaseActivity;
.source "PGAlbumActivity.java"
.field public static final KEY_DISMISS_KEYGUARD:Ljava/lang/String; = "dismiss-keyguard"
.field private static final TAG:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/album/activities/PGAlbumActivity;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/album/activities/PGAlbumActivity;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/pinguo/album/activities/BaseActivity;-><init>()V
return-void
.end method
.method private initializeByIntent()V
.registers 4
invoke-virtual {p0}, Lcom/pinguo/album/activities/PGAlbumActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string/jumbo v2, "android.intent.action.GET_CONTENT"
invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_15
invoke-direct {p0, v1}, Lcom/pinguo/album/activities/PGAlbumActivity;->startGetContentAction(Landroid/content/Intent;)V
:goto_14
return-void
:cond_15
const-string/jumbo v2, "android.intent.action.PICK"
invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_22
invoke-direct {p0, v1}, Lcom/pinguo/album/activities/PGAlbumActivity;->startPickAction(Landroid/content/Intent;)V
goto :goto_14
:cond_22
const-string/jumbo v2, "android.intent.action.VIEW"
invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_2f
invoke-direct {p0, v1}, Lcom/pinguo/album/activities/PGAlbumActivity;->startViewAction(Landroid/content/Intent;)V
goto :goto_14
:cond_2f
invoke-virtual {p0}, Lcom/pinguo/album/activities/PGAlbumActivity;->startDefaultAction()V
goto :goto_14
.end method
.method private startGetContentAction(Landroid/content/Intent;)V
.registers 8
invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v3
if-eqz v3, :cond_63
new-instance v0, Landroid/os/Bundle;
invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v3
invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
:goto_f
const-string/jumbo v3, "get-content"
const/4 v4, 0x1
invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
invoke-static {p0, p1}, Lcom/pinguo/album/utils/PGAlbumUtils;->determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I
move-result v2
const-string/jumbo v3, "type-bits"
invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
new-instance v1, Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-direct {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;-><init>()V
const-string/jumbo v3, "album_id"
sget v4, Lcom/pinguo/album/data/MediaSetUtils;->CAMERA_BUCKET_ID:I
int-to-long v4, v4
invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string/jumbo v3, "media-path"
invoke-virtual {p0}, Lcom/pinguo/album/activities/PGAlbumActivity;->getDataManager()Lcom/pinguo/album/data/AlbumDataManager;
move-result-object v4
const/16 v5, 0x50
invoke-virtual {v4, v5}, Lcom/pinguo/album/data/AlbumDataManager;->getTopSetPath(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v3, "album_title"
const v4, 0x7f08002d
invoke-virtual {p0, v4}, Lcom/pinguo/album/activities/PGAlbumActivity;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/pinguo/album/activities/PGAlbumActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v3
invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v3
const v4, 0x7f0a0051
sget-object v5, Lcom/pinguo/album/fragment/PGBaseFragment;->FRAGMENT_TAG_THUMBNAIL:Ljava/lang/String;
invoke-virtual {v3, v4, v1, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v3
invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I
return-void
:cond_63
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
goto :goto_f
.end method
.method private startPickAction(Landroid/content/Intent;)V
.registers 9
invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v4
if-eqz v4, :cond_9a
new-instance v0, Landroid/os/Bundle;
invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v4
invoke-direct {v0, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
:goto_f
sget-object v4, Lcom/pinguo/album/activities/PGAlbumActivity;->TAG:Ljava/lang/String;
const-string/jumbo v5, "action PICK is not supported"
invoke-static {v4, v5}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/pinguo/album/utils/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string/jumbo v4, "vnd.android.cursor.dir/"
invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_46
const-string/jumbo v4, "/image"
invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_37
const-string/jumbo v4, "image/*"
invoke-virtual {p1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
:cond_37
const-string/jumbo v4, "/video"
invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_46
const-string/jumbo v4, "video/*"
invoke-virtual {p1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
:cond_46
const-string/jumbo v4, "get-content"
const/4 v5, 0x1
invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
invoke-static {p0, p1}, Lcom/pinguo/album/utils/PGAlbumUtils;->determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I
move-result v3
const-string/jumbo v4, "type-bits"
invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
new-instance v1, Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-direct {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;-><init>()V
const-string/jumbo v4, "album_id"
sget v5, Lcom/pinguo/album/data/MediaSetUtils;->CAMERA_BUCKET_ID:I
int-to-long v5, v5
invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string/jumbo v4, "media-path"
invoke-virtual {p0}, Lcom/pinguo/album/activities/PGAlbumActivity;->getDataManager()Lcom/pinguo/album/data/AlbumDataManager;
move-result-object v5
const/16 v6, 0x50
invoke-virtual {v5, v6}, Lcom/pinguo/album/data/AlbumDataManager;->getTopSetPath(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v4, "album_title"
const v5, 0x7f08002d
invoke-virtual {p0, v5}, Lcom/pinguo/album/activities/PGAlbumActivity;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/pinguo/album/activities/PGAlbumActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v4
invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v4
const v5, 0x7f0a0051
sget-object v6, Lcom/pinguo/album/fragment/PGBaseFragment;->FRAGMENT_TAG_THUMBNAIL:Ljava/lang/String;
invoke-virtual {v4, v5, v1, v6}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v4
invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I
return-void
:cond_9a
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
goto/16 :goto_f
.end method
.method private startViewAction(Landroid/content/Intent;)V
.registers 2
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/pinguo/album/activities/PGAlbumActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/album/activities/PGAlbumActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
const-string/jumbo v2, "dismiss-keyguard"
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v1
if-eqz v1, :cond_17
invoke-virtual {p0}, Lcom/pinguo/album/activities/PGAlbumActivity;->getWindow()Landroid/view/Window;
move-result-object v1
const/high16 v2, 0x40
invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V
:cond_17
const/4 v1, 0x1
invoke-virtual {p0, v1}, Lcom/pinguo/album/activities/PGAlbumActivity;->requestWindowFeature(I)Z
const v1, 0x7f030006
invoke-virtual {p0, v1}, Lcom/pinguo/album/activities/PGAlbumActivity;->setContentView(I)V
invoke-super {p0, p1}, Lcom/pinguo/album/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V
invoke-static {p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->isLogin(Landroid/content/Context;)Z
move-result v1
if-nez v1, :cond_3b
invoke-virtual {p0}, Lcom/pinguo/album/activities/PGAlbumActivity;->finish()V
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-class v1, Lcom/pinguo/album/activities/PGAlbumGuideActivity;
invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
invoke-virtual {p0, v0}, Lcom/pinguo/album/activities/PGAlbumActivity;->startActivity(Landroid/content/Intent;)V
:goto_3a
const-string v1, " - Lcom/pinguo/album/activities/PGAlbumActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_3b
invoke-direct {p0}, Lcom/pinguo/album/activities/PGAlbumActivity;->initializeByIntent()V
goto :goto_3a
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/album/activities/PGAlbumActivity; onCreateOptionsMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/pinguo/album/activities/PGAlbumActivity; onCreateOptionsMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method
.method public startDefaultAction()V
.registers 6
new-instance v1, Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-direct {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;-><init>()V
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string/jumbo v2, "album_id"
sget v3, Lcom/pinguo/album/data/MediaSetUtils;->CLOUD_BUCKET_ID:I
int-to-long v3, v3
invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string/jumbo v2, "media-path"
invoke-virtual {p0}, Lcom/pinguo/album/activities/PGAlbumActivity;->getDataManager()Lcom/pinguo/album/data/AlbumDataManager;
move-result-object v3
const/16 v4, 0x90
invoke-virtual {v3, v4}, Lcom/pinguo/album/data/AlbumDataManager;->getTopSetPath(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v2, "album_title"
const v3, 0x7f08002d
invoke-virtual {p0, v3}, Lcom/pinguo/album/activities/PGAlbumActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/pinguo/album/activities/PGAlbumActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v2
const v3, 0x7f0a0051
sget-object v4, Lcom/pinguo/album/fragment/PGBaseFragment;->FRAGMENT_TAG_THUMBNAIL:Ljava/lang/String;
invoke-virtual {v2, v3, v1, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I
return-void
.end method