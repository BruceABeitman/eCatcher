.class public Lch/boye/httpclientandroidlib/client/cache/InputLimit;
.super Ljava/lang/Object;
.source "InputLimit.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private reached:Z

.field private final value:J


# direct methods
.method public constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lch/boye/httpclientandroidlib/client/cache/InputLimit;->value:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/client/cache/InputLimit;->reached:Z

    return-void
.end method


# virtual methods
.method public getValue()J
    .registers 3

    iget-wide v0, p0, Lch/boye/httpclientandroidlib/client/cache/InputLimit;->value:J

    return-wide v0
.end method

.method public isReached()Z
    .registers 2

    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/client/cache/InputLimit;->reached:Z

    return v0
.end method

.method public reached()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/client/cache/InputLimit;->reached:Z

    return-void
.end method
