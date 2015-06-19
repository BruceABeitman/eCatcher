.class public final Lcom/google/android/gms/h;
.super Ljava/lang/Object;
.source "SourceFile"
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
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x3
new-array v0, v0, [I
fill-array-data v0, :array_12
sput-object v0, Lcom/google/android/gms/h;->AdsAttrs:[I
const/16 v0, 0xe
new-array v0, v0, [I
fill-array-data v0, :array_1c
sput-object v0, Lcom/google/android/gms/h;->MapAttrs:[I
return-void
:array_1c
.array-data 0x4
0x68t 0x0t 0x1t 0x7ft
0x69t 0x0t 0x1t 0x7ft
0x6at 0x0t 0x1t 0x7ft
0x6bt 0x0t 0x1t 0x7ft
0x6ct 0x0t 0x1t 0x7ft
0x6dt 0x0t 0x1t 0x7ft
0x6et 0x0t 0x1t 0x7ft
0x6ft 0x0t 0x1t 0x7ft
0x70t 0x0t 0x1t 0x7ft
0x71t 0x0t 0x1t 0x7ft
0x72t 0x0t 0x1t 0x7ft
0x73t 0x0t 0x1t 0x7ft
0x74t 0x0t 0x1t 0x7ft
0x75t 0x0t 0x1t 0x7ft
.end array-data
:array_12
.array-data 0x4
0x5at 0x0t 0x1t 0x7ft
0x5bt 0x0t 0x1t 0x7ft
0x5ct 0x0t 0x1t 0x7ft
.end array-data
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method