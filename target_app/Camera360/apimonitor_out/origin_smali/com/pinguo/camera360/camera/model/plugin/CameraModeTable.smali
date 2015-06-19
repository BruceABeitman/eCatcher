.class public Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;
.super Ljava/lang/Object;
.source "CameraModeTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;
    }
.end annotation


# static fields
.field public static final CAMERA_ID_PHOTO:Ljava/lang/String; = "e46227d3cf94f4bbab8edb68d0c8d68e"

.field public static final CAMERA_MODE_COLOR_SHIFT:Ljava/lang/String; = "81ca4395630a4d87a292d91c315b4ed3"

.field public static final CAMERA_MODE_EFFECT:Ljava/lang/String; = "c205e3582b514d6fb5c21a953e1e901e"

.field public static final CAMERA_MODE_FUNNY:Ljava/lang/String; = "9de2bb7862be4c5398421b71ad444c9e"

.field private static final CAMERA_MODE_INFO_MAP:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final CAMERA_MODE_QR:Ljava/lang/String; = "f4ab1ced32e2092c35bfa10cae9e836c"

.field public static final CAMERA_MODE_SCENE:Ljava/lang/String; = "23382e49b7f64d5fb822aba5a29e927f"

.field public static final CAMERA_MODE_SKIN:Ljava/lang/String; = "bc833a31761642e78dc09c16e4366dd8"

.field public static final CAMERA_MODE_SMART:Ljava/lang/String; = "c0d064951ba5413391b702dcc44580f0"

.field public static final CAMERA_MODE_SONY:Ljava/lang/String; = "7b3b6b04486f12d95690f533f5253a74"

.field public static final CAMERA_MODE_SOUND:Ljava/lang/String; = "bb1b1f0e37114931914b579bdd1bbcf0"

.field public static final CAMERA_MODE_TILT_SHIFT:Ljava/lang/String; = "b4c3e48bf1f643208cab154a43884324"

.field public static final CAMERA_MODE_VIDEO:Ljava/lang/String; = "5d5bf5c848d112287903b26d5f388eaa"

.field private static sCameraEffectDownloadPathMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCameraModeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 11

    const v10, 0x7f0202c3

    const v9, 0x7f0202c1

    const/16 v8, 0x1fe

    const/16 v7, 0x1f4

    const/4 v6, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->sCameraModeMap:Ljava/util/Map;

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->sCameraModeMap:Ljava/util/Map;

    const-string/jumbo v1, "c205e3582b514d6fb5c21a953e1e901e"

    new-instance v2, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    const-string/jumbo v3, "c205e3582b514d6fb5c21a953e1e901e"

    const v4, 0x7f08032f

    const v5, 0x7f0202d2

    invoke-direct {v2, v3, v4, v5}, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->sCameraModeMap:Ljava/util/Map;

    const-string/jumbo v1, "bc833a31761642e78dc09c16e4366dd8"

    new-instance v2, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    const-string/jumbo v3, "bc833a31761642e78dc09c16e4366dd8"

    const v4, 0x7f080330

    const v5, 0x7f0202cf

    invoke-direct {v2, v3, v4, v5}, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->sCameraModeMap:Ljava/util/Map;

    const-string/jumbo v1, "81ca4395630a4d87a292d91c315b4ed3"

    new-instance v2, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    const-string/jumbo v3, "81ca4395630a4d87a292d91c315b4ed3"

    const v4, 0x7f080334

    invoke-direct {v2, v3, v4, v9}, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->sCameraModeMap:Ljava/util/Map;

    const-string/jumbo v1, "b4c3e48bf1f643208cab154a43884324"

    new-instance v2, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    const-string/jumbo v3, "b4c3e48bf1f643208cab154a43884324"

    const v4, 0x7f080333

    const v5, 0x7f0202d3

    invoke-direct {v2, v3, v4, v5}, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->sCameraModeMap:Ljava/util/Map;

    const-string/jumbo v1, "9de2bb7862be4c5398421b71ad444c9e"

    new-instance v2, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    const-string/jumbo v3, "9de2bb7862be4c5398421b71ad444c9e"

    const v4, 0x7f080331

    invoke-direct {v2, v3, v4, v10}, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->sCameraModeMap:Ljava/util/Map;

    const-string/jumbo v1, "bb1b1f0e37114931914b579bdd1bbcf0"

    new-instance v2, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    const-string/jumbo v3, "bb1b1f0e37114931914b579bdd1bbcf0"

    const v4, 0x7f080335

    const v5, 0x7f0202d1

    invoke-direct {v2, v3, v4, v5}, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->sCameraModeMap:Ljava/util/Map;

    const-string/jumbo v1, "c0d064951ba5413391b702dcc44580f0"

    new-instance v2, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    const-string/jumbo v3, "c0d064951ba5413391b702dcc44580f0"

    const v4, 0x7f080336

    const v5, 0x7f0202c9

    invoke-direct {v2, v3, v4, v5}, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->sCameraModeMap:Ljava/util/Map;

    const-string/jumbo v1, "23382e49b7f64d5fb822aba5a29e927f"

    new-instance v2, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    const-string/jumbo v3, "23382e49b7f64d5fb822aba5a29e927f"

    const v4, 0x7f08032e

    const v5, 0x7f0202ce

    invoke-direct {v2, v3, v4, v5}, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->sCameraModeMap:Ljava/util/Map;

    const-string/jumbo v1, "f4ab1ced32e2092c35bfa10cae9e836c"

    new-instance v2, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    const-string/jumbo v3, "f4ab1ced32e2092c35bfa10cae9e836c"

    const v4, 0x7f0801fe

    const v5, 0x7f020401

    invoke-direct {v2, v3, v4, v5}, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->sCameraModeMap:Ljava/util/Map;

    const-string/jumbo v1, "5d5bf5c848d112287903b26d5f388eaa"

    new-instance v2, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    const-string/jumbo v3, "5d5bf5c848d112287903b26d5f388eaa"

    const v4, 0x7f08020e

    const v5, 0x7f0204d6

    invoke-direct {v2, v3, v4, v5}, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->sCameraModeMap:Ljava/util/Map;

    const-string/jumbo v1, "e46227d3cf94f4bbab8edb68d0c8d68e"

    new-instance v2, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    const-string/jumbo v3, "e46227d3cf94f4bbab8edb68d0c8d68e"

    const v4, 0x7f0801ba

    const v5, 0x7f020257

    invoke-direct {v2, v3, v4, v5}, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->sCameraModeMap:Ljava/util/Map;

    const-string/jumbo v1, "7b3b6b04486f12d95690f533f5253a74"

    new-instance v2, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    const-string/jumbo v3, "7b3b6b04486f12d95690f533f5253a74"

    const v4, 0x7f080105

    const v5, 0x7f0202d0

    invoke-direct {v2, v3, v4, v5}, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->sCameraEffectDownloadPathMap:Ljava/util/Map;

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->sCameraEffectDownloadPathMap:Ljava/util/Map;

    const-string/jumbo v1, "9de2bb7862be4c5398421b71ad444c9e"

    const-string/jumbo v2, "assets://c360_funny_other.zip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->sCameraEffectDownloadPathMap:Ljava/util/Map;

    const-string/jumbo v1, "81ca4395630a4d87a292d91c315b4ed3"

    const-string/jumbo v2, "assets://c360_shiftcolor_other.zip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->sCameraEffectDownloadPathMap:Ljava/util/Map;

    const-string/jumbo v1, "bc833a31761642e78dc09c16e4366dd8"

    const-string/jumbo v2, "assets://c360_skin_other.zip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->sCameraEffectDownloadPathMap:Ljava/util/Map;

    const-string/jumbo v1, "c0d064951ba5413391b702dcc44580f0"

    const-string/jumbo v2, "assets://c360_easycamera_other.zip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->sCameraEffectDownloadPathMap:Ljava/util/Map;

    const-string/jumbo v1, "b4c3e48bf1f643208cab154a43884324"

    const-string/jumbo v2, "assets://c360_tiltshift_other.zip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->CAMERA_MODE_INFO_MAP:Ljava/util/Map;

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->CAMERA_MODE_INFO_MAP:Ljava/util/Map;

    const-string/jumbo v1, "c205e3582b514d6fb5c21a953e1e901e"

    new-instance v2, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;

    const v3, 0x7f0202d2

    invoke-direct {v2, v7, v3, v6}, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;-><init>(IILcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->CAMERA_MODE_INFO_MAP:Ljava/util/Map;

    const-string/jumbo v1, "bc833a31761642e78dc09c16e4366dd8"

    new-instance v2, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;

    const v3, 0x7f0202cf

    invoke-direct {v2, v7, v3, v6}, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;-><init>(IILcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->CAMERA_MODE_INFO_MAP:Ljava/util/Map;

    const-string/jumbo v1, "81ca4395630a4d87a292d91c315b4ed3"

    new-instance v2, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;

    invoke-direct {v2, v7, v9, v6}, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;-><init>(IILcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->CAMERA_MODE_INFO_MAP:Ljava/util/Map;

    const-string/jumbo v1, "b4c3e48bf1f643208cab154a43884324"

    new-instance v2, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;

    const v3, 0x7f0202d3

    invoke-direct {v2, v7, v3, v6}, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;-><init>(IILcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->CAMERA_MODE_INFO_MAP:Ljava/util/Map;

    const-string/jumbo v1, "9de2bb7862be4c5398421b71ad444c9e"

    new-instance v2, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;

    invoke-direct {v2, v7, v10, v6}, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;-><init>(IILcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->CAMERA_MODE_INFO_MAP:Ljava/util/Map;

    const-string/jumbo v1, "bb1b1f0e37114931914b579bdd1bbcf0"

    new-instance v2, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;

    const v3, 0x7f0202d1

    invoke-direct {v2, v7, v3, v6}, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;-><init>(IILcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->CAMERA_MODE_INFO_MAP:Ljava/util/Map;

    const-string/jumbo v1, "c0d064951ba5413391b702dcc44580f0"

    new-instance v2, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;

    const v3, 0x7f0202c9

    invoke-direct {v2, v7, v3, v6}, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;-><init>(IILcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->CAMERA_MODE_INFO_MAP:Ljava/util/Map;

    const-string/jumbo v1, "23382e49b7f64d5fb822aba5a29e927f"

    new-instance v2, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;

    const v3, 0x7f0202ce

    invoke-direct {v2, v7, v3, v6}, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;-><init>(IILcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->CAMERA_MODE_INFO_MAP:Ljava/util/Map;

    const-string/jumbo v1, "f4ab1ced32e2092c35bfa10cae9e836c"

    new-instance v2, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;

    const v3, 0x7f020401

    invoke-direct {v2, v8, v3, v6}, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;-><init>(IILcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->CAMERA_MODE_INFO_MAP:Ljava/util/Map;

    const-string/jumbo v1, "5d5bf5c848d112287903b26d5f388eaa"

    new-instance v2, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;

    const v3, 0x7f0204d6

    invoke-direct {v2, v8, v3, v6}, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;-><init>(IILcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->CAMERA_MODE_INFO_MAP:Ljava/util/Map;

    const-string/jumbo v1, "e46227d3cf94f4bbab8edb68d0c8d68e"

    new-instance v2, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;

    const/16 v3, 0x208

    const v4, 0x7f02027e

    invoke-direct {v2, v3, v4, v6}, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;-><init>(IILcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->CAMERA_MODE_INFO_MAP:Ljava/util/Map;

    const-string/jumbo v1, "7b3b6b04486f12d95690f533f5253a74"

    new-instance v2, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;

    const/16 v3, 0x221

    const v4, 0x7f0202d0

    invoke-direct {v2, v3, v4, v6}, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;-><init>(IILcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canInstallCameraMode(Ljava/lang/String;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->CAMERA_MODE_INFO_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public static getCameraIconCache(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    sget-object v2, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->CAMERA_MODE_INFO_MAP:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;

    if-nez v0, :cond_c

    :cond_b
    :goto_b
    return-object v1

    :cond_c
    #getter for: Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;->resId:I
    invoke-static {v0}, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;->access$1(Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;)I

    move-result v2

    if-eqz v2, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "drawable://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #getter for: Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;->resId:I
    invoke-static {v0}, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;->access$1(Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b
.end method

.method public static getCameraModeByGuid(Ljava/lang/String;)Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;
    .registers 4

    sget-object v2, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->sCameraModeMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    if-eqz v0, :cond_c

    move-object v1, v0

    :goto_b
    return-object v1

    :cond_c
    new-instance v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    invoke-direct {v0}, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;-><init>()V

    iput-object p0, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    move-object v1, v0

    goto :goto_b
.end method

.method public static getEffectDownloadPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v1, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->sCameraEffectDownloadPathMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    :goto_a
    return-object v0

    :cond_b
    const-string/jumbo v0, ""

    goto :goto_a
.end method
