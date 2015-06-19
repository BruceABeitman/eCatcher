.class final Lcom/mapquest/android/maps/e;
.super Ljava/lang/Object;
.source "DefaultTrackBallHandler.java"


# instance fields
.field a:Lcom/mapquest/android/maps/MapView;

.field b:Z


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/MapView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/e;->b:Z

    iput-object p1, p0, Lcom/mapquest/android/maps/e;->a:Lcom/mapquest/android/maps/MapView;

    return-void
.end method
