.class public Lcom/pinguo/camera360/gallery/data/model/C360Photo;
.super Ljava/lang/Object;
.source "C360Photo.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.pinguo.camera360.gallery.privider"

.field public static final AUTHORITY_URI:Landroid/net/Uri; = null

.field public static final CAMERA_MODE_INDEX:Ljava/lang/String; = "cameraModeIndex"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final COST_MILLISECONDS:Ljava/lang/String; = "costMillis"

.field public static final DIRECTION:Ljava/lang/String; = "direct"

.field public static final EFFECT_CLASS_INDEX:Ljava/lang/String; = "eftClassIndex"

.field public static final EFFECT_EFTALIAS:Ljava/lang/String; = "eftAlias"

.field public static final EFFECT_EFTAPPENDDIX:Ljava/lang/String; = "eftAppendix"

.field public static final EFFECT_INDEX:Ljava/lang/String; = "eftIndex"

.field public static final EFFECT_PARAMETER:Ljava/lang/String; = "eftParam"

.field public static final EFFECT_PHOTO_SAVE_PATH:Ljava/lang/String; = "effectPhotoSavePath"

.field public static final EXIF:Ljava/lang/String; = "exif"

.field public static final FAIL_COUNT:Ljava/lang/String; = "failCount"

.field public static final HEIGHT:Ljava/lang/String; = "height"

.field public static final JSON_EXPAND:Ljava/lang/String; = "jsonExpand"

.field public static final LATITUDE:Ljava/lang/String; = "lat"

.field public static final LONGITUDE:Ljava/lang/String; = "lon"

.field public static final MODEL:Ljava/lang/String; = "model"

.field public static final PROJECT_STATE:Ljava/lang/String; = "projectState"

.field public static final PROJECT_VERSIONCODE:Ljava/lang/String; = "projectVersionCode"

.field public static final TABLE_PATH:Ljava/lang/String; = "c360_photo"

.field public static final TOKEN_MILLISECONDS:Ljava/lang/String; = "tokenMillis"

.field public static final WIDTH:Ljava/lang/String; = "width"

.field public static final _ID:Ljava/lang/String; = "id"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "content://com.pinguo.camera360.gallery.privider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/gallery/data/model/C360Photo;->AUTHORITY_URI:Landroid/net/Uri;

    sget-object v0, Lcom/pinguo/camera360/gallery/data/model/C360Photo;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "c360_photo"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/gallery/data/model/C360Photo;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
