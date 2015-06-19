.class public Lcom/facebook/katana/ProfileTabHostActivity;
.super Lcom/facebook/katana/FacebookTabActivity;
.source "ProfileTabHostActivity.java"
.implements Lcom/facebook/katana/MyTabHost$OnTabChangeListener;
.field public static final EXTRA_IMAGE_URL:Ljava/lang/String; = "extra_image_url"
.field public static final EXTRA_LAUNCHED_INTERNALLY:Ljava/lang/String; = "launched_internally"
.field public static final EXTRA_USER_DISPLAY_NAME:Ljava/lang/String; = "extra_user_display_name"
.field public static final EXTRA_USER_FIRST_NAME:Ljava/lang/String; = "extra_user_first_name"
.field public static final EXTRA_USER_ID:Ljava/lang/String; = "extra_user_id"
.field public static final EXTRA_USER_LAST_NAME:Ljava/lang/String; = "extra_user_last_name"
.field public static final EXTRA_USER_TYPE:Ljava/lang/String; = "extra_user_type"
.field private static final HOME_MENU_ITEM:I = 0x1
.field public static final TAG_INFO:Ljava/lang/String; = "info"
.field public static final TAG_PHOTOS:Ljava/lang/String; = "photos"
.field public static final TAG_WALL:Ljava/lang/String; = "wall"
.field private mAppSession:Lcom/facebook/katana/binding/AppSession;
.field private mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
.field private mCurrentSource:Lcom/facebook/katana/TabProgressSource;
.field private mLaunchedInternally:Z
.field private mMyUserId:J
.field private mMyUsername:Ljava/lang/String;
.field private mProfileUser:Lcom/facebook/katana/service/api/FacebookUser;
.field private mProfileUserId:J
.field private mProgressListener:Lcom/facebook/katana/TabProgressListener;
.field private final mTabSpecViews:Ljava/util/List;
.field private final mTabSpecs:Ljava/util/List;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/facebook/katana/FacebookTabActivity;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mTabSpecs:Ljava/util/List;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mTabSpecViews:Ljava/util/List;
return-void
.end method
.method static synthetic access$10(Lcom/facebook/katana/ProfileTabHostActivity;Lcom/facebook/katana/service/api/FacebookUser;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUser:Lcom/facebook/katana/service/api/FacebookUser;
return-void
.end method
.method static synthetic access$11(Lcom/facebook/katana/ProfileTabHostActivity;)V
.registers 1
invoke-direct {p0}, Lcom/facebook/katana/ProfileTabHostActivity;->updateFatTitleBar()V
return-void
.end method
.method static synthetic access$12(Lcom/facebook/katana/ProfileTabHostActivity;)J
.registers 3
iget-wide v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUserId:J
return-wide v0
.end method
.method static synthetic access$13(Lcom/facebook/katana/ProfileTabHostActivity;)Lcom/facebook/katana/binding/AppSession;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
return-object v0
.end method
.method static synthetic access$14(Lcom/facebook/katana/ProfileTabHostActivity;)Lcom/facebook/katana/service/api/FacebookUser;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUser:Lcom/facebook/katana/service/api/FacebookUser;
return-object v0
.end method
.method public static intentForProfile(Landroid/content/Context;J)Landroid/content/Intent;
.registers 6
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/facebook/katana/ProfileTabHostActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "extra_user_id"
invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
const-string v1, "launched_internally"
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
return-object v0
.end method
.method private setupFatTitleBar()V
.registers 3
const v0, 0x7f0b0026
invoke-virtual {p0, v0}, Lcom/facebook/katana/ProfileTabHostActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
const v0, 0x7f0b0024
invoke-virtual {p0, v0}, Lcom/facebook/katana/ProfileTabHostActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
.end method
.method private static tabTagForUriComponent(Ljava/lang/String;)Ljava/lang/String;
.registers 3
const-string v1, "info"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_b
const-string v0, "info"
:goto_a
return-object v0
:cond_b
const-string v1, "photos"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_16
const-string v0, "photos"
goto :goto_a
:cond_16
const-string v0, "wall"
goto :goto_a
.end method
.method private updateFatTitleBar()V
.registers 10
const v7, 0x7f0200b3
const v3, 0x7f0b0025
invoke-virtual {p0, v3}, Lcom/facebook/katana/ProfileTabHostActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iget-object v3, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUser:Lcom/facebook/katana/service/api/FacebookUser;
if-eqz v3, :cond_53
iget-object v3, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUser:Lcom/facebook/katana/service/api/FacebookUser;
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookUser;->getDisplayName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_19
const v3, 0x7f0b0024
invoke-virtual {p0, v3}, Lcom/facebook/katana/ProfileTabHostActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iget-object v3, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUser:Lcom/facebook/katana/service/api/FacebookUser;
if-eqz v3, :cond_64
iget-object v3, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v3}, Lcom/facebook/katana/binding/AppSession;->getUserImagesCache()Lcom/facebook/katana/binding/UserImagesCache;
move-result-object v3
iget-wide v4, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUserId:J
iget-object v6, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUser:Lcom/facebook/katana/service/api/FacebookUser;
invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookUser;->getImageUrl()Ljava/lang/String;
move-result-object v6
invoke-virtual {v3, p0, v4, v5, v6}, Lcom/facebook/katana/binding/UserImagesCache;->get(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v2
if-eqz v2, :cond_58
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:goto_3d
invoke-direct {p0}, Lcom/facebook/katana/ProfileTabHostActivity;->useQuickContacts()Z
move-result v3
if-eqz v3, :cond_52
iget-object v3, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mMyUsername:Ljava/lang/String;
iget-wide v4, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUserId:J
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/String;
const/4 v7, 0x0
const-string v8, "vnd.android.cursor.item/vnd.facebook.profile"
aput-object v8, v6, v7
invoke-static {v0, v3, v4, v5, v6}, Lcom/facebook/katana/platform/PlatformFastTrack;->prepareBadge(Landroid/view/View;Ljava/lang/String;J[Ljava/lang/String;)V
:cond_52
return-void
:cond_53
const/4 v3, 0x0
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_19
:cond_58
invoke-virtual {p0}, Lcom/facebook/katana/ProfileTabHostActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_3d
:cond_64
invoke-virtual {p0}, Lcom/facebook/katana/ProfileTabHostActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_3d
.end method
.method private useQuickContacts()Z
.registers 5
iget-wide v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUserId:J
iget-wide v2, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mMyUserId:J
cmp-long v0, v0, v2
if-eqz v0, :cond_18
invoke-static {p0}, Lcom/facebook/katana/util/PlatformUtils;->platformStorageSupported(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mMyUsername:Ljava/lang/String;
invoke-static {p0, v0}, Lcom/facebook/katana/platform/FacebookAuthenticationService;->isSyncEnabled(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_18
const/4 v0, 0x1
:goto_17
return v0
:cond_18
const/4 v0, 0x0
goto :goto_17
.end method
.method public bridge synthetic dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.registers 3
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookTabActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
move-result v0
return v0
.end method
.method public bridge synthetic facebookOnBackPressed()Z
.registers 2
invoke-super {p0}, Lcom/facebook/katana/FacebookTabActivity;->facebookOnBackPressed()Z
move-result v0
return v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 35
const-string v1, " + Lcom/facebook/katana/ProfileTabHostActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super/range {p0 .. p1}, Lcom/facebook/katana/FacebookTabActivity;->onCreate(Landroid/os/Bundle;)V
invoke-static/range {p0 .. p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v6
move-object v0, v6
move-object/from16 v1, p0
iput-object v0, v1, Lcom/facebook/katana/ProfileTabHostActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/ProfileTabHostActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
move-object v6, v0
if-nez v6, :cond_1e
invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/ProfileTabHostActivity;->getIntent()Landroid/content/Intent;
move-result-object v6
move-object/from16 v0, p0
move-object v1, v6
invoke-static {v0, v1}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;Landroid/content/Intent;)V
:goto_1d
const-string v1, " - Lcom/facebook/katana/ProfileTabHostActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1e
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/ProfileTabHostActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
move-object v6, v0
invoke-virtual {v6}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;
move-result-object v17
invoke-virtual/range {v17 .. v17}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J
move-result-wide v6
move-wide v0, v6
move-object/from16 v2, p0
iput-wide v0, v2, Lcom/facebook/katana/ProfileTabHostActivity;->mMyUserId:J
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/facebook/katana/ProfileTabHostActivity;->mMyUserId:J
move-wide v6, v0
move-wide v0, v6
move-object/from16 v2, p0
iput-wide v0, v2, Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUserId:J
invoke-virtual/range {v17 .. v17}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUsername()Ljava/lang/String;
move-result-object v6
move-object v0, v6
move-object/from16 v1, p0
iput-object v0, v1, Lcom/facebook/katana/ProfileTabHostActivity;->mMyUsername:Ljava/lang/String;
const-string v14, "wall"
invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/ProfileTabHostActivity;->getIntent()Landroid/content/Intent;
move-result-object v6
invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;
move-result-object v5
if-eqz v5, :cond_353
invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v25
const-string v6, "content"
move-object/from16 v0, v25
move-object v1, v6
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_317
const-string v6, "com.android.contacts"
invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_a4
invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/ProfileTabHostActivity;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v4
const-string v6, "vnd.android.cursor.item/vnd.facebook.profile"
invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/ProfileTabHostActivity;->getIntent()Landroid/content/Intent;
move-result-object v7
invoke-virtual {v7, v4}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v23
if-eqz v23, :cond_a4
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/String;
const/4 v7, 0x0
const-string v8, "data1"
aput-object v8, v6, v7
const/4 v7, 0x0
const/4 v8, 0x0
const/4 v9, 0x0
invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v15
if-eqz v15, :cond_9f
:try_start_8f
invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z
move-result v6
if-eqz v6, :cond_9f
const/4 v6, 0x0
invoke-interface {v15, v6}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v6
move-wide v0, v6
move-object/from16 v2, p0
iput-wide v0, v2, Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUserId:J
:try_end_9f
.catchall {:try_start_8f .. :try_end_9f} :catchall_310
:cond_9f
if-eqz v15, :cond_a4
invoke-interface {v15}, Landroid/database/Cursor;->close()V
:goto_a4
:cond_a4
invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/ProfileTabHostActivity;->getIntent()Landroid/content/Intent;
move-result-object v20
const/16 v29, 0x0
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUserId:J
move-wide v6, v0
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/facebook/katana/ProfileTabHostActivity;->mMyUserId:J
move-wide v8, v0
cmp-long v6, v6, v8
if-eqz v6, :cond_37c
const-string v6, "extra_user_type"
const/4 v7, -0x1
move-object/from16 v0, v20
move-object v1, v6
move v2, v7
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v18
const/4 v6, -0x1
move/from16 v0, v18
move v1, v6
if-eq v0, v1, :cond_369
move/from16 v29, v18
new-instance v6, Lcom/facebook/katana/service/api/FacebookUser;
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUserId:J
move-wide v7, v0
const-string v9, "extra_user_first_name"
move-object/from16 v0, v20
move-object v1, v9
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
const-string v10, "extra_user_last_name"
move-object/from16 v0, v20
move-object v1, v10
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
const-string v11, "extra_user_display_name"
move-object/from16 v0, v20
move-object v1, v11
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v11
const-string v12, "extra_image_url"
move-object/from16 v0, v20
move-object v1, v12
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
invoke-direct/range {v6 .. v12}, Lcom/facebook/katana/service/api/FacebookUser;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
move-object v0, v6
move-object/from16 v1, p0
iput-object v0, v1, Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUser:Lcom/facebook/katana/service/api/FacebookUser;
:goto_fe
invoke-direct/range {p0 .. p0}, Lcom/facebook/katana/ProfileTabHostActivity;->useQuickContacts()Z
move-result v6
if-eqz v6, :cond_390
const v21, 0x7f030039
:goto_107
move-object/from16 v0, p0
move/from16 v1, v21
invoke-virtual {v0, v1}, Lcom/facebook/katana/ProfileTabHostActivity;->setContentView(I)V
invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/ProfileTabHostActivity;->getTabHost()Landroid/widget/TabHost;
move-result-object v26
check-cast v26, Lcom/facebook/katana/MyTabHost;
const-string v6, "layout_inflater"
move-object/from16 v0, p0
move-object v1, v6
invoke-virtual {v0, v1}, Lcom/facebook/katana/ProfileTabHostActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v22
check-cast v22, Landroid/view/LayoutInflater;
invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/ProfileTabHostActivity;->getResources()Landroid/content/res/Resources;
move-result-object v13
const v6, 0x7f0200ac
invoke-virtual {v13, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v16
invoke-virtual/range {v26 .. v26}, Lcom/facebook/katana/MyTabHost;->getMyTabWidget()Lcom/facebook/katana/MyTabWidget;
move-result-object v6
move-object v0, v6
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Lcom/facebook/katana/MyTabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
new-instance v19, Landroid/content/Intent;
const-class v6, Lcom/facebook/katana/StreamActivity;
move-object/from16 v0, v19
move-object/from16 v1, p0
move-object v2, v6
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v6, "extra_user_id"
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUserId:J
move-wide v7, v0
move-object/from16 v0, v19
move-object v1, v6
move-wide v2, v7
invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
const-string v6, "extra_wall"
const/4 v7, 0x1
move-object/from16 v0, v19
move-object v1, v6
move v2, v7
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v6, "within_tab"
const/4 v7, 0x1
move-object/from16 v0, v19
move-object v1, v6
move v2, v7
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const v6, 0x7f030046
const/4 v7, 0x0
move-object/from16 v0, v22
move v1, v6
move-object v2, v7
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v32
const v6, 0x7f0b00b0
move-object/from16 v0, v32
move v1, v6
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v28
check-cast v28, Landroid/widget/TextView;
const v6, 0x7f0800fe
move-object/from16 v0, v28
move v1, v6
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
const-string v6, "wall"
move-object/from16 v0, v26
move-object v1, v6
move-object/from16 v2, v32
invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/MyTabHost;->myNewTabSpec(Ljava/lang/String;Landroid/view/View;)Lcom/facebook/katana/MyTabHost$TabSpec;
move-result-object v27
move-object/from16 v0, v27
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Lcom/facebook/katana/MyTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/facebook/katana/MyTabHost$TabSpec;
invoke-virtual/range {v26 .. v27}, Lcom/facebook/katana/MyTabHost;->addTab(Lcom/facebook/katana/MyTabHost$TabSpec;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/ProfileTabHostActivity;->mTabSpecs:Ljava/util/List;
move-object v6, v0
move-object v0, v6
move-object/from16 v1, v27
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/ProfileTabHostActivity;->mTabSpecViews:Ljava/util/List;
move-object v6, v0
move-object v0, v6
move-object/from16 v1, v32
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
if-nez v29, :cond_22a
new-instance v19, Landroid/content/Intent;
const-class v6, Lcom/facebook/katana/UserInfoActivity;
move-object/from16 v0, v19
move-object/from16 v1, p0
move-object v2, v6
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v6, "extra_uid"
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUserId:J
move-wide v7, v0
move-object/from16 v0, v19
move-object v1, v6
move-wide v2, v7
invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
const-string v6, "extra_profile_photo"
const/4 v7, 0x0
move-object/from16 v0, v19
move-object v1, v6
move v2, v7
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v6, "within_tab"
const/4 v7, 0x1
move-object/from16 v0, v19
move-object v1, v6
move v2, v7
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const v6, 0x7f030046
const/4 v7, 0x0
move-object/from16 v0, v22
move v1, v6
move-object v2, v7
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v32
const v6, 0x7f0b00b0
move-object/from16 v0, v32
move v1, v6
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v28
check-cast v28, Landroid/widget/TextView;
const v6, 0x7f0800e1
move-object/from16 v0, v28
move v1, v6
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
const-string v6, "info"
move-object/from16 v0, v26
move-object v1, v6
move-object/from16 v2, v32
invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/MyTabHost;->myNewTabSpec(Ljava/lang/String;Landroid/view/View;)Lcom/facebook/katana/MyTabHost$TabSpec;
move-result-object v27
move-object/from16 v0, v27
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Lcom/facebook/katana/MyTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/facebook/katana/MyTabHost$TabSpec;
invoke-virtual/range {v26 .. v27}, Lcom/facebook/katana/MyTabHost;->addTab(Lcom/facebook/katana/MyTabHost$TabSpec;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/ProfileTabHostActivity;->mTabSpecs:Ljava/util/List;
move-object v6, v0
move-object v0, v6
move-object/from16 v1, v27
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/ProfileTabHostActivity;->mTabSpecViews:Ljava/util/List;
move-object v6, v0
move-object v0, v6
move-object/from16 v1, v32
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_22a
new-instance v19, Landroid/content/Intent;
const-class v6, Lcom/facebook/katana/AlbumsActivity;
move-object/from16 v0, v19
move-object/from16 v1, p0
move-object v2, v6
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v6, "android.intent.action.VIEW"
move-object/from16 v0, v19
move-object v1, v6
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
const-string v6, "within_tab"
const/4 v7, 0x1
move-object/from16 v0, v19
move-object v1, v6
move v2, v7
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
sget-object v6, Lcom/facebook/katana/provider/PhotosProvider;->ALBUMS_OWNER_CONTENT_URI:Landroid/net/Uri;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUserId:J
move-wide v8, v0
invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v30
move-object/from16 v0, v19
move-object/from16 v1, v30
invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
const v6, 0x7f030046
const/4 v7, 0x0
move-object/from16 v0, v22
move v1, v6
move-object v2, v7
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v32
const v6, 0x7f0b00b0
move-object/from16 v0, v32
move v1, v6
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v28
check-cast v28, Landroid/widget/TextView;
const v6, 0x7f0800ea
move-object/from16 v0, v28
move v1, v6
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
const-string v6, "photos"
move-object/from16 v0, v26
move-object v1, v6
move-object/from16 v2, v32
invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/MyTabHost;->myNewTabSpec(Ljava/lang/String;Landroid/view/View;)Lcom/facebook/katana/MyTabHost$TabSpec;
move-result-object v27
move-object/from16 v0, v27
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Lcom/facebook/katana/MyTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/facebook/katana/MyTabHost$TabSpec;
invoke-virtual/range {v26 .. v27}, Lcom/facebook/katana/MyTabHost;->addTab(Lcom/facebook/katana/MyTabHost$TabSpec;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/ProfileTabHostActivity;->mTabSpecs:Ljava/util/List;
move-object v6, v0
move-object v0, v6
move-object/from16 v1, v27
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/ProfileTabHostActivity;->mTabSpecViews:Ljava/util/List;
move-object v6, v0
move-object v0, v6
move-object/from16 v1, v32
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
move-object/from16 v0, v26
move-object v1, v14
invoke-virtual {v0, v1}, Lcom/facebook/katana/MyTabHost;->setCurrentTabByTag(Ljava/lang/String;)V
move-object/from16 v0, p0
move-object v1, v14
invoke-virtual {v0, v1}, Lcom/facebook/katana/ProfileTabHostActivity;->onTabChanged(Ljava/lang/String;)V
move-object/from16 v0, v26
move-object/from16 v1, p0
invoke-virtual {v0, v1}, Lcom/facebook/katana/MyTabHost;->setOnTabChangedListener(Lcom/facebook/katana/MyTabHost$OnTabChangeListener;)V
invoke-direct/range {p0 .. p0}, Lcom/facebook/katana/ProfileTabHostActivity;->setupFatTitleBar()V
new-instance v6, Lcom/facebook/katana/ProfileTabHostActivity$1;
move-object v0, v6
move-object/from16 v1, p0
invoke-direct {v0, v1}, Lcom/facebook/katana/ProfileTabHostActivity$1;-><init>(Lcom/facebook/katana/ProfileTabHostActivity;)V
move-object v0, v6
move-object/from16 v1, p0
iput-object v0, v1, Lcom/facebook/katana/ProfileTabHostActivity;->mProgressListener:Lcom/facebook/katana/TabProgressListener;
invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/ProfileTabHostActivity;->getCurrentActivity()Landroid/app/Activity;
move-result-object p1
check-cast p1, Lcom/facebook/katana/TabProgressSource;
move-object/from16 v0, p1
move-object/from16 v1, p0
iput-object v0, v1, Lcom/facebook/katana/ProfileTabHostActivity;->mCurrentSource:Lcom/facebook/katana/TabProgressSource;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/ProfileTabHostActivity;->mCurrentSource:Lcom/facebook/katana/TabProgressSource;
move-object v6, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/ProfileTabHostActivity;->mProgressListener:Lcom/facebook/katana/TabProgressListener;
move-object v7, v0
invoke-interface {v6, v7}, Lcom/facebook/katana/TabProgressSource;->setProgressListener(Lcom/facebook/katana/TabProgressListener;)V
new-instance v6, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;
const/4 v7, 0x0
move-object v0, v6
move-object/from16 v1, p0
move-object v2, v7
invoke-direct {v0, v1, v2}, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;-><init>(Lcom/facebook/katana/ProfileTabHostActivity;Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;)V
move-object v0, v6
move-object/from16 v1, p0
iput-object v0, v1, Lcom/facebook/katana/ProfileTabHostActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
const-string v6, "launched_internally"
const/4 v7, 0x0
move-object/from16 v0, v20
move-object v1, v6
move v2, v7
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v6
move v0, v6
move-object/from16 v1, p0
iput-boolean v0, v1, Lcom/facebook/katana/ProfileTabHostActivity;->mLaunchedInternally:Z
goto/16 :goto_1d
:catchall_310
move-exception v6
if-eqz v15, :cond_316
invoke-interface {v15}, Landroid/database/Cursor;->close()V
:cond_316
throw v6
:cond_317
const-string v6, "facebook"
move-object/from16 v0, v25
move-object v1, v6
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_a4
const-string v6, "user"
invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v31
if-eqz v31, :cond_337
invoke-static/range {v31 .. v31}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
move-result-wide v6
move-wide v0, v6
move-object/from16 v2, p0
iput-wide v0, v2, Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUserId:J
:cond_337
invoke-virtual {v5}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;
move-result-object v24
if-eqz v24, :cond_a4
invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I
move-result v6
if-lez v6, :cond_a4
const/4 v6, 0x0
move-object/from16 v0, v24
move v1, v6
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object p1
check-cast p1, Ljava/lang/String;
invoke-static/range {p1 .. p1}, Lcom/facebook/katana/ProfileTabHostActivity;->tabTagForUriComponent(Ljava/lang/String;)Ljava/lang/String;
move-result-object v14
goto/16 :goto_a4
:cond_353
invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/ProfileTabHostActivity;->getIntent()Landroid/content/Intent;
move-result-object v6
const-string v7, "extra_user_id"
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/facebook/katana/ProfileTabHostActivity;->mMyUserId:J
move-wide v8, v0
invoke-virtual {v6, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J
move-result-wide v6
move-wide v0, v6
move-object/from16 v2, p0
iput-wide v0, v2, Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUserId:J
goto/16 :goto_a4
:cond_369
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUserId:J
move-wide v6, v0
move-object/from16 v0, p0
move-wide v1, v6
invoke-static {v0, v1, v2}, Lcom/facebook/katana/service/api/FacebookUserPersistent;->readFromContentProvider(Landroid/content/Context;J)Lcom/facebook/katana/service/api/FacebookUserPersistent;
move-result-object v6
move-object v0, v6
move-object/from16 v1, p0
iput-object v0, v1, Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUser:Lcom/facebook/katana/service/api/FacebookUser;
goto/16 :goto_fe
:cond_37c
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/ProfileTabHostActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
move-object v6, v0
invoke-virtual {v6}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;
move-result-object v6
invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getProfile()Lcom/facebook/katana/service/api/FacebookUser;
move-result-object v6
move-object v0, v6
move-object/from16 v1, p0
iput-object v0, v1, Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUser:Lcom/facebook/katana/service/api/FacebookUser;
goto/16 :goto_fe
:cond_390
const v21, 0x7f03003a
goto/16 :goto_107
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/ProfileTabHostActivity; onCreateOptionsMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x1
const/4 v3, 0x0
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookTabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
iget-boolean v2, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mLaunchedInternally:Z
if-nez v2, :cond_25
const v2, 0x7f08012f
invoke-interface {p1, v3, v4, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
move-result-object v1
const v2, 0x7f02007c
invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
new-instance v0, Landroid/content/Intent;
const-class v2, Lcom/facebook/katana/HomeActivity;
invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v2, "android.intent.action.VIEW"
invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
:cond_25
const-string v1, " - Lcom/facebook/katana/ProfileTabHostActivity; onCreateOptionsMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return v4
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/facebook/katana/ProfileTabHostActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/facebook/katana/FacebookTabActivity;->onDestroy()V
iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mCurrentSource:Lcom/facebook/katana/TabProgressSource;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mCurrentSource:Lcom/facebook/katana/TabProgressSource;
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/facebook/katana/TabProgressSource;->setProgressListener(Lcom/facebook/katana/TabProgressListener;)V
:cond_d
const-string v1, " - Lcom/facebook/katana/ProfileTabHostActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 4
invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookTabActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
return v0
.end method
.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
.registers 4
invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookTabActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z
move-result v0
return v0
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/facebook/katana/ProfileTabHostActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/facebook/katana/FacebookTabActivity;->onPause()V
iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->removeListener(Lcom/facebook/katana/binding/AppSessionListener;)V
:cond_e
const-string v1, " - Lcom/facebook/katana/ProfileTabHostActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 4
const-string v1, " + Lcom/facebook/katana/ProfileTabHostActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/facebook/katana/FacebookTabActivity;->onResume()V
invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-nez v0, :cond_11
invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V
:goto_10
:cond_10
const-string v1, " - Lcom/facebook/katana/ProfileTabHostActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_11
iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->addListener(Lcom/facebook/katana/binding/AppSessionListener;)V
invoke-direct {p0}, Lcom/facebook/katana/ProfileTabHostActivity;->updateFatTitleBar()V
iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUser:Lcom/facebook/katana/service/api/FacebookUser;
if-nez v0, :cond_10
iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-wide v1, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mProfileUserId:J
invoke-virtual {v0, p0, v1, v2}, Lcom/facebook/katana/binding/AppSession;->usersGetBriefInfo(Landroid/content/Context;J)Ljava/lang/String;
goto :goto_10
.end method
.method public bridge synthetic onSearchRequested()Z
.registers 2
invoke-super {p0}, Lcom/facebook/katana/FacebookTabActivity;->onSearchRequested()Z
move-result v0
return v0
.end method
.method public onTabChanged(Ljava/lang/String;)V
.registers 7
iget-object v3, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mCurrentSource:Lcom/facebook/katana/TabProgressSource;
if-eqz v3, :cond_a
iget-object v3, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mCurrentSource:Lcom/facebook/katana/TabProgressSource;
const/4 v4, 0x0
invoke-interface {v3, v4}, Lcom/facebook/katana/TabProgressSource;->setProgressListener(Lcom/facebook/katana/TabProgressListener;)V
:cond_a
invoke-virtual {p0}, Lcom/facebook/katana/ProfileTabHostActivity;->getCurrentActivity()Landroid/app/Activity;
move-result-object v3
check-cast v3, Lcom/facebook/katana/TabProgressSource;
iput-object v3, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mCurrentSource:Lcom/facebook/katana/TabProgressSource;
iget-object v3, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mCurrentSource:Lcom/facebook/katana/TabProgressSource;
iget-object v4, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mProgressListener:Lcom/facebook/katana/TabProgressListener;
invoke-interface {v3, v4}, Lcom/facebook/katana/TabProgressSource;->setProgressListener(Lcom/facebook/katana/TabProgressListener;)V
const/4 v0, 0x0
:goto_1a
iget-object v3, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mTabSpecs:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v3
if-lt v0, v3, :cond_23
return-void
:cond_23
iget-object v3, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mTabSpecViews:Ljava/util/List;
invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/view/View;
const v3, 0x7f0b00b0
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iget-object v3, p0, Lcom/facebook/katana/ProfileTabHostActivity;->mTabSpecs:Ljava/util/List;
invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/facebook/katana/MyTabHost$TabSpec;
invoke-virtual {v3}, Lcom/facebook/katana/MyTabHost$TabSpec;->getTag()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_57
invoke-virtual {p0}, Lcom/facebook/katana/ProfileTabHostActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f070009
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I
move-result v3
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V
:goto_54
add-int/lit8 v0, v0, 0x1
goto :goto_1a
:cond_57
invoke-virtual {p0}, Lcom/facebook/katana/ProfileTabHostActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f07000a
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I
move-result v3
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V
goto :goto_54
.end method
.method public bridge synthetic startActivity(Landroid/content/Intent;)V
.registers 2
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookTabActivity;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
.registers 3
invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookTabActivity;->startActivityForResult(Landroid/content/Intent;I)V
return-void
.end method
.method public bridge synthetic titleBarClickHandler(Landroid/view/View;)V
.registers 2
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookTabActivity;->titleBarClickHandler(Landroid/view/View;)V
return-void
.end method
.method public bridge synthetic titleBarPrimaryActionClickHandler(Landroid/view/View;)V
.registers 2
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookTabActivity;->titleBarPrimaryActionClickHandler(Landroid/view/View;)V
return-void
.end method
.method public bridge synthetic titleBarSearchClickHandler(Landroid/view/View;)V
.registers 2
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookTabActivity;->titleBarSearchClickHandler(Landroid/view/View;)V
return-void
.end method