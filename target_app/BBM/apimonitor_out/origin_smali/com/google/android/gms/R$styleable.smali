.class public final Lcom/google/android/gms/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/google/android/gms/R$styleable;->AdsAttrs:[I

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/google/android/gms/R$styleable;->MapAttrs:[I

    return-void

    :array_12
    .array-data 0x4
        0xct 0x0t 0x1t 0x7ft
        0xdt 0x0t 0x1t 0x7ft
        0xet 0x0t 0x1t 0x7ft
    .end array-data

    :array_1c
    .array-data 0x4
        0x39t 0x0t 0x1t 0x7ft
        0x3at 0x0t 0x1t 0x7ft
        0x3bt 0x0t 0x1t 0x7ft
        0x3ct 0x0t 0x1t 0x7ft
        0x3dt 0x0t 0x1t 0x7ft
        0x3et 0x0t 0x1t 0x7ft
        0x3ft 0x0t 0x1t 0x7ft
        0x40t 0x0t 0x1t 0x7ft
        0x41t 0x0t 0x1t 0x7ft
        0x42t 0x0t 0x1t 0x7ft
        0x43t 0x0t 0x1t 0x7ft
        0x44t 0x0t 0x1t 0x7ft
        0x45t 0x0t 0x1t 0x7ft
        0x46t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
