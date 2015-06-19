.class public final Lcom/google/android/gms/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AdsAttrs:[I = null

.field public static final AdsAttrs_adSize:I = 0x0

.field public static final AdsAttrs_adSizes:I = 0x1

.field public static final AdsAttrs_adUnitId:I = 0x2

.field public static final MapAttrs:[I = null

.field public static final MapAttrs_cameraBearing:I = 0x1

.field public static final MapAttrs_cameraTargetLat:I = 0x2

.field public static final MapAttrs_cameraTargetLng:I = 0x3

.field public static final MapAttrs_cameraTilt:I = 0x4

.field public static final MapAttrs_cameraZoom:I = 0x5

.field public static final MapAttrs_mapType:I = 0x0

.field public static final MapAttrs_uiCompass:I = 0x6

.field public static final MapAttrs_uiRotateGestures:I = 0x7

.field public static final MapAttrs_uiScrollGestures:I = 0x8

.field public static final MapAttrs_uiTiltGestures:I = 0x9

.field public static final MapAttrs_uiZoomControls:I = 0xa

.field public static final MapAttrs_uiZoomGestures:I = 0xb

.field public static final MapAttrs_useViewLifecycle:I = 0xc

.field public static final MapAttrs_zOrderOnTop:I = 0xd

.field public static final WalletFragmentOptions:[I = null

.field public static final WalletFragmentOptions_environment:I = 0x1

.field public static final WalletFragmentOptions_fragmentMode:I = 0x3

.field public static final WalletFragmentOptions_fragmentStyle:I = 0x2

.field public static final WalletFragmentOptions_theme:I = 0x0

.field public static final WalletFragmentStyle:[I = null

.field public static final WalletFragmentStyle_buyButtonAppearance:I = 0x3

.field public static final WalletFragmentStyle_buyButtonHeight:I = 0x0

.field public static final WalletFragmentStyle_buyButtonText:I = 0x2

.field public static final WalletFragmentStyle_buyButtonWidth:I = 0x1

.field public static final WalletFragmentStyle_maskedWalletDetailsBackground:I = 0x6

.field public static final WalletFragmentStyle_maskedWalletDetailsButtonBackground:I = 0x8

.field public static final WalletFragmentStyle_maskedWalletDetailsButtonTextAppearance:I = 0x7

.field public static final WalletFragmentStyle_maskedWalletDetailsHeaderTextAppearance:I = 0x5

.field public static final WalletFragmentStyle_maskedWalletDetailsLogoImageType:I = 0xa

.field public static final WalletFragmentStyle_maskedWalletDetailsLogoTextColor:I = 0x9

.field public static final WalletFragmentStyle_maskedWalletDetailsTextAppearance:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_24

    sput-object v0, Lcom/google/android/gms/R$styleable;->AdsAttrs:[I

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/google/android/gms/R$styleable;->MapAttrs:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_4e

    sput-object v0, Lcom/google/android/gms/R$styleable;->WalletFragmentOptions:[I

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_5a

    sput-object v0, Lcom/google/android/gms/R$styleable;->WalletFragmentStyle:[I

    return-void

    nop

    :array_24
    .array-data 0x4
        0x62t 0x0t 0x1t 0x7ft
        0x63t 0x0t 0x1t 0x7ft
        0x64t 0x0t 0x1t 0x7ft
    .end array-data

    :array_2e
    .array-data 0x4
        0x8bt 0x0t 0x1t 0x7ft
        0x8ct 0x0t 0x1t 0x7ft
        0x8dt 0x0t 0x1t 0x7ft
        0x8et 0x0t 0x1t 0x7ft
        0x8ft 0x0t 0x1t 0x7ft
        0x90t 0x0t 0x1t 0x7ft
        0x91t 0x0t 0x1t 0x7ft
        0x92t 0x0t 0x1t 0x7ft
        0x93t 0x0t 0x1t 0x7ft
        0x94t 0x0t 0x1t 0x7ft
        0x95t 0x0t 0x1t 0x7ft
        0x96t 0x0t 0x1t 0x7ft
        0x97t 0x0t 0x1t 0x7ft
        0x98t 0x0t 0x1t 0x7ft
    .end array-data

    :array_4e
    .array-data 0x4
        0xd0t 0x0t 0x1t 0x7ft
        0xd1t 0x0t 0x1t 0x7ft
        0xd2t 0x0t 0x1t 0x7ft
        0xd3t 0x0t 0x1t 0x7ft
    .end array-data

    :array_5a
    .array-data 0x4
        0xd4t 0x0t 0x1t 0x7ft
        0xd5t 0x0t 0x1t 0x7ft
        0xd6t 0x0t 0x1t 0x7ft
        0xd7t 0x0t 0x1t 0x7ft
        0xd8t 0x0t 0x1t 0x7ft
        0xd9t 0x0t 0x1t 0x7ft
        0xdat 0x0t 0x1t 0x7ft
        0xdbt 0x0t 0x1t 0x7ft
        0xdct 0x0t 0x1t 0x7ft
        0xddt 0x0t 0x1t 0x7ft
        0xdet 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
