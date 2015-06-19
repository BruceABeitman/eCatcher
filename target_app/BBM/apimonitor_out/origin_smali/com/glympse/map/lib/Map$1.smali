.class Lcom/glympse/map/lib/Map$1;
.super Ljava/lang/Object;
.source "Map.java"

# interfaces
.implements Lcom/bbm/compat/maps/e;


# instance fields
.field final synthetic this$0:Lcom/glympse/map/lib/Map;


# direct methods
.method constructor <init>(Lcom/glympse/map/lib/Map;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/map/lib/Map$1;->this$0:Lcom/glympse/map/lib/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerClick(Ljava/lang/Object;)Z
    .registers 3

    sget v0, Lcom/glympse/map/lib/Map;->flags:I

    or-int/lit8 v0, v0, 0x0

    sput v0, Lcom/glympse/map/lib/Map;->flags:I

    iget-object v0, p0, Lcom/glympse/map/lib/Map$1;->this$0:Lcom/glympse/map/lib/Map;

    #getter for: Lcom/glympse/map/lib/Map;->_worldView:Lcom/glympse/map/lib/WorldView;
    invoke-static {v0}, Lcom/glympse/map/lib/Map;->access$000(Lcom/glympse/map/lib/Map;)Lcom/glympse/map/lib/WorldView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/glympse/map/lib/WorldView;->startFollowing(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method
