.class public Lcom/pinguo/camera360/sony/SonyCameraParameters;
.super Ljava/lang/Object;
.source "SonyCameraParameters.java"
.field public static final KEY_POST_VIEW:Ljava/lang/String; = "post-view"
.field public static final KEY_SHOOT_MODE:Ljava/lang/String; = "shoot-mode"
.field public static final KEY_STILL_SIZE:Ljava/lang/String; = "still-size"
.field public static final SUPPORTED_VALUES_SUFFIX:Ljava/lang/String; = "-values"
.field private static volatile mSonySonyCameraParameters:Lcom/pinguo/camera360/sony/SonyCameraParameters;
.field private mMap:Ljava/util/HashMap;
.method private constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
const/16 v1, 0x40
invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V
iput-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraParameters;->mMap:Ljava/util/HashMap;
return-void
.end method
.method public static getInstance()Lcom/pinguo/camera360/sony/SonyCameraParameters;
.registers 2
const-class v1, Lcom/pinguo/camera360/sony/SonyCameraParameters;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/pinguo/camera360/sony/SonyCameraParameters;->mSonySonyCameraParameters:Lcom/pinguo/camera360/sony/SonyCameraParameters;
if-nez v0, :cond_e
new-instance v0, Lcom/pinguo/camera360/sony/SonyCameraParameters;
invoke-direct {v0}, Lcom/pinguo/camera360/sony/SonyCameraParameters;-><init>()V
sput-object v0, Lcom/pinguo/camera360/sony/SonyCameraParameters;->mSonySonyCameraParameters:Lcom/pinguo/camera360/sony/SonyCameraParameters;
:cond_e
sget-object v0, Lcom/pinguo/camera360/sony/SonyCameraParameters;->mSonySonyCameraParameters:Lcom/pinguo/camera360/sony/SonyCameraParameters;
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
:try_end_14
.catchall {:try_start_3 .. :try_end_14} :catchall_12
throw v0
.end method
.method private split(Ljava/lang/String;)Ljava/util/ArrayList;
.registers 7
if-nez p1, :cond_4
const/4 v2, 0x0
:cond_3
return-object v2
:cond_4
new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;
const/16 v3, 0x2c
invoke-direct {v1, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V
invoke-interface {v1, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v1}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_17
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_3
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_17
.end method
.method private splitInt(Ljava/lang/String;)Ljava/util/ArrayList;
.registers 8
const/4 v3, 0x0
if-nez p1, :cond_5
move-object v2, v3
:goto_4
:cond_4
return-object v2
:cond_5
new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;
const/16 v4, 0x2c
invoke-direct {v1, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V
invoke-interface {v1, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v1}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_18
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-nez v5, :cond_26
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v4
if-nez v4, :cond_4
move-object v2, v3
goto :goto_4
:cond_26
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v5
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_18
.end method
.method public get(Ljava/lang/String;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraParameters;->mMap:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method public getSupportPostViewSize(Ljava/lang/String;)Ljava/util/List;
.registers 4
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->get(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v1
return-object v1
.end method
.method public getSupportShoot(Ljava/lang/String;)Ljava/util/List;
.registers 4
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->get(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v1
return-object v1
.end method
.method public getSupportStillSize(Ljava/lang/String;)Ljava/util/List;
.registers 4
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->get(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v1
return-object v1
.end method
.method public reset()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraParameters;->mMap:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
return-void
.end method
.method public set(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraParameters;->mMap:Ljava/util/HashMap;
invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method