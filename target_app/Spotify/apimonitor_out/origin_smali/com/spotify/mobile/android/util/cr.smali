.class public final Lcom/spotify/mobile/android/util/cr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/util/cn;


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p5, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/spotify/mobile/android/util/cr;->a:J

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/spotify/mobile/android/util/cr;->b:J

    return-void
.end method


# virtual methods
.method public final a(I)J
    .registers 10

    iget-wide v0, p0, Lcom/spotify/mobile/android/util/cr;->a:J

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/spotify/mobile/android/util/cr;->b:J

    iget-wide v6, p0, Lcom/spotify/mobile/android/util/cr;->a:J

    sub-long/2addr v4, v6

    long-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method
