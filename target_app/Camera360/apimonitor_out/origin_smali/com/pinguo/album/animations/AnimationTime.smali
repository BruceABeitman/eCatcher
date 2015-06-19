.class public Lcom/pinguo/album/animations/AnimationTime;
.super Ljava/lang/Object;
.source "AnimationTime.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AnimationTime"

.field private static volatile sTime:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()J
    .registers 2

    sget-wide v0, Lcom/pinguo/album/animations/AnimationTime;->sTime:J

    return-wide v0
.end method

.method public static startTime()J
    .registers 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/pinguo/album/animations/AnimationTime;->sTime:J

    sget-wide v0, Lcom/pinguo/album/animations/AnimationTime;->sTime:J

    return-wide v0
.end method

.method public static update()V
    .registers 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/pinguo/album/animations/AnimationTime;->sTime:J

    return-void
.end method
