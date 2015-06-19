.class public Lboston/Bus/Map/data/Prediction;
.super Ljava/lang/Object;
.source "Prediction.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lboston/Bus/Map/data/Prediction;",
        ">;"
    }
.end annotation


# instance fields
.field private final directionToShow:Ljava/lang/String;

.field private final epochTime:J

.field private final minutes:I

.field private final routeConfig:Lboston/Bus/Map/data/RouteConfig;

.field private final vehicleId:I


# direct methods
.method public constructor <init>(IJILjava/lang/String;Lboston/Bus/Map/data/RouteConfig;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lboston/Bus/Map/data/Prediction;->minutes:I

    iput-wide p2, p0, Lboston/Bus/Map/data/Prediction;->epochTime:J

    iput p4, p0, Lboston/Bus/Map/data/Prediction;->vehicleId:I

    iput-object p5, p0, Lboston/Bus/Map/data/Prediction;->directionToShow:Ljava/lang/String;

    iput-object p6, p0, Lboston/Bus/Map/data/Prediction;->routeConfig:Lboston/Bus/Map/data/RouteConfig;

    return-void
.end method


# virtual methods
.method public compareTo(Lboston/Bus/Map/data/Prediction;)I
    .registers 4

    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lboston/Bus/Map/data/Prediction;->minutes:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iget v1, p1, Lboston/Bus/Map/data/Prediction;->minutes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lboston/Bus/Map/data/Prediction;

    invoke-virtual {p0, p1}, Lboston/Bus/Map/data/Prediction;->compareTo(Lboston/Bus/Map/data/Prediction;)I

    move-result v0

    return v0
.end method

.method public getRoute()Lboston/Bus/Map/data/RouteConfig;
    .registers 2

    iget-object v0, p0, Lboston/Bus/Map/data/Prediction;->routeConfig:Lboston/Bus/Map/data/RouteConfig;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget v1, p0, Lboston/Bus/Map/data/Prediction;->minutes:I

    if-gez v1, :cond_7

    const-string v1, ""

    :goto_6
    return-object v1

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lboston/Bus/Map/data/Prediction;->vehicleId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Route "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lboston/Bus/Map/data/Prediction;->routeConfig:Lboston/Bus/Map/data/RouteConfig;

    invoke-virtual {v2}, Lboston/Bus/Map/data/RouteConfig;->getRouteName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lboston/Bus/Map/data/Prediction;->directionToShow:Ljava/lang/String;

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lboston/Bus/Map/data/Prediction;->directionToShow:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lboston/Bus/Map/data/Prediction;->directionToShow:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5e
    iget v1, p0, Lboston/Bus/Map/data/Prediction;->minutes:I

    if-nez v1, :cond_76

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\narriving now!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\narriving in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lboston/Bus/Map/data/Prediction;->minutes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " min"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_6
.end method
