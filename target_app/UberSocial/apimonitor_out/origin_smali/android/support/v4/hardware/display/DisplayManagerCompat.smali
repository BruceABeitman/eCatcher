.class public abstract Landroid/support/v4/hardware/display/DisplayManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DISPLAY_CATEGORY_PRESENTATION:Ljava/lang/String; = "android.hardware.display.category.PRESENTATION"

.field private static final sInstances:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/support/v4/hardware/display/DisplayManagerCompat;->sInstances:Ljava/util/WeakHashMap;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/support/v4/hardware/display/DisplayManagerCompat;
    .registers 4

    sget-object v1, Landroid/support/v4/hardware/display/DisplayManagerCompat;->sInstances:Ljava/util/WeakHashMap;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/support/v4/hardware/display/DisplayManagerCompat;->sInstances:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/hardware/display/DisplayManagerCompat;

    if-nez v0, :cond_1d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_1f

    new-instance v0, Landroid/support/v4/hardware/display/DisplayManagerCompat$JellybeanMr1Impl;

    invoke-direct {v0, p0}, Landroid/support/v4/hardware/display/DisplayManagerCompat$JellybeanMr1Impl;-><init>(Landroid/content/Context;)V

    :goto_18
    sget-object v2, Landroid/support/v4/hardware/display/DisplayManagerCompat;->sInstances:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    monitor-exit v1

    return-object v0

    :cond_1f
    new-instance v0, Landroid/support/v4/hardware/display/DisplayManagerCompat$LegacyImpl;

    invoke-direct {v0, p0}, Landroid/support/v4/hardware/display/DisplayManagerCompat$LegacyImpl;-><init>(Landroid/content/Context;)V

    goto :goto_18

    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v0
.end method


# virtual methods
.method public abstract getDisplay(I)Landroid/view/Display;
.end method

.method public abstract getDisplays()[Landroid/view/Display;
.end method

.method public abstract getDisplays(Ljava/lang/String;)[Landroid/view/Display;
.end method
