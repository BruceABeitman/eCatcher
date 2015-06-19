.class public Lboston/Bus/Map/util/RouteComparator;
.super Ljava/lang/Object;
.source "RouteComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lboston/Bus/Map/data/RouteConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lboston/Bus/Map/data/RouteConfig;Lboston/Bus/Map/data/RouteConfig;)I
    .registers 5

    invoke-virtual {p1}, Lboston/Bus/Map/data/RouteConfig;->getRouteName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lboston/Bus/Map/data/RouteConfig;->getRouteName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lboston/Bus/Map/data/RouteConfig;

    check-cast p2, Lboston/Bus/Map/data/RouteConfig;

    invoke-virtual {p0, p1, p2}, Lboston/Bus/Map/util/RouteComparator;->compare(Lboston/Bus/Map/data/RouteConfig;Lboston/Bus/Map/data/RouteConfig;)I

    move-result v0

    return v0
.end method
