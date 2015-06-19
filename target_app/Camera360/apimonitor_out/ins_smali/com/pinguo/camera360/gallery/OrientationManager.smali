.class public Lcom/pinguo/camera360/gallery/OrientationManager;
.super Ljava/lang/Object;
.source "OrientationManager.java"
.implements Lcom/pinguo/camera360/gallery/ui/OrientationSource;
.field private static final ORIENTATION_HYSTERESIS:I = 0x5
.field private static final TAG:Ljava/lang/String; = "OrientationManager"
.field private mActivity:Landroid/app/Activity;
.field private mListeners:Ljava/util/ArrayList;
.field private mOrientation:I
.field private mOrientationCompensation:I
.field private mOrientationListener:Lcom/pinguo/camera360/gallery/OrientationManager$MyOrientationEventListener;
.field private mOrientationLocked:Z
.field private mRotationLockedSetting:Z
.method public constructor <init>(Landroid/app/Activity;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lcom/pinguo/camera360/gallery/OrientationManager;->mOrientation:I
iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/OrientationManager;->mOrientationLocked:Z
iput v1, p0, Lcom/pinguo/camera360/gallery/OrientationManager;->mOrientationCompensation:I
iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/OrientationManager;->mRotationLockedSetting:Z
iput-object p1, p0, Lcom/pinguo/camera360/gallery/OrientationManager;->mActivity:Landroid/app/Activity;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/OrientationManager;->mListeners:Ljava/util/ArrayList;
new-instance v0, Lcom/pinguo/camera360/gallery/OrientationManager$MyOrientationEventListener;
invoke-direct {v0, p0, p1}, Lcom/pinguo/camera360/gallery/OrientationManager$MyOrientationEventListener;-><init>(Lcom/pinguo/camera360/gallery/OrientationManager;Landroid/content/Context;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/OrientationManager;->mOrientationListener:Lcom/pinguo/camera360/gallery/OrientationManager$MyOrientationEventListener;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/gallery/OrientationManager;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/OrientationManager;->mOrientation:I
return v0
.end method
.method static synthetic access$1(II)I
.registers 3
invoke-static {p0, p1}, Lcom/pinguo/camera360/gallery/OrientationManager;->roundOrientation(II)I
move-result v0
return v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/gallery/OrientationManager;I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/gallery/OrientationManager;->mOrientation:I
return-void
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/gallery/OrientationManager;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/OrientationManager;->mOrientationLocked:Z
return v0
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/gallery/OrientationManager;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/OrientationManager;->updateCompensation()V
return-void
.end method
.method private static getDisplayRotation(Landroid/app/Activity;)I
.registers 4
const/4 v1, 0x0
invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v2
invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v2
invoke-virtual {v2}, Landroid/view/Display;->getRotation()I
move-result v0
packed-switch v0, :pswitch_data_1a
:pswitch_10
:goto_10
return v1
:pswitch_11
const/16 v1, 0x5a
goto :goto_10
:pswitch_14
const/16 v1, 0xb4
goto :goto_10
:pswitch_17
const/16 v1, 0x10e
goto :goto_10
:pswitch_data_1a
.packed-switch 0x0
:pswitch_10
:pswitch_11
:pswitch_14
:pswitch_17
.end packed-switch
.end method
.method private notifyListeners()V
.registers 5
iget-object v3, p0, Lcom/pinguo/camera360/gallery/OrientationManager;->mListeners:Ljava/util/ArrayList;
monitor-enter v3
const/4 v0, 0x0
:try_start_4
iget-object v2, p0, Lcom/pinguo/camera360/gallery/OrientationManager;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v1
:goto_a
if-lt v0, v1, :cond_e
monitor-exit v3
return-void
:cond_e
iget-object v2, p0, Lcom/pinguo/camera360/gallery/OrientationManager;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/gallery/OrientationManager$Listener;
invoke-interface {v2}, Lcom/pinguo/camera360/gallery/OrientationManager$Listener;->onOrientationCompensationChanged()V
add-int/lit8 v0, v0, 0x1
goto :goto_a
:catchall_1c
move-exception v2
monitor-exit v3
:try_end_1e
.catchall {:try_start_4 .. :try_end_1e} :catchall_1c
throw v2
.end method
.method private static roundOrientation(II)I
.registers 5
const/4 v0, 0x0
const/4 v2, -0x1
if-ne p1, v2, :cond_10
const/4 v0, 0x1
:goto_5
if-eqz v0, :cond_f
add-int/lit8 v2, p0, 0x2d
div-int/lit8 v2, v2, 0x5a
mul-int/lit8 v2, v2, 0x5a
rem-int/lit16 p1, v2, 0x168
:cond_f
return p1
:cond_10
sub-int v2, p0, p1
invoke-static {v2}, Ljava/lang/Math;->abs(I)I
move-result v1
rsub-int v2, v1, 0x168
invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I
move-result v1
const/16 v2, 0x32
if-lt v1, v2, :cond_22
const/4 v0, 0x1
:goto_21
goto :goto_5
:cond_22
const/4 v0, 0x0
goto :goto_21
.end method
.method private updateCompensation()V
.registers 4
iget v1, p0, Lcom/pinguo/camera360/gallery/OrientationManager;->mOrientation:I
const/4 v2, -0x1
if-ne v1, v2, :cond_6
:cond_5
:goto_5
return-void
:cond_6
iget v1, p0, Lcom/pinguo/camera360/gallery/OrientationManager;->mOrientation:I
iget-object v2, p0, Lcom/pinguo/camera360/gallery/OrientationManager;->mActivity:Landroid/app/Activity;
invoke-static {v2}, Lcom/pinguo/camera360/gallery/OrientationManager;->getDisplayRotation(Landroid/app/Activity;)I
move-result v2
add-int/2addr v1, v2
rem-int/lit16 v0, v1, 0x168
iget v1, p0, Lcom/pinguo/camera360/gallery/OrientationManager;->mOrientationCompensation:I
if-eq v1, v0, :cond_5
iput v0, p0, Lcom/pinguo/camera360/gallery/OrientationManager;->mOrientationCompensation:I
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/OrientationManager;->notifyListeners()V
goto :goto_5
.end method
.method public addListener(Lcom/pinguo/camera360/gallery/OrientationManager$Listener;)V
.registers 4
iget-object v1, p0, Lcom/pinguo/camera360/gallery/OrientationManager;->mListeners:Ljava/util/ArrayList;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/OrientationManager;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_a
throw v0
.end method
.method public getCompensation()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/OrientationManager;->mOrientationCompensation:I
return v0
.end method
.method public getDisplayRotation()I
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/OrientationManager;->mActivity:Landroid/app/Activity;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/OrientationManager;->getDisplayRotation(Landroid/app/Activity;)I
move-result v0
return v0
.end method
.method public pause()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/OrientationManager;->mOrientationListener:Lcom/pinguo/camera360/gallery/OrientationManager$MyOrientationEventListener;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/OrientationManager$MyOrientationEventListener;->disable()V
return-void
.end method
.method public removeListener(Lcom/pinguo/camera360/gallery/OrientationManager$Listener;)V
.registers 4
iget-object v1, p0, Lcom/pinguo/camera360/gallery/OrientationManager;->mListeners:Ljava/util/ArrayList;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/OrientationManager;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_a
throw v0
.end method
.method public resume()V
.registers 5
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v3, p0, Lcom/pinguo/camera360/gallery/OrientationManager;->mActivity:Landroid/app/Activity;
invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
const-string/jumbo v3, "accelerometer_rotation"
invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
move-result v3
if-eq v3, v1, :cond_19
:goto_11
iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/OrientationManager;->mRotationLockedSetting:Z
iget-object v1, p0, Lcom/pinguo/camera360/gallery/OrientationManager;->mOrientationListener:Lcom/pinguo/camera360/gallery/OrientationManager$MyOrientationEventListener;
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/OrientationManager$MyOrientationEventListener;->enable()V
return-void
:cond_19
move v1, v2
goto :goto_11
.end method