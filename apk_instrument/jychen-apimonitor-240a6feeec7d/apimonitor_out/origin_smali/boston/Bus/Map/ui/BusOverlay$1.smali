.class Lboston/Bus/Map/ui/BusOverlay$1;
.super Ljava/lang/Object;
.source "BusOverlay.java"

# interfaces
.implements Lcom/google/android/maps/ItemizedOverlay$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lboston/Bus/Map/ui/BusOverlay;-><init>(Landroid/graphics/drawable/Drawable;Lboston/Bus/Map/main/Main;Lcom/google/android/maps/MapView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lboston/Bus/Map/ui/BusOverlay;


# direct methods
.method constructor <init>(Lboston/Bus/Map/ui/BusOverlay;)V
    .registers 2

    iput-object p1, p0, Lboston/Bus/Map/ui/BusOverlay$1;->this$0:Lboston/Bus/Map/ui/BusOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChanged(Lcom/google/android/maps/ItemizedOverlay;Lcom/google/android/maps/OverlayItem;)V
    .registers 11

    const v7, 0x7f020010

    iget-object v4, p0, Lboston/Bus/Map/ui/BusOverlay$1;->this$0:Lboston/Bus/Map/ui/BusOverlay;

    const/4 v5, -0x1

    #calls: Lboston/Bus/Map/ui/BusOverlay;->setLastFocusedIndex(I)V
    invoke-static {v4, v5}, Lboston/Bus/Map/ui/BusOverlay;->access$000(Lboston/Bus/Map/ui/BusOverlay;I)V

    iget-object v4, p0, Lboston/Bus/Map/ui/BusOverlay$1;->this$0:Lboston/Bus/Map/ui/BusOverlay;

    invoke-virtual {v4, p2}, Lboston/Bus/Map/ui/BusOverlay;->setFocus(Lcom/google/android/maps/OverlayItem;)V

    if-nez p2, :cond_1f

    iget-object v4, p0, Lboston/Bus/Map/ui/BusOverlay$1;->this$0:Lboston/Bus/Map/ui/BusOverlay;

    #calls: Lboston/Bus/Map/ui/BusOverlay;->hideBalloon()V
    invoke-static {v4}, Lboston/Bus/Map/ui/BusOverlay;->access$100(Lboston/Bus/Map/ui/BusOverlay;)V

    iget-object v4, p0, Lboston/Bus/Map/ui/BusOverlay$1;->this$0:Lboston/Bus/Map/ui/BusOverlay;

    #getter for: Lboston/Bus/Map/ui/BusOverlay;->context:Lboston/Bus/Map/main/Main;
    invoke-static {v4}, Lboston/Bus/Map/ui/BusOverlay;->access$200(Lboston/Bus/Map/ui/BusOverlay;)Lboston/Bus/Map/main/Main;

    move-result-object v4

    invoke-virtual {v4, v7}, Lboston/Bus/Map/main/Main;->setFavoriteStatus(I)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    iget-object v4, p0, Lboston/Bus/Map/ui/BusOverlay$1;->this$0:Lboston/Bus/Map/ui/BusOverlay;

    invoke-virtual {v4}, Lboston/Bus/Map/ui/BusOverlay;->getLastFocusedIndex()I

    move-result v2

    iget-object v4, p0, Lboston/Bus/Map/ui/BusOverlay$1;->this$0:Lboston/Bus/Map/ui/BusOverlay;

    #getter for: Lboston/Bus/Map/ui/BusOverlay;->context:Lboston/Bus/Map/main/Main;
    invoke-static {v4}, Lboston/Bus/Map/ui/BusOverlay;->access$200(Lboston/Bus/Map/ui/BusOverlay;)Lboston/Bus/Map/main/Main;

    move-result-object v1

    iget-object v4, p0, Lboston/Bus/Map/ui/BusOverlay$1;->this$0:Lboston/Bus/Map/ui/BusOverlay;

    #getter for: Lboston/Bus/Map/ui/BusOverlay;->locations:Ljava/util/List;
    invoke-static {v4}, Lboston/Bus/Map/ui/BusOverlay;->access$300(Lboston/Bus/Map/ui/BusOverlay;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lboston/Bus/Map/data/Location;

    if-eqz v1, :cond_1e

    invoke-interface {v3}, Lboston/Bus/Map/data/Location;->isFavorite()Z

    move-result v0

    const-string v4, "BostonBusMap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting favorite status, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_5e

    const v4, 0x7f020011

    :goto_5a
    invoke-virtual {v1, v4}, Lboston/Bus/Map/main/Main;->setFavoriteStatus(I)V

    goto :goto_1e

    :cond_5e
    move v4, v7

    goto :goto_5a
.end method
