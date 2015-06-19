.class public Lboston/Bus/Map/data/LocationComparator;
.super Ljava/lang/Object;
.source "LocationComparator.java"
.implements Ljava/util/Comparator;
.field private static final degreesToRadians:D = 0.017453292519943295
.field private final centerLatitudeAsRadians:D
.field private final centerLongitudeAsRadians:D
.method public constructor <init>(DD)V
.registers 9
const-wide v2, 0x3f91df46a2529d39L
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
mul-double v0, p1, v2
iput-wide v0, p0, Lboston/Bus/Map/data/LocationComparator;->centerLatitudeAsRadians:D
mul-double v0, p3, v2
iput-wide v0, p0, Lboston/Bus/Map/data/LocationComparator;->centerLongitudeAsRadians:D
return-void
.end method
.method public compare(Lboston/Bus/Map/data/Location;Lboston/Bus/Map/data/Location;)I
.registers 11
iget-wide v4, p0, Lboston/Bus/Map/data/LocationComparator;->centerLatitudeAsRadians:D
iget-wide v6, p0, Lboston/Bus/Map/data/LocationComparator;->centerLongitudeAsRadians:D
invoke-interface {p1, v4, v5, v6, v7}, Lboston/Bus/Map/data/Location;->distanceFrom(DD)D
move-result-wide v0
iget-wide v4, p0, Lboston/Bus/Map/data/LocationComparator;->centerLatitudeAsRadians:D
iget-wide v6, p0, Lboston/Bus/Map/data/LocationComparator;->centerLongitudeAsRadians:D
invoke-interface {p2, v4, v5, v6, v7}, Lboston/Bus/Map/data/Location;->distanceFrom(DD)D
move-result-wide v2
invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I
move-result v4
return v4
.end method
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Lboston/Bus/Map/data/Location;
check-cast p2, Lboston/Bus/Map/data/Location;
invoke-virtual {p0, p1, p2}, Lboston/Bus/Map/data/LocationComparator;->compare(Lboston/Bus/Map/data/Location;Lboston/Bus/Map/data/Location;)I
move-result v0
return v0
.end method