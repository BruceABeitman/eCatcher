.class public Lboston/Bus/Map/main/CurrentState;
.super Ljava/lang/Object;
.source "CurrentState.java"


# instance fields
.field private final busLocations:Lboston/Bus/Map/data/Locations;

.field private final busOverlay:Lboston/Bus/Map/ui/BusOverlay;

.field private final lastUpdateTime:D

.field private final majorHandler:Lboston/Bus/Map/main/UpdateAsyncTask;

.field private final myLocationOverlay:Lboston/Bus/Map/ui/LocationOverlay;

.field private final routeOverlay:Lboston/Bus/Map/ui/RouteOverlay;

.field private selectedBusPredictions:I

.field private selectedRouteIndex:I

.field private final textViewStatus:Ljava/lang/CharSequence;

.field private final updateConstantly:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Lboston/Bus/Map/data/Locations;DZIILboston/Bus/Map/ui/BusOverlay;Lboston/Bus/Map/ui/RouteOverlay;Lboston/Bus/Map/ui/LocationOverlay;Lboston/Bus/Map/main/UpdateAsyncTask;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1c

    const-string v0, ""

    iput-object v0, p0, Lboston/Bus/Map/main/CurrentState;->textViewStatus:Ljava/lang/CharSequence;

    :goto_9
    iput-object p2, p0, Lboston/Bus/Map/main/CurrentState;->busLocations:Lboston/Bus/Map/data/Locations;

    iput-wide p3, p0, Lboston/Bus/Map/main/CurrentState;->lastUpdateTime:D

    iput-boolean p5, p0, Lboston/Bus/Map/main/CurrentState;->updateConstantly:Z

    iput p6, p0, Lboston/Bus/Map/main/CurrentState;->selectedRouteIndex:I

    iput p7, p0, Lboston/Bus/Map/main/CurrentState;->selectedBusPredictions:I

    iput-object p8, p0, Lboston/Bus/Map/main/CurrentState;->busOverlay:Lboston/Bus/Map/ui/BusOverlay;

    iput-object p9, p0, Lboston/Bus/Map/main/CurrentState;->routeOverlay:Lboston/Bus/Map/ui/RouteOverlay;

    iput-object p10, p0, Lboston/Bus/Map/main/CurrentState;->myLocationOverlay:Lboston/Bus/Map/ui/LocationOverlay;

    iput-object p11, p0, Lboston/Bus/Map/main/CurrentState;->majorHandler:Lboston/Bus/Map/main/UpdateAsyncTask;

    return-void

    :cond_1c
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lboston/Bus/Map/main/CurrentState;->textViewStatus:Ljava/lang/CharSequence;

    goto :goto_9
.end method


# virtual methods
.method public cloneBusOverlay(Lboston/Bus/Map/main/Main;Lcom/google/android/maps/MapView;)Lboston/Bus/Map/ui/BusOverlay;
    .registers 5

    new-instance v0, Lboston/Bus/Map/ui/BusOverlay;

    iget-object v1, p0, Lboston/Bus/Map/main/CurrentState;->busOverlay:Lboston/Bus/Map/ui/BusOverlay;

    invoke-direct {v0, v1, p1, p2}, Lboston/Bus/Map/ui/BusOverlay;-><init>(Lboston/Bus/Map/ui/BusOverlay;Lboston/Bus/Map/main/Main;Lcom/google/android/maps/MapView;)V

    return-object v0
.end method

.method public cloneLocationOverlay(Landroid/content/Context;Lcom/google/android/maps/MapView;)Lboston/Bus/Map/ui/LocationOverlay;
    .registers 4

    iget-object v0, p0, Lboston/Bus/Map/main/CurrentState;->myLocationOverlay:Lboston/Bus/Map/ui/LocationOverlay;

    return-object v0
.end method

.method public cloneRouteOverlay(Lcom/google/android/maps/Projection;)Lboston/Bus/Map/ui/RouteOverlay;
    .registers 4

    new-instance v0, Lboston/Bus/Map/ui/RouteOverlay;

    iget-object v1, p0, Lboston/Bus/Map/main/CurrentState;->routeOverlay:Lboston/Bus/Map/ui/RouteOverlay;

    invoke-direct {v0, v1, p1}, Lboston/Bus/Map/ui/RouteOverlay;-><init>(Lboston/Bus/Map/ui/RouteOverlay;Lcom/google/android/maps/Projection;)V

    return-object v0
.end method

.method public getBusLocations()Lboston/Bus/Map/data/Locations;
    .registers 2

    iget-object v0, p0, Lboston/Bus/Map/main/CurrentState;->busLocations:Lboston/Bus/Map/data/Locations;

    return-object v0
.end method

.method public getBusOverlay()Lboston/Bus/Map/ui/BusOverlay;
    .registers 2

    iget-object v0, p0, Lboston/Bus/Map/main/CurrentState;->busOverlay:Lboston/Bus/Map/ui/BusOverlay;

    return-object v0
.end method

.method public getLastUpdateTime()D
    .registers 3

    iget-wide v0, p0, Lboston/Bus/Map/main/CurrentState;->lastUpdateTime:D

    return-wide v0
.end method

.method public getMajorHandler()Lboston/Bus/Map/main/UpdateAsyncTask;
    .registers 2

    iget-object v0, p0, Lboston/Bus/Map/main/CurrentState;->majorHandler:Lboston/Bus/Map/main/UpdateAsyncTask;

    return-object v0
.end method

.method public getSelectedBusPredictions()I
    .registers 2

    iget v0, p0, Lboston/Bus/Map/main/CurrentState;->selectedBusPredictions:I

    return v0
.end method

.method public getSelectedRouteIndex()I
    .registers 2

    iget v0, p0, Lboston/Bus/Map/main/CurrentState;->selectedRouteIndex:I

    return v0
.end method

.method public getUpdateConstantly()Z
    .registers 2

    iget-boolean v0, p0, Lboston/Bus/Map/main/CurrentState;->updateConstantly:Z

    return v0
.end method

.method public restoreWidgets(Landroid/widget/TextView;)V
    .registers 3

    if-eqz p1, :cond_f

    iget-object v0, p0, Lboston/Bus/Map/main/CurrentState;->textViewStatus:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lboston/Bus/Map/main/CurrentState;->textViewStatus:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    return-void
.end method
