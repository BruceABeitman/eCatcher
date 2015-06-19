.class public Lboston/Bus/Map/data/BusLocation;
.super Ljava/lang/Object;
.source "BusLocation.java"
.implements Lboston/Bus/Map/data/Location;
.field private static final LOCATIONTYPE:I = 0x1
.field private final arrow:Landroid/graphics/drawable/Drawable;
.field private final bus:Landroid/graphics/drawable/Drawable;
.field private final dirTag:Ljava/lang/String;
.field private distanceFromLastX:D
.field private distanceFromLastY:D
.field private final heading:Ljava/lang/String;
.field public final id:I
.field private final inferBusRoute:Ljava/lang/String;
.field public lastUpdateInMillis:D
.field public final latitude:D
.field public final latitudeAsDegrees:D
.field public final longitude:D
.field public final longitudeAsDegrees:D
.field public final predictable:Z
.field public final route:Lboston/Bus/Map/data/RouteConfig;
.field private final routeName:Ljava/lang/String;
.field public final seconds:I
.method public constructor <init>(DDILboston/Bus/Map/data/RouteConfig;IDLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
.registers 21
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide v2, 0x3f91df46a0000000L
mul-double/2addr v2, p1
iput-wide v2, p0, Lboston/Bus/Map/data/BusLocation;->latitude:D
const-wide v2, 0x3f91df46a0000000L
mul-double/2addr v2, p3
iput-wide v2, p0, Lboston/Bus/Map/data/BusLocation;->longitude:D
iput-wide p1, p0, Lboston/Bus/Map/data/BusLocation;->latitudeAsDegrees:D
iput-wide p3, p0, Lboston/Bus/Map/data/BusLocation;->longitudeAsDegrees:D
iput p5, p0, Lboston/Bus/Map/data/BusLocation;->id:I
iput-object p6, p0, Lboston/Bus/Map/data/BusLocation;->route:Lboston/Bus/Map/data/RouteConfig;
iput p7, p0, Lboston/Bus/Map/data/BusLocation;->seconds:I
iput-wide p8, p0, Lboston/Bus/Map/data/BusLocation;->lastUpdateInMillis:D
iput-object p10, p0, Lboston/Bus/Map/data/BusLocation;->heading:Ljava/lang/String;
iput-boolean p11, p0, Lboston/Bus/Map/data/BusLocation;->predictable:Z
move-object/from16 v0, p12
move-object v1, p0
iput-object v0, v1, Lboston/Bus/Map/data/BusLocation;->dirTag:Ljava/lang/String;
move-object/from16 v0, p13
move-object v1, p0
iput-object v0, v1, Lboston/Bus/Map/data/BusLocation;->inferBusRoute:Ljava/lang/String;
move-object/from16 v0, p14
move-object v1, p0
iput-object v0, v1, Lboston/Bus/Map/data/BusLocation;->bus:Landroid/graphics/drawable/Drawable;
move-object/from16 v0, p15
move-object v1, p0
iput-object v0, v1, Lboston/Bus/Map/data/BusLocation;->arrow:Landroid/graphics/drawable/Drawable;
move-object/from16 v0, p16
move-object v1, p0
iput-object v0, v1, Lboston/Bus/Map/data/BusLocation;->routeName:Ljava/lang/String;
return-void
.end method
.method private convertHeadingToCardinal(D)Ljava/lang/String;
.registers 10
const/16 v6, 0x8
const-wide v4, 0x4076800000000000L
const-wide v2, 0x4036800000000000L
add-double/2addr p1, v2
cmpl-double v2, p1, v4
if-ltz v2, :cond_12
sub-double/2addr p1, v4
:cond_12
const-wide v2, 0x4046800000000000L
div-double v2, p1, v2
double-to-int v1, v2
if-ltz v1, :cond_1e
if-lt v1, v6, :cond_21
:cond_1e
const-string v2, "calculation error"
:goto_20
return-object v2
:cond_21
new-array v0, v6, [Ljava/lang/String;
const/4 v2, 0x0
const-string v3, "N"
aput-object v3, v0, v2
const/4 v2, 0x1
const-string v3, "NE"
aput-object v3, v0, v2
const/4 v2, 0x2
const-string v3, "E"
aput-object v3, v0, v2
const/4 v2, 0x3
const-string v3, "SE"
aput-object v3, v0, v2
const/4 v2, 0x4
const-string v3, "S"
aput-object v3, v0, v2
const/4 v2, 0x5
const-string v3, "SW"
aput-object v3, v0, v2
const/4 v2, 0x6
const-string v3, "W"
aput-object v3, v0, v2
const/4 v2, 0x7
const-string v3, "NW"
aput-object v3, v0, v2
aget-object v2, v0, v1
goto :goto_20
.end method
.method private radiansToDegrees(D)I
.registers 8
const-wide v1, 0x4066800000000000L
mul-double/2addr v1, p1
const-wide v3, 0x400921fb54442d18L
div-double/2addr v1, v3
double-to-int v0, v1
if-gez v0, :cond_11
add-int/lit16 v0, v0, 0x168
:cond_11
neg-int v1, v0
add-int/lit8 v0, v1, 0x5a
if-gez v0, :cond_18
add-int/lit16 v0, v0, 0x168
:cond_18
return v0
.end method
.method public distanceFrom(DD)D
.registers 13
iget-wide v0, p0, Lboston/Bus/Map/data/BusLocation;->latitude:D
iget-wide v2, p0, Lboston/Bus/Map/data/BusLocation;->longitude:D
move-wide v4, p1
move-wide v6, p3
invoke-static/range {v0 .. v7}, Lboston/Bus/Map/data/LocationConstants;->computeCompareDistance(DDDD)D
move-result-wide v0
return-wide v0
.end method
.method public getDirection()Ljava/lang/String;
.registers 8
const-wide/16 v5, 0x0
iget-wide v3, p0, Lboston/Bus/Map/data/BusLocation;->distanceFromLastY:D
cmpl-double v3, v3, v5
if-nez v3, :cond_11
iget-wide v3, p0, Lboston/Bus/Map/data/BusLocation;->distanceFromLastX:D
cmpl-double v3, v3, v5
if-nez v3, :cond_11
const-string v3, ""
:goto_10
return-object v3
:cond_11
iget-wide v3, p0, Lboston/Bus/Map/data/BusLocation;->distanceFromLastY:D
iget-wide v5, p0, Lboston/Bus/Map/data/BusLocation;->distanceFromLastX:D
invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D
move-result-wide v1
invoke-direct {p0, v1, v2}, Lboston/Bus/Map/data/BusLocation;->radiansToDegrees(D)I
move-result v0
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " deg ("
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
int-to-double v4, v0
invoke-direct {p0, v4, v5}, Lboston/Bus/Map/data/BusLocation;->convertHeadingToCardinal(D)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ")"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
goto :goto_10
.end method
.method public getDrawable(Landroid/content/Context;ZZ)Landroid/graphics/drawable/Drawable;
.registers 8
iget-object v0, p0, Lboston/Bus/Map/data/BusLocation;->bus:Landroid/graphics/drawable/Drawable;
if-nez p2, :cond_17
invoke-virtual {p0}, Lboston/Bus/Map/data/BusLocation;->hasHeading()Z
move-result v1
if-eqz v1, :cond_17
new-instance v0, Lboston/Bus/Map/ui/BusDrawable;
iget-object v1, p0, Lboston/Bus/Map/data/BusLocation;->bus:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Lboston/Bus/Map/data/BusLocation;->getHeading()I
move-result v2
iget-object v3, p0, Lboston/Bus/Map/data/BusLocation;->arrow:Landroid/graphics/drawable/Drawable;
invoke-direct {v0, v1, v2, v3}, Lboston/Bus/Map/ui/BusDrawable;-><init>(Landroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;)V
:cond_17
return-object v0
.end method
.method public getHeading()I
.registers 8
iget-boolean v3, p0, Lboston/Bus/Map/data/BusLocation;->predictable:Z
if-eqz v3, :cond_b
iget-object v3, p0, Lboston/Bus/Map/data/BusLocation;->heading:Ljava/lang/String;
invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
:goto_a
return v3
:cond_b
iget-wide v3, p0, Lboston/Bus/Map/data/BusLocation;->distanceFromLastY:D
iget-wide v5, p0, Lboston/Bus/Map/data/BusLocation;->distanceFromLastX:D
invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D
move-result-wide v1
invoke-direct {p0, v1, v2}, Lboston/Bus/Map/data/BusLocation;->radiansToDegrees(D)I
move-result v0
move v3, v0
goto :goto_a
.end method
.method public getId()I
.registers 3
iget v0, p0, Lboston/Bus/Map/data/BusLocation;->id:I
const/high16 v1, 0x100
or-int/2addr v0, v1
return v0
.end method
.method public getLatitudeAsDegrees()D
.registers 3
iget-wide v0, p0, Lboston/Bus/Map/data/BusLocation;->latitudeAsDegrees:D
return-wide v0
.end method
.method public getLongitudeAsDegrees()D
.registers 3
iget-wide v0, p0, Lboston/Bus/Map/data/BusLocation;->longitudeAsDegrees:D
return-wide v0
.end method
.method public hasHeading()Z
.registers 7
const/4 v5, 0x1
const/4 v4, 0x0
const-wide/16 v2, 0x0
iget-boolean v0, p0, Lboston/Bus/Map/data/BusLocation;->predictable:Z
if-eqz v0, :cond_12
invoke-virtual {p0}, Lboston/Bus/Map/data/BusLocation;->getHeading()I
move-result v0
if-ltz v0, :cond_10
move v0, v5
:goto_f
return v0
:cond_10
move v0, v4
goto :goto_f
:cond_12
iget-wide v0, p0, Lboston/Bus/Map/data/BusLocation;->distanceFromLastY:D
cmpl-double v0, v0, v2
if-nez v0, :cond_20
iget-wide v0, p0, Lboston/Bus/Map/data/BusLocation;->distanceFromLastX:D
cmpl-double v0, v0, v2
if-nez v0, :cond_20
move v0, v4
goto :goto_f
:cond_20
move v0, v5
goto :goto_f
.end method
.method public isFavorite()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public makeSnippet(Lboston/Bus/Map/data/RouteConfig;)Ljava/lang/String;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public makeTitle()Ljava/lang/String;
.registers 12
const-string v10, "null"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Id: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget v4, p0, Lboston/Bus/Map/data/BusLocation;->id:I
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ", route: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lboston/Bus/Map/data/BusLocation;->route:Lboston/Bus/Map/data/RouteConfig;
if-eqz v3, :cond_37
iget-object v3, p0, Lboston/Bus/Map/data/BusLocation;->route:Lboston/Bus/Map/data/RouteConfig;
invoke-virtual {v3}, Lboston/Bus/Map/data/RouteConfig;->getRouteName()Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_37
iget-object v3, p0, Lboston/Bus/Map/data/BusLocation;->route:Lboston/Bus/Map/data/RouteConfig;
invoke-virtual {v3}, Lboston/Bus/Map/data/RouteConfig;->getRouteName()Ljava/lang/String;
move-result-object v3
const-string v4, "null"
invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_101
:cond_37
iget-object v3, p0, Lboston/Bus/Map/data/BusLocation;->routeName:Ljava/lang/String;
if-nez v3, :cond_101
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "not mentioned"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
:goto_4e
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "\nSeconds since update: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget v4, p0, Lboston/Bus/Map/data/BusLocation;->seconds:I
int-to-double v4, v4
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
long-to-double v6, v6
iget-wide v8, p0, Lboston/Bus/Map/data/BusLocation;->lastUpdateInMillis:D
sub-double/2addr v6, v8
const-wide v8, 0x408f400000000000L
div-double/2addr v6, v8
add-double/2addr v4, v6
double-to-int v4, v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0}, Lboston/Bus/Map/data/BusLocation;->getDirection()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v3
if-eqz v3, :cond_9d
iget-boolean v3, p0, Lboston/Bus/Map/data/BusLocation;->predictable:Z
if-nez v3, :cond_9d
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "\nEstimated direction: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
:cond_9d
iget-boolean v3, p0, Lboston/Bus/Map/data/BusLocation;->predictable:Z
if-eqz v3, :cond_133
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "\nHeading: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lboston/Bus/Map/data/BusLocation;->heading:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " deg ("
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lboston/Bus/Map/data/BusLocation;->heading:Ljava/lang/String;
invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v4
int-to-double v4, v4
invoke-direct {p0, v4, v5}, Lboston/Bus/Map/data/BusLocation;->convertHeadingToCardinal(D)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ")"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lboston/Bus/Map/data/BusLocation;->route:Lboston/Bus/Map/data/RouteConfig;
if-eqz v3, :cond_100
iget-object v3, p0, Lboston/Bus/Map/data/BusLocation;->route:Lboston/Bus/Map/data/RouteConfig;
iget-object v4, p0, Lboston/Bus/Map/data/BusLocation;->dirTag:Ljava/lang/String;
invoke-virtual {v3, v4}, Lboston/Bus/Map/data/RouteConfig;->getDirectionTitle(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_100
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v3
if-eqz v3, :cond_100
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "\n"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
:goto_100
:cond_100
return-object v2
:cond_101
iget-object v3, p0, Lboston/Bus/Map/data/BusLocation;->route:Lboston/Bus/Map/data/RouteConfig;
if-eqz v3, :cond_11e
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lboston/Bus/Map/data/BusLocation;->route:Lboston/Bus/Map/data/RouteConfig;
invoke-virtual {v4}, Lboston/Bus/Map/data/RouteConfig;->getRouteName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
goto/16 :goto_4e
:cond_11e
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lboston/Bus/Map/data/BusLocation;->routeName:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
goto/16 :goto_4e
:cond_133
iget-object v3, p0, Lboston/Bus/Map/data/BusLocation;->route:Lboston/Bus/Map/data/RouteConfig;
if-eqz v3, :cond_145
const-string v3, "null"
iget-object v3, p0, Lboston/Bus/Map/data/BusLocation;->route:Lboston/Bus/Map/data/RouteConfig;
invoke-virtual {v3}, Lboston/Bus/Map/data/RouteConfig;->getRouteName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_100
:cond_145
iget-object v3, p0, Lboston/Bus/Map/data/BusLocation;->inferBusRoute:Ljava/lang/String;
if-eqz v3, :cond_100
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "\nEstimated route number: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lboston/Bus/Map/data/BusLocation;->inferBusRoute:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
goto :goto_100
.end method
.method public movedFrom(Lboston/Bus/Map/data/BusLocation;)V
.registers 8
const-wide/high16 v4, -0x4010
iget-wide v0, p1, Lboston/Bus/Map/data/BusLocation;->latitude:D
iget-wide v2, p0, Lboston/Bus/Map/data/BusLocation;->latitude:D
cmpl-double v0, v0, v2
if-nez v0, :cond_13
iget-wide v0, p1, Lboston/Bus/Map/data/BusLocation;->longitude:D
iget-wide v2, p0, Lboston/Bus/Map/data/BusLocation;->longitude:D
cmpl-double v0, v0, v2
if-nez v0, :cond_13
:cond_12
:goto_12
return-void
:cond_13
iget-wide v0, p0, Lboston/Bus/Map/data/BusLocation;->latitude:D
iget-wide v2, p1, Lboston/Bus/Map/data/BusLocation;->longitude:D
invoke-virtual {p0, v0, v1, v2, v3}, Lboston/Bus/Map/data/BusLocation;->distanceFrom(DD)D
move-result-wide v0
iput-wide v0, p0, Lboston/Bus/Map/data/BusLocation;->distanceFromLastX:D
iget-wide v0, p1, Lboston/Bus/Map/data/BusLocation;->latitude:D
iget-wide v2, p0, Lboston/Bus/Map/data/BusLocation;->longitude:D
invoke-virtual {p0, v0, v1, v2, v3}, Lboston/Bus/Map/data/BusLocation;->distanceFrom(DD)D
move-result-wide v0
iput-wide v0, p0, Lboston/Bus/Map/data/BusLocation;->distanceFromLastY:D
iget-wide v0, p1, Lboston/Bus/Map/data/BusLocation;->latitude:D
iget-wide v2, p0, Lboston/Bus/Map/data/BusLocation;->latitude:D
cmpl-double v0, v0, v2
if-lez v0, :cond_34
iget-wide v0, p0, Lboston/Bus/Map/data/BusLocation;->distanceFromLastY:D
mul-double/2addr v0, v4
iput-wide v0, p0, Lboston/Bus/Map/data/BusLocation;->distanceFromLastY:D
:cond_34
iget-wide v0, p1, Lboston/Bus/Map/data/BusLocation;->longitude:D
iget-wide v2, p0, Lboston/Bus/Map/data/BusLocation;->longitude:D
cmpl-double v0, v0, v2
if-lez v0, :cond_12
iget-wide v0, p0, Lboston/Bus/Map/data/BusLocation;->distanceFromLastX:D
mul-double/2addr v0, v4
iput-wide v0, p0, Lboston/Bus/Map/data/BusLocation;->distanceFromLastX:D
goto :goto_12
.end method