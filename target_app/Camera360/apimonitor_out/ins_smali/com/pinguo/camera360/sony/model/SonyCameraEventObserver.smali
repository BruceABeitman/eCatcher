.class public Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
.super Ljava/lang/Object;
.source "SonyCameraEventObserver.java"
.field private static final TAG:Ljava/lang/String;
.field private mActivity:Landroid/app/Activity;
.field private mCameraStatus:Ljava/lang/String;
.field private mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
.field private mLiveviewOrientation:I
.field private mLiveviewStatus:Z
.field private mPostViewSize:Ljava/lang/String;
.field private mRemoteApi:Lcom/pinguo/camera360/sony/model/SonyRemoteApi;
.field private mShootMode:Ljava/lang/String;
.field private mStillSize:Ljava/lang/String;
.field private mStillSizeCheckAvailability:Z
.field private mWhileEventMonitoring:Z
.field private mZoomPosition:I
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/pinguo/camera360/sony/model/SonyRemoteApi;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mWhileEventMonitoring:Z
if-nez p1, :cond_11
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string/jumbo v1, "context is null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_11
if-nez p2, :cond_1c
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string/jumbo v1, "apiClient is null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1c
check-cast p1, Landroid/app/Activity;
iput-object p1, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mActivity:Landroid/app/Activity;
iput-object p2, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mRemoteApi:Lcom/pinguo/camera360/sony/model/SonyRemoteApi;
return-void
.end method
.method static synthetic access$0()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->TAG:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mWhileEventMonitoring:Z
return v0
.end method
.method static synthetic access$10(Lorg/json/JSONObject;)Ljava/lang/Boolean;
.registers 2
invoke-static {p0}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->findLiveviewStatus(Lorg/json/JSONObject;)Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method
.method static synthetic access$11(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mLiveviewStatus:Z
return v0
.end method
.method static synthetic access$12(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mLiveviewStatus:Z
return-void
.end method
.method static synthetic access$13(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->fireLiveviewStatusChangeListener(Z)V
return-void
.end method
.method static synthetic access$14(Lorg/json/JSONObject;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->findShootMode(Lorg/json/JSONObject;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic access$15(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mShootMode:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$16(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mShootMode:Ljava/lang/String;
return-void
.end method
.method static synthetic access$17(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->fireShootModeChangeListener(Ljava/lang/String;)V
return-void
.end method
.method static synthetic access$18(Lorg/json/JSONObject;)I
.registers 2
invoke-static {p0}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->findZoomInformation(Lorg/json/JSONObject;)I
move-result v0
return v0
.end method
.method static synthetic access$19(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mZoomPosition:I
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)Lcom/pinguo/camera360/sony/model/SonyRemoteApi;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mRemoteApi:Lcom/pinguo/camera360/sony/model/SonyRemoteApi;
return-object v0
.end method
.method static synthetic access$20(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;IIII)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->fireZoomInformationChangeListener(IIII)V
return-void
.end method
.method static synthetic access$21(Lorg/json/JSONObject;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->findTakePictureUrl(Lorg/json/JSONObject;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic access$22(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
return-object v0
.end method
.method static synthetic access$23(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->firePictureTakenOrientationRest()V
return-void
.end method
.method static synthetic access$24(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->firePicturePostTakenListener()V
return-void
.end method
.method static synthetic access$25(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->fireTakePictureFailListener()V
return-void
.end method
.method static synthetic access$26(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;[BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->firePictureTakenListener([BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V
return-void
.end method
.method static synthetic access$27(Lorg/json/JSONObject;)I
.registers 2
invoke-static {p0}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->findLiveviewOrientation(Lorg/json/JSONObject;)I
move-result v0
return v0
.end method
.method static synthetic access$28(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mLiveviewOrientation:I
return v0
.end method
.method static synthetic access$29(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mLiveviewOrientation:I
return-void
.end method
.method static synthetic access$3(Lorg/json/JSONObject;)I
.registers 2
invoke-static {p0}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->findErrorCode(Lorg/json/JSONObject;)I
move-result v0
return v0
.end method
.method static synthetic access$30(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->fireLiveviewOrientationChangeListener(I)V
return-void
.end method
.method static synthetic access$31(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;Lorg/json/JSONObject;)Ljava/lang/String;
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->findStillPictureSize(Lorg/json/JSONObject;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic access$32(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mStillSize:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$33(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mStillSize:Ljava/lang/String;
return-void
.end method
.method static synthetic access$34(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mStillSizeCheckAvailability:Z
return v0
.end method
.method static synthetic access$35(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;Ljava/lang/String;Z)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->fireStillSizeChangeListener(Ljava/lang/String;Z)V
return-void
.end method
.method static synthetic access$36(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mWhileEventMonitoring:Z
return-void
.end method
.method static synthetic access$4(Lorg/json/JSONObject;)Ljava/util/List;
.registers 2
invoke-static {p0}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->findAvailableApiList(Lorg/json/JSONObject;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;Ljava/util/List;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->fireApiListModifiedListener(Ljava/util/List;)V
return-void
.end method
.method static synthetic access$6(Lorg/json/JSONObject;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->findCameraStatus(Lorg/json/JSONObject;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic access$7(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mCameraStatus:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$8(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mCameraStatus:Ljava/lang/String;
return-void
.end method
.method static synthetic access$9(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->fireCameraStatusChangeListener(Ljava/lang/String;)V
return-void
.end method
.method private static findAvailableApiList(Lorg/json/JSONObject;)Ljava/util/List;
.registers 11
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const/4 v4, 0x0
const-string/jumbo v7, "result"
invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v5
invoke-virtual {v5, v4}, Lorg/json/JSONArray;->isNull(I)Z
move-result v7
if-nez v7, :cond_35
invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v1
const-string/jumbo v7, "type"
invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
const-string/jumbo v7, "availableApiList"
invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_40
const-string/jumbo v7, "names"
invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v0
const/4 v3, 0x0
:goto_2f
invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
move-result v7
if-lt v3, v7, :cond_36
:cond_35
:goto_35
return-object v2
:cond_36
invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v3, v3, 0x1
goto :goto_2f
:cond_40
sget-object v7, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->TAG:Ljava/lang/String;
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "Event reply: Illegal Index (0: AvailableApiList) "
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_35
.end method
.method private static findCameraStatus(Lorg/json/JSONObject;)Ljava/lang/String;
.registers 9
const/4 v0, 0x0
const/4 v2, 0x1
const-string/jumbo v5, "result"
invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v3
invoke-virtual {v3, v2}, Lorg/json/JSONArray;->isNull(I)Z
move-result v5
if-nez v5, :cond_2a
invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v1
const-string/jumbo v5, "type"
invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
const-string/jumbo v5, "cameraStatus"
invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_2b
const-string/jumbo v5, "cameraStatus"
invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:cond_2a
:goto_2a
return-object v0
:cond_2b
sget-object v5, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->TAG:Ljava/lang/String;
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "Event reply: Illegal Index (1: CameraStatus) "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_2a
.end method
.method private static findErrorCode(Lorg/json/JSONObject;)I
.registers 4
const/4 v0, 0x0
const-string/jumbo v2, "error"
invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_16
const-string/jumbo v2, "error"
invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I
move-result v0
:cond_16
return v0
.end method
.method private static findLiveviewOrientation(Lorg/json/JSONObject;)I
.registers 9
const/4 v0, 0x0
const/4 v1, 0x4
const-string/jumbo v5, "result"
invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v3
invoke-virtual {v3, v1}, Lorg/json/JSONArray;->isNull(I)Z
move-result v5
if-nez v5, :cond_2a
invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v2
const-string/jumbo v5, "type"
invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
const-string/jumbo v5, "liveviewOrientation"
invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_2b
const-string/jumbo v5, "liveviewOrientation"
invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
:cond_2a
:goto_2a
return v0
:cond_2b
sget-object v5, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->TAG:Ljava/lang/String;
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "Event reply: Illegal Index (2: zoomInformation) "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_2a
.end method
.method private static findLiveviewStatus(Lorg/json/JSONObject;)Ljava/lang/Boolean;
.registers 9
const/4 v1, 0x0
const/4 v0, 0x3
const-string/jumbo v5, "result"
invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v3
invoke-virtual {v3, v0}, Lorg/json/JSONArray;->isNull(I)Z
move-result v5
if-nez v5, :cond_2e
invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v2
const-string/jumbo v5, "type"
invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
const-string/jumbo v5, "liveviewStatus"
invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_2f
const-string/jumbo v5, "liveviewStatus"
invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v5
invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
:goto_2e
:cond_2e
return-object v1
:cond_2f
sget-object v5, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->TAG:Ljava/lang/String;
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "Event reply: Illegal Index (3: LiveviewStatus) "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_2e
.end method
.method private static findPostViewSize(Lorg/json/JSONObject;)Ljava/lang/String;
.registers 13
const/4 v4, 0x0
const/16 v1, 0x13
const-string/jumbo v9, "result"
invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v5
invoke-virtual {v5, v1}, Lorg/json/JSONArray;->isNull(I)Z
move-result v9
if-nez v9, :cond_61
invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v3
const-string/jumbo v9, "type"
invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
const-string/jumbo v9, "postviewImageSize"
invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_72
const-string/jumbo v9, "currentPostviewImageSize"
invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-static {}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->getInstance()Lcom/pinguo/camera360/sony/SonyCameraParameters;
move-result-object v9
const-string/jumbo v10, "post-view"
invoke-virtual {v9, v10, v4}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V
:try_start_35
const-string/jumbo v9, "postviewImageSizeCandidates"
invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v2
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v7
if-lez v7, :cond_61
new-instance v6, Ljava/lang/StringBuffer;
invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V
const/4 v0, 0x0
:goto_48
if-lt v0, v7, :cond_62
invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I
move-result v9
add-int/lit8 v9, v9, -0x1
invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;
invoke-static {}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->getInstance()Lcom/pinguo/camera360/sony/SonyCameraParameters;
move-result-object v9
const-string/jumbo v10, "post-view-values"
invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v11
invoke-virtual {v9, v10, v11}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V
:goto_61
:cond_61
return-object v4
:cond_62
invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
move-result-object v9
invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string/jumbo v9, ","
invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:try_end_6f
.catch Lorg/json/JSONException; {:try_start_35 .. :try_end_6f} :catch_88
add-int/lit8 v0, v0, 0x1
goto :goto_48
:cond_72
sget-object v9, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->TAG:Ljava/lang/String;
new-instance v10, Ljava/lang/StringBuilder;
const-string/jumbo v11, "Event reply: Illegal Index (19: postviewImageSize) "
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_61
:catch_88
move-exception v9
goto :goto_61
.end method
.method private static findShootMode(Lorg/json/JSONObject;)Ljava/lang/String;
.registers 13
const/4 v4, 0x0
const/16 v1, 0x15
const-string/jumbo v9, "result"
invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v2
invoke-virtual {v2, v1}, Lorg/json/JSONArray;->isNull(I)Z
move-result v9
if-nez v9, :cond_61
invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v6
const-string/jumbo v9, "type"
invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
const-string/jumbo v9, "shootMode"
invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_72
const-string/jumbo v9, "currentShootMode"
invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-static {}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->getInstance()Lcom/pinguo/camera360/sony/SonyCameraParameters;
move-result-object v9
const-string/jumbo v10, "shoot-mode"
invoke-virtual {v9, v10, v4}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V
:try_start_35
const-string/jumbo v9, "shootModeCandidates"
invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v5
invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
move-result v7
if-lez v7, :cond_61
new-instance v3, Ljava/lang/StringBuffer;
invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
const/4 v0, 0x0
:goto_48
if-lt v0, v7, :cond_62
invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I
move-result v9
add-int/lit8 v9, v9, -0x1
invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;
invoke-static {}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->getInstance()Lcom/pinguo/camera360/sony/SonyCameraParameters;
move-result-object v9
const-string/jumbo v10, "shoot-mode-values"
invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v11
invoke-virtual {v9, v10, v11}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V
:goto_61
:cond_61
return-object v4
:cond_62
invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
move-result-object v9
invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string/jumbo v9, ","
invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:try_end_6f
.catch Lorg/json/JSONException; {:try_start_35 .. :try_end_6f} :catch_88
add-int/lit8 v0, v0, 0x1
goto :goto_48
:cond_72
sget-object v9, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->TAG:Ljava/lang/String;
new-instance v10, Ljava/lang/StringBuilder;
const-string/jumbo v11, "Event reply: Illegal Index (21: ShootMode) "
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_61
:catch_88
move-exception v9
goto :goto_61
.end method
.method private findStillPictureSize(Lorg/json/JSONObject;)Ljava/lang/String;
.registers 13
const/4 v5, 0x0
const/16 v3, 0xe
const-string/jumbo v8, "result"
invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v4
invoke-virtual {v4, v3}, Lorg/json/JSONArray;->isNull(I)Z
move-result v8
if-nez v8, :cond_53
invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v6
const-string/jumbo v8, "type"
invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
const-string/jumbo v8, "stillSize"
invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_54
const-string/jumbo v8, "currentAspect"
invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v8, "currentSize"
invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string/jumbo v8, "checkAvailability"
invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v0
new-instance v8, Ljava/lang/StringBuilder;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v9
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v9, " "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
iput-boolean v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mStillSizeCheckAvailability:Z
:cond_53
:goto_53
return-object v5
:cond_54
sget-object v8, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->TAG:Ljava/lang/String;
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, "Event reply: Illegal Index (14: stillSize) "
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_53
.end method
.method private static findTakePictureUrl(Lorg/json/JSONObject;)Ljava/lang/String;
.registers 11
const/4 v8, 0x0
const-string/jumbo v2, ""
const/4 v0, 0x5
const-string/jumbo v7, "result"
invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v1
invoke-virtual {v1, v0}, Lorg/json/JSONArray;->isNull(I)Z
move-result v7
if-nez v7, :cond_41
invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;
move-result-object v4
invoke-virtual {v4, v8}, Lorg/json/JSONArray;->isNull(I)Z
move-result v7
if-nez v7, :cond_41
invoke-virtual {v4, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v5
const-string/jumbo v7, "type"
invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string/jumbo v7, "takePicture"
invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_42
const-string/jumbo v7, "takePictureUrl"
invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v6
invoke-virtual {v6, v8}, Lorg/json/JSONArray;->isNull(I)Z
move-result v7
if-nez v7, :cond_41
invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
move-result-object v2
:goto_41
:cond_41
return-object v2
:cond_42
sget-object v7, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->TAG:Ljava/lang/String;
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "Event reply: Illegal Index (5: takePicture) "
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_41
.end method
.method private static findZoomInformation(Lorg/json/JSONObject;)I
.registers 9
const/4 v4, -0x1
const/4 v0, 0x2
const-string/jumbo v5, "result"
invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v1
invoke-virtual {v1, v0}, Lorg/json/JSONArray;->isNull(I)Z
move-result v5
if-nez v5, :cond_2a
invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v3
const-string/jumbo v5, "type"
invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string/jumbo v5, "zoomInformation"
invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_2b
const-string/jumbo v5, "zoomPosition"
invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v4
:cond_2a
:goto_2a
return v4
:cond_2b
sget-object v5, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->TAG:Ljava/lang/String;
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "Event reply: Illegal Index (2: zoomInformation) "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_2a
.end method
.method private fireApiListModifiedListener(Ljava/util/List;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mActivity:Landroid/app/Activity;
new-instance v1, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$2;
invoke-direct {v1, p0, p1}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$2;-><init>(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;Ljava/util/List;)V
invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method private fireCameraStatusChangeListener(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mActivity:Landroid/app/Activity;
new-instance v1, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$3;
invoke-direct {v1, p0, p1}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$3;-><init>(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method private fireLiveviewOrientationChangeListener(I)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mActivity:Landroid/app/Activity;
new-instance v1, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$9;
invoke-direct {v1, p0, p1}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$9;-><init>(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;I)V
invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method private fireLiveviewStatusChangeListener(Z)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mActivity:Landroid/app/Activity;
new-instance v1, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$4;
invoke-direct {v1, p0, p1}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$4;-><init>(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;Z)V
invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method private firePicturePostTakenListener()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mActivity:Landroid/app/Activity;
new-instance v1, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$11;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$11;-><init>(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)V
invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method private firePictureTakenListener([BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V
.registers 5
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mActivity:Landroid/app/Activity;
new-instance v1, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$10;
invoke-direct {v1, p0, p1, p2}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$10;-><init>(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;[BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V
invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method private firePictureTakenOrientationRest()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
invoke-interface {v0}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;->notifyTakePictureOrientationRest()V
:cond_9
return-void
.end method
.method private firePostViewSizeChangeListener(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mActivity:Landroid/app/Activity;
new-instance v1, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$6;
invoke-direct {v1, p0, p1}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$6;-><init>(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method private fireShootModeChangeListener(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mActivity:Landroid/app/Activity;
new-instance v1, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$5;
invoke-direct {v1, p0, p1}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$5;-><init>(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method private fireStillSizeChangeListener(Ljava/lang/String;Z)V
.registers 5
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mActivity:Landroid/app/Activity;
new-instance v1, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$7;
invoke-direct {v1, p0, p1, p2}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$7;-><init>(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;Ljava/lang/String;Z)V
invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method private fireTakePictureFailListener()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mActivity:Landroid/app/Activity;
new-instance v1, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$12;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$12;-><init>(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)V
invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method private fireZoomInformationChangeListener(IIII)V
.registers 7
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mActivity:Landroid/app/Activity;
new-instance v1, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$8;
invoke-direct {v1, p0, p3}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$8;-><init>(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;I)V
invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method public clearEventChangeListener()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
return-void
.end method
.method public getCameraStatus()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mCameraStatus:Ljava/lang/String;
return-object v0
.end method
.method public getLiveviewStatus()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mLiveviewStatus:Z
return v0
.end method
.method public getShootMode()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mShootMode:Ljava/lang/String;
return-object v0
.end method
.method public getZoomPosition()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mZoomPosition:I
return v0
.end method
.method public isStarted()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mWhileEventMonitoring:Z
return v0
.end method
.method public setEventChangeListener(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
return-void
.end method
.method public start()Z
.registers 3
const/4 v0, 0x1
iget-boolean v1, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mWhileEventMonitoring:Z
if-eqz v1, :cond_f
sget-object v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->TAG:Ljava/lang/String;
const-string/jumbo v1, "start() already starting."
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, 0x0
:goto_e
return v0
:cond_f
iput-boolean v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mWhileEventMonitoring:Z
new-instance v1, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;-><init>(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)V
invoke-virtual {v1}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$1;->start()V
goto :goto_e
.end method
.method public stop()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mWhileEventMonitoring:Z
return-void
.end method