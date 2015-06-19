.class public Lboston/Bus/Map/transit/TransitSystem;
.super Ljava/lang/Object;
.source "TransitSystem.java"
.field private static final bostonLatitude:D = 42.3583333
.field private static final bostonLongitude:D = -71.0602778
.field private static final mbtaLocationsDataUrl:Ljava/lang/String; = "http://webservices.nextbus.com/service/publicXMLFeed?command=vehicleLocations&a=mbta&t="
.field private static final mbtaPredictionsDataUrl:Ljava/lang/String; = "http://webservices.nextbus.com/service/publicXMLFeed?command=predictionsForMultiStops&a=mbta"
.field private static final mbtaRouteConfigDataUrl:Ljava/lang/String; = "http://webservices.nextbus.com/service/publicXMLFeed?command=routeConfig&a=mbta&r="
.field private static final mbtaRouteConfigDataUrlAllRoutes:Ljava/lang/String; = "http://webservices.nextbus.com/service/publicXMLFeed?command=routeConfig&a=mbta"
.field private static final website:Ljava/lang/String; = "http://www.terribleinformation.org/george/bostonbusmap"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static bindPredictionElementsForUrl(Ljava/lang/StringBuilder;Lboston/Bus/Map/data/RouteConfig;Ljava/lang/String;)V
.registers 5
const-string v0, "&stops="
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p1}, Lboston/Bus/Map/data/RouteConfig;->getRouteName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "%7C%7C"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
return-void
.end method
.method public static getCenterLat()D
.registers 2
const-wide v0, 0x40452ddddd9648acL
return-wide v0
.end method
.method public static getCenterLatAsInt()I
.registers 1
const v0, 0x286563d
return v0
.end method
.method public static getCenterLon()D
.registers 2
const-wide v0, -0x3fae3c24689514d0L
return-wide v0
.end method
.method public static getCenterLonAsInt()I
.registers 1
const v0, -0x43c4b35
return v0
.end method
.method public static getPredictionsUrl(Ljava/util/List;ILboston/Bus/Map/data/RouteConfig;)Ljava/lang/String;
.registers 11
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "http://webservices.nextbus.com/service/publicXMLFeed?command=predictionsForMultiStops&a=mbta"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_b
:cond_b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_23
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lboston/Bus/Map/data/Location;
instance-of v5, v2, Lboston/Bus/Map/data/StopLocation;
if-eqz v5, :cond_b
move-object v0, v2
check-cast v0, Lboston/Bus/Map/data/StopLocation;
move-object v3, v0
invoke-virtual {v3, v4, p2}, Lboston/Bus/Map/data/StopLocation;->createPredictionsUrl(Ljava/lang/StringBuilder;Lboston/Bus/Map/data/RouteConfig;)V
goto :goto_b
:cond_23
const-string v5, "BostonBusMap"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "urlString for bus predictions, all: "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
return-object v5
.end method
.method public static getRouteConfigUrl()Ljava/lang/String;
.registers 1
const/4 v0, 0x0
invoke-static {v0}, Lboston/Bus/Map/transit/TransitSystem;->getRouteConfigUrl(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getRouteConfigUrl(Ljava/lang/String;)Ljava/lang/String;
.registers 3
if-nez p0, :cond_5
const-string v0, "http://webservices.nextbus.com/service/publicXMLFeed?command=routeConfig&a=mbta"
:goto_4
return-object v0
:cond_5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "http://webservices.nextbus.com/service/publicXMLFeed?command=routeConfig&a=mbta&r="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_4
.end method
.method public static getSizeOfRouteConfigUrl()Ljava/lang/String;
.registers 1
const-string v0, "7.5MB"
return-object v0
.end method
.method public static getVehicleLocationsUrl(J)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "http://webservices.nextbus.com/service/publicXMLFeed?command=vehicleLocations&a=mbta&t="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getWebSite()Ljava/lang/String;
.registers 1
const-string v0, "http://www.terribleinformation.org/george/bostonbusmap"
return-object v0
.end method