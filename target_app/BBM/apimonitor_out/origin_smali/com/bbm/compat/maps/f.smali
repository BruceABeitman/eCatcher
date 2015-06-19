.class final Lcom/bbm/compat/maps/f;
.super Ljava/lang/Object;
.source "GoogleMapView.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/compat/maps/GoogleMapView;


# direct methods
.method constructor <init>(Lcom/bbm/compat/maps/GoogleMapView;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/compat/maps/f;->a:Lcom/bbm/compat/maps/GoogleMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .registers 3

    iget-object v0, p0, Lcom/bbm/compat/maps/f;->a:Lcom/bbm/compat/maps/GoogleMapView;

    invoke-static {v0}, Lcom/bbm/compat/maps/GoogleMapView;->a(Lcom/bbm/compat/maps/GoogleMapView;)Lcom/bbm/compat/maps/e;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bbm/compat/maps/f;->a:Lcom/bbm/compat/maps/GoogleMapView;

    invoke-static {v0}, Lcom/bbm/compat/maps/GoogleMapView;->a(Lcom/bbm/compat/maps/GoogleMapView;)Lcom/bbm/compat/maps/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bbm/compat/maps/e;->onMarkerClick(Ljava/lang/Object;)Z

    :cond_11
    const/4 v0, 0x1

    return v0
.end method
