.class Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$PauseState;
.super Ljava/lang/Object;
.source "PGAntiShake.java"

# interfaces
.implements Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$ModeAntiShakeState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PauseState"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$PauseState;)V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$PauseState;-><init>()V

    return-void
.end method


# virtual methods
.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 2

    return-void
.end method
