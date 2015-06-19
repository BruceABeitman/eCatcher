.class  Lcom/pinguo/camera360/shop/activity/AppInteration;
.super Lcom/pinguo/camera360/shop/activity/Interaction;
.source "InteractionFactory.java"
.field private static final REQUEST_CODE_LOGIN:I = 0x3e8
.field private static final REQUEST_CODE_LOGIN_CLOUD:I = 0x3ea
.field private static final REQUEST_CODE_LOGIN_ORDER_LIST:I = 0x3eb
.field private static final REQUEST_CODE_LOGOUT:I = 0x3e9
.field private static final TAG:Ljava/lang/String;
.field private mContext:Landroid/app/Activity;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/shop/activity/AppInteration;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/shop/activity/AppInteration;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/app/Activity;)V
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/shop/activity/Interaction;-><init>()V
iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/AppInteration;->mContext:Landroid/app/Activity;
return-void
.end method
.method private openCamera(Ljava/lang/String;)V
.registers 4
invoke-static {}, Lcom/pinguo/camera360/sony/model/ServerDeviceInstance;->clear()V
iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/AppInteration;->mContext:Landroid/app/Activity;
invoke-static {v1}, Lcom/pinguo/camera360/PgCameraApplication;->getStartCameraIntent(Landroid/content/Context;)Landroid/content/Intent;
move-result-object v0
const-string/jumbo v1, "bundle_key_mode"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/AppInteration;->mContext:Landroid/app/Activity;
invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method private openCameraDetail(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/AppInteration;->mContext:Landroid/app/Activity;
invoke-static {v0, p1}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->startActivityFromBanner(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method private openEffect(Ljava/lang/String;)V
.registers 7
invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;
move-result-object v3
invoke-virtual {v3, p1}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getProductByKey(Ljava/lang/String;)Lcom/pinguo/camera360/shop/model/entity/Product;
move-result-object v2
if-nez v2, :cond_b
:goto_a
return-void
:cond_b
sget-object v3, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;
iget-object v1, v3, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v3
iget-object v4, v2, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectsByPackKey(Ljava/lang/String;)Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_2a
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v3
if-nez v3, :cond_2a
const/4 v3, 0x0
invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/camera360/effect/model/entity/Effect;
iget-object v1, v3, Lcom/pinguo/camera360/effect/model/entity/Effect;->typeKey:Ljava/lang/String;
:cond_2a
iget-object v3, p0, Lcom/pinguo/camera360/shop/activity/AppInteration;->mContext:Landroid/app/Activity;
const-string/jumbo v4, "c205e3582b514d6fb5c21a953e1e901e"
invoke-static {v3, v4, v1}, LvStudio/Android/Camera360/activity/CameraActivity;->startActivityFromStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_a
.end method
.method public onClick(Ljava/lang/String;I)V
.registers 14
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/shop/activity/AppInteration; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v10, 0x1
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v6
invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v4
sget-object v8, Lcom/pinguo/camera360/shop/activity/AppInteration;->TAG:Ljava/lang/String;
const-string/jumbo v9, "onClick"
invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
const-string/jumbo v8, "cloud"
invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_4a
iget-object v8, p0, Lcom/pinguo/camera360/shop/activity/AppInteration;->mContext:Landroid/app/Activity;
invoke-static {v8}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/camera360/login/model/User;->isLogin()Z
move-result v8
if-eqz v8, :cond_38
new-instance v3, Landroid/content/Intent;
invoke-direct {v3}, Landroid/content/Intent;-><init>()V
iget-object v8, p0, Lcom/pinguo/camera360/shop/activity/AppInteration;->mContext:Landroid/app/Activity;
const-class v9, Lcom/pinguo/album/activities/PGAlbumActivity;
invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
iget-object v8, p0, Lcom/pinguo/camera360/shop/activity/AppInteration;->mContext:Landroid/app/Activity;
invoke-virtual {v8, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
:goto_37
:cond_37
const-string v1, " - Lcom/pinguo/camera360/shop/activity/AppInteration; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_38
new-instance v3, Landroid/content/Intent;
invoke-direct {v3}, Landroid/content/Intent;-><init>()V
iget-object v8, p0, Lcom/pinguo/camera360/shop/activity/AppInteration;->mContext:Landroid/app/Activity;
const-class v9, Lcom/pinguo/album/activities/PGAlbumGuideActivity;
invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
iget-object v8, p0, Lcom/pinguo/camera360/shop/activity/AppInteration;->mContext:Landroid/app/Activity;
invoke-virtual {v8, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
goto :goto_37
:cond_4a
const-string/jumbo v8, "photo"
invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_60
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v8
new-instance v9, Lcom/pinguo/camera360/camera/event/EnterGalleryEvent;
invoke-direct {v9}, Lcom/pinguo/camera360/camera/event/EnterGalleryEvent;-><init>()V
invoke-virtual {v8, v9}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
goto :goto_37
:cond_60
const-string/jumbo v8, "effect"
invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_76
const-string/jumbo v8, "effectId"
invoke-virtual {v6, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iget-object v8, p0, Lcom/pinguo/camera360/shop/activity/AppInteration;->mContext:Landroid/app/Activity;
invoke-static {v8, v1, p2}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->startActivityFromBanner(Landroid/app/Activity;Ljava/lang/String;I)V
goto :goto_37
:cond_76
const-string/jumbo v8, "effectopen"
invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_a4
const-string/jumbo v8, "effectId"
invoke-virtual {v6, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;
move-result-object v8
invoke-virtual {v8, v1}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getProductByKey(Ljava/lang/String;)Lcom/pinguo/camera360/shop/model/entity/Product;
move-result-object v5
if-eqz v5, :cond_9e
iget v8, v5, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I
if-ne v8, v10, :cond_98
invoke-direct {p0, v1}, Lcom/pinguo/camera360/shop/activity/AppInteration;->openEffect(Ljava/lang/String;)V
goto :goto_37
:cond_98
iget-object v8, p0, Lcom/pinguo/camera360/shop/activity/AppInteration;->mContext:Landroid/app/Activity;
invoke-static {v8, v1, p2}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->startActivityFromBanner(Landroid/app/Activity;Ljava/lang/String;I)V
goto :goto_37
:cond_9e
iget-object v8, p0, Lcom/pinguo/camera360/shop/activity/AppInteration;->mContext:Landroid/app/Activity;
invoke-static {v8, v1, p2}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->startActivityFromBanner(Landroid/app/Activity;Ljava/lang/String;I)V
goto :goto_37
:cond_a4
const-string/jumbo v8, "camera"
invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_b8
const-string/jumbo v8, "cameraId"
invoke-virtual {v6, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/pinguo/camera360/shop/activity/AppInteration;->openCameraDetail(Ljava/lang/String;)V
goto :goto_37
:cond_b8
const-string/jumbo v8, "cameraopen"
invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_e7
const-string/jumbo v8, "cameraId"
invoke-virtual {v6, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/CameraShopModel;
move-result-object v8
invoke-virtual {v8, v0}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->getProductByKey(Ljava/lang/String;)Lcom/pinguo/camera360/shop/model/entity/Product;
move-result-object v5
if-eqz v5, :cond_e0
iget v8, v5, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I
if-ne v8, v10, :cond_db
invoke-direct {p0, v0}, Lcom/pinguo/camera360/shop/activity/AppInteration;->openCamera(Ljava/lang/String;)V
goto/16 :goto_37
:cond_db
invoke-direct {p0, v0}, Lcom/pinguo/camera360/shop/activity/AppInteration;->openCameraDetail(Ljava/lang/String;)V
goto/16 :goto_37
:cond_e0
iget-object v8, p0, Lcom/pinguo/camera360/shop/activity/AppInteration;->mContext:Landroid/app/Activity;
invoke-static {v8, v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->startActivityFromBanner(Landroid/content/Context;Ljava/lang/String;)V
goto/16 :goto_37
:cond_e7
const-string/jumbo v8, "applist"
invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_37
new-instance v2, Landroid/content/Intent;
iget-object v8, p0, Lcom/pinguo/camera360/shop/activity/AppInteration;->mContext:Landroid/app/Activity;
const-class v9, Lcom/pinguo/camera360/camera/activity/AdsActivity;
invoke-direct {v2, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v8, p0, Lcom/pinguo/camera360/shop/activity/AppInteration;->mContext:Landroid/app/Activity;
invoke-virtual {v8, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
goto/16 :goto_37
.end method