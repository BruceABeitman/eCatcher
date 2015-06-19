.class public Lus/pinguo/androidsdk/pgedit/PGEditConstants;
.super Ljava/lang/Object;
.source "PGEditConstants.java"


# static fields
.field static final BOTTOM_ICON_SIZE:I = 0x2a

.field static final EDIT_CACHE_NAME:Ljava/lang/String; = "pgEditCache"

.field public static EDIT_FINISH_BROADCAST:Ljava/lang/String; = null

.field static final ENTRY_TYPE:Ljava/lang/String; = "entry_type"

.field static final ENTRY_TYPE_FOR_CAMERA360:I = 0x1

.field static final ENTRY_TYPE_FOR_NORMAL:I = 0x0

.field static final INDEX:Ljava/lang/String; = "index"

.field static final IS_CAMERA360:Ljava/lang/String; = "is_camera360"

.field static final IS_SHOW_ORG:Ljava/lang/String; = "is_show_org"

.field static final LEAST_SHOW_WIDTH:I = 0xa

.field static final MAIN_LAYOUT:Ljava/lang/String; = "pg_sdk_edit_main"

.field static final ORG_PATH:Ljava/lang/String; = "org_path"

.field static final ORG_TEXT_TOP_MARGIN_PHOTO:I = 0x5

.field static final PG_SDK_EDIT_FIRST_MENU:Ljava/lang/String; = "pg_sdk_edit_first_menu"

.field static final PG_SDK_EFFECT_PREFIX:Ljava/lang/String; = "Effect="

.field static final PHOTO_MARGIN_LEFT_RIGHT:I = 0xa

.field static final PHOTO_MARGIN_TOP_BOTTOM:I = 0xe

.field static final PHOTO_PATH:Ljava/lang/String; = "photo_path"

.field static final PHOTO_QUALITY:I = 0x64

.field static final PHOTO_QUALITY_FOR_SAVE:I = 0x5f

.field static final REPLACE_LEFT_PART_WIDTH:I = 0x14

.field static final REPLACE_MARGING_RIGHT:I = 0x1a

.field static final SCREEN_BOTTOM:I = 0x51

.field static final SCREEN_TOP:I = 0x32

.field static final SHARE_PATH:Ljava/lang/String; = "share_path"

.field static final SHOW_LOG:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "us.pinguo.androidsdk.edit.Finish"

    sput-object v0, Lus/pinguo/androidsdk/pgedit/PGEditConstants;->EDIT_FINISH_BROADCAST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
