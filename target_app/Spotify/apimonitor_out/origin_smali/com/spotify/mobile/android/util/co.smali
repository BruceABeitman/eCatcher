.class public final Lcom/spotify/mobile/android/util/co;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/util/cn;


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/spotify/mobile/android/util/co;->a:J

    return-void
.end method


# virtual methods
.method public final a(I)J
    .registers 10

    iget-wide v0, p0, Lcom/spotify/mobile/android/util/co;->a:J

    shl-long v2, v0, p1

    long-to-double v0, v2

    const-wide v4, 0x3fd5555555555555L

    mul-double/2addr v0, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v0, v4

    double-to-long v0, v0

    const-wide/16 v4, 0x2

    rem-long v4, v0, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1c

    neg-long v0, v0

    :cond_1c
    add-long/2addr v0, v2

    return-wide v0
.end method
