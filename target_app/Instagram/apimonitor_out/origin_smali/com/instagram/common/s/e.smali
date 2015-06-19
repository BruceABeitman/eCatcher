.class final Lcom/instagram/common/s/e;
.super Ljava/lang/Object;
.source "RageSensorEventListener.java"


# instance fields
.field a:F

.field b:J


# direct methods
.method constructor <init>(Landroid/hardware/SensorEvent;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/instagram/common/s/e;->a(Landroid/hardware/SensorEvent;)V

    return-void
.end method


# virtual methods
.method final a(Landroid/hardware/SensorEvent;)V
    .registers 4

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/instagram/common/s/e;->a:F

    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/instagram/common/s/e;->b:J

    return-void
.end method
