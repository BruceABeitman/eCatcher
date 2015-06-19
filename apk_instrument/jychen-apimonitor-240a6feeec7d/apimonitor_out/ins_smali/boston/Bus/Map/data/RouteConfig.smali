.class public Lboston/Bus/Map/data/RouteConfig;
.super Ljava/lang/Object;
.source "RouteConfig.java"
.implements Lboston/Bus/Map/util/CanBeSerialized;
.field private final directionNames:Ljava/util/HashMap;
.field private final directionTitles:Ljava/util/HashMap;
.field private final paths:Ljava/util/TreeMap;
.field private final route:Ljava/lang/String;
.field private final stops:Ljava/util/HashMap;
.method public constructor <init>(Lboston/Bus/Map/util/Box;Landroid/graphics/drawable/Drawable;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lboston/Bus/Map/data/RouteConfig;->stops:Ljava/util/HashMap;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lboston/Bus/Map/data/RouteConfig;->directionTitles:Ljava/util/HashMap;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lboston/Bus/Map/data/RouteConfig;->directionNames:Ljava/util/HashMap;
new-instance v0, Ljava/util/TreeMap;
invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V
iput-object v0, p0, Lboston/Bus/Map/data/RouteConfig;->paths:Ljava/util/TreeMap;
invoke-virtual {p1}, Lboston/Bus/Map/util/Box;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lboston/Bus/Map/data/RouteConfig;->route:Ljava/lang/String;
iget-object v0, p0, Lboston/Bus/Map/data/RouteConfig;->directionTitles:Ljava/util/HashMap;
invoke-virtual {p1, v0}, Lboston/Bus/Map/util/Box;->readStringMap(Ljava/util/Map;)V
iget-object v0, p0, Lboston/Bus/Map/data/RouteConfig;->directionNames:Ljava/util/HashMap;
invoke-virtual {p1, v0}, Lboston/Bus/Map/util/Box;->readStringMap(Ljava/util/Map;)V
iget-object v0, p0, Lboston/Bus/Map/data/RouteConfig;->stops:Ljava/util/HashMap;
invoke-virtual {p1, v0, p0, p2}, Lboston/Bus/Map/util/Box;->readStopsMap(Ljava/util/HashMap;Lboston/Bus/Map/data/RouteConfig;Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lboston/Bus/Map/data/RouteConfig;->paths:Ljava/util/TreeMap;
invoke-virtual {p1, v0}, Lboston/Bus/Map/util/Box;->readPathsMap(Ljava/util/TreeMap;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lboston/Bus/Map/data/RouteConfig;->stops:Ljava/util/HashMap;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lboston/Bus/Map/data/RouteConfig;->directionTitles:Ljava/util/HashMap;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lboston/Bus/Map/data/RouteConfig;->directionNames:Ljava/util/HashMap;
new-instance v0, Ljava/util/TreeMap;
invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V
iput-object v0, p0, Lboston/Bus/Map/data/RouteConfig;->paths:Ljava/util/TreeMap;
iput-object p1, p0, Lboston/Bus/Map/data/RouteConfig;->route:Ljava/lang/String;
return-void
.end method
.method public addDirection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lboston/Bus/Map/data/RouteConfig;->directionTitles:Ljava/util/HashMap;
invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lboston/Bus/Map/data/RouteConfig;->directionNames:Ljava/util/HashMap;
invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public addPath(IFF)V
.registers 9
iget-object v1, p0, Lboston/Bus/Map/data/RouteConfig;->paths:Ljava/util/TreeMap;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lboston/Bus/Map/data/Path;
if-nez v0, :cond_1c
new-instance v0, Lboston/Bus/Map/data/Path;
invoke-direct {v0, p1}, Lboston/Bus/Map/data/Path;-><init>(I)V
iget-object v1, p0, Lboston/Bus/Map/data/RouteConfig;->paths:Ljava/util/TreeMap;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_1c
float-to-double v1, p2
float-to-double v3, p3
invoke-virtual {v0, v1, v2, v3, v4}, Lboston/Bus/Map/data/Path;->addPoint(DD)V
return-void
.end method
.method public addPath(ILboston/Bus/Map/data/Path;)V
.registers 5
iget-object v0, p0, Lboston/Bus/Map/data/RouteConfig;->paths:Ljava/util/TreeMap;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public addStop(Ljava/lang/String;Lboston/Bus/Map/data/StopLocation;)V
.registers 4
iget-object v0, p0, Lboston/Bus/Map/data/RouteConfig;->stops:Ljava/util/HashMap;
invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public getDirectionName(Ljava/lang/String;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lboston/Bus/Map/data/RouteConfig;->directionNames:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_12
iget-object v0, p0, Lboston/Bus/Map/data/RouteConfig;->directionNames:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/lang/String;
move-object v0, p0
:goto_11
return-object v0
:cond_12
const-string v0, ""
goto :goto_11
.end method
.method public getDirectionTitle(Ljava/lang/String;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lboston/Bus/Map/data/RouteConfig;->directionTitles:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_12
iget-object v0, p0, Lboston/Bus/Map/data/RouteConfig;->directionTitles:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/lang/String;
move-object v0, p0
:goto_11
return-object v0
:cond_12
const-string v0, ""
goto :goto_11
.end method
.method public getDirtags()Ljava/util/Collection;
.registers 2
iget-object v0, p0, Lboston/Bus/Map/data/RouteConfig;->directionTitles:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v0
return-object v0
.end method
.method public getPaths()Ljava/util/SortedMap;
.registers 2
iget-object v0, p0, Lboston/Bus/Map/data/RouteConfig;->paths:Ljava/util/TreeMap;
return-object v0
.end method
.method public getRouteName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lboston/Bus/Map/data/RouteConfig;->route:Ljava/lang/String;
return-object v0
.end method
.method public getStop(Ljava/lang/String;)Lboston/Bus/Map/data/StopLocation;
.registers 3
iget-object v0, p0, Lboston/Bus/Map/data/RouteConfig;->stops:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lboston/Bus/Map/data/StopLocation;
return-object p0
.end method
.method public getStops()Ljava/util/Collection;
.registers 2
iget-object v0, p0, Lboston/Bus/Map/data/RouteConfig;->stops:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;
move-result-object v0
return-object v0
.end method
.method public serialize(Lboston/Bus/Map/util/Box;)V
.registers 3
iget-object v0, p0, Lboston/Bus/Map/data/RouteConfig;->route:Ljava/lang/String;
invoke-virtual {p1, v0}, Lboston/Bus/Map/util/Box;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lboston/Bus/Map/data/RouteConfig;->directionTitles:Ljava/util/HashMap;
invoke-virtual {p1, v0}, Lboston/Bus/Map/util/Box;->writeStringMap(Ljava/util/Map;)V
iget-object v0, p0, Lboston/Bus/Map/data/RouteConfig;->directionNames:Ljava/util/HashMap;
invoke-virtual {p1, v0}, Lboston/Bus/Map/util/Box;->writeStringMap(Ljava/util/Map;)V
iget-object v0, p0, Lboston/Bus/Map/data/RouteConfig;->stops:Ljava/util/HashMap;
invoke-virtual {p1, v0}, Lboston/Bus/Map/util/Box;->writeStopsMap(Ljava/util/Map;)V
iget-object v0, p0, Lboston/Bus/Map/data/RouteConfig;->paths:Ljava/util/TreeMap;
invoke-virtual {p1, v0}, Lboston/Bus/Map/util/Box;->writePathsMap(Ljava/util/Map;)V
return-void
.end method