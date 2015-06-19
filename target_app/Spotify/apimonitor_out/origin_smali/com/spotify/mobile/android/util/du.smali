.class public final Lcom/spotify/mobile/android/util/du;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/spotify/mobile/android/util/du;->a:J

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/spotify/mobile/android/util/du;->a:J

    sub-long v2, v0, v2

    iput-wide v0, p0, Lcom/spotify/mobile/android/util/du;->a:J

    return-wide v2
.end method
