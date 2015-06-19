.class final Lcom/mapquest/android/maps/as;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Landroid/widget/ZoomButtonsController$OnZoomListener;


# instance fields
.field final synthetic a:Lcom/mapquest/android/maps/MapView;


# direct methods
.method constructor <init>(Lcom/mapquest/android/maps/MapView;)V
    .registers 2

    iput-object p1, p0, Lcom/mapquest/android/maps/as;->a:Lcom/mapquest/android/maps/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVisibilityChanged(Z)V
    .registers 2

    return-void
.end method

.method public final onZoom(Z)V
    .registers 3

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/mapquest/android/maps/as;->a:Lcom/mapquest/android/maps/MapView;

    invoke-static {v0}, Lcom/mapquest/android/maps/MapView;->a(Lcom/mapquest/android/maps/MapView;)Lcom/mapquest/android/maps/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapquest/android/maps/al;->a()Z

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/mapquest/android/maps/as;->a:Lcom/mapquest/android/maps/MapView;

    invoke-static {v0}, Lcom/mapquest/android/maps/MapView;->a(Lcom/mapquest/android/maps/MapView;)Lcom/mapquest/android/maps/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapquest/android/maps/al;->b()Z

    goto :goto_b
.end method
