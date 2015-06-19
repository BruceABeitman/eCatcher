.class public Lcom/pinguo/camera360/save/sandbox/SandBoxConstants;
.super Ljava/lang/Object;
.source "SandBoxConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
    }
.end annotation


# static fields
.field public static final CAMERA360_ROOT:Ljava/lang/String; = null

.field public static final SANDBOX_LINE_COUNT:I = 0x4

.field public static final SAND_B0X_DB_PATH:Ljava/lang/String; = null

.field public static final SAND_B0X_ROOT:Ljava/lang/String; = null

.field public static final SAND_BOX:Ljava/lang/String; = null

.field public static final SAND_BOX_PREVIEW_QULITY:I = 0x5f

.field public static final SDCARD_ROOT:Ljava/lang/String; = null

.field public static final SUFFIX_JPG:Ljava/lang/String; = ".jpg"

.field public static final emC360AddEffect:I = 0x15

.field public static final emCamModeColorShift:I = 0x4

.field public static final emCamModeEffect:I = 0x0

.field public static final emCamModeFunny:I = 0x2

.field public static final emCamModeGhost:I = 0x3

.field public static final emCamModeMultiGrid:I = 0x8

.field public static final emCamModeScene:I = 0x1

.field public static final emCamModeSelfShoot:I = 0x6

.field public static final emCamModeSnapSwitch:I = 0x9

.field public static final emCamModeTiltShift:I = 0x5

.field public static final emCamModeZeroShoot:I = 0x7

.field public static final emSystemAddEffect:I = 0x16

.field public static final emSystemChangeEffect:I = 0x17


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants;->SDCARD_ROOT:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants;->SDCARD_ROOT:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/Camera360"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants;->CAMERA360_ROOT:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants;->CAMERA360_ROOT:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/TempData/.sandbox"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants;->SAND_BOX:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants;->SAND_BOX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants;->SAND_B0X_ROOT:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants;->SAND_B0X_ROOT:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "sandbox.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants;->SAND_B0X_DB_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
