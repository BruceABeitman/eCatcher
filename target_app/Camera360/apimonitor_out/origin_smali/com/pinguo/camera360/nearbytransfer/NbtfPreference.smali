.class public Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;
.super Ljava/lang/Object;
.source "NbtfPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/nearbytransfer/NbtfPreference$InstanceHolder;
    }
.end annotation


# static fields
.field public static final KEY_ALBUM_AB_SHOW_NEW:Ljava/lang/String; = "key_album_ab_show_new"

.field public static final KEY_CAMERA_SHOW_NEW:Ljava/lang/String; = "key_camera_show_new"

.field public static final KEY_MY_CENTER_SHOW_NEW:Ljava/lang/String; = "key_my_center_show_new"

.field public static final KEY_SHOW_NEWBIE_GUIDE:Ljava/lang/String; = "key_newbie_guide"

.field private static final SP_NAME:Ljava/lang/String; = "nbtf"


# instance fields
.field private mSp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "nbtf"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;->mSp:Landroid/content/SharedPreferences;

    return-void
.end method

.method private ensureSpOk()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;->mSp:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "nbtf"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;->mSp:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;->mSp:Landroid/content/SharedPreferences;

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_6
.end method

.method public static instance()Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;
    .registers 1

    invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference$InstanceHolder;->access$0()Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 4

    invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;->ensureSpOk()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return p2

    :cond_7
    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_6
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;->ensureSpOk()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_6
.end method
