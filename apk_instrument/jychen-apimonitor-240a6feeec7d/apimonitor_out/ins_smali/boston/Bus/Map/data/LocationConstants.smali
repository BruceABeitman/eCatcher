.class public Lboston/Bus/Map/data/LocationConstants;
.super Ljava/lang/Object;
.source "LocationConstants.java"
.field private static final kilometersPerMile:D = 1.609344
.field private static final radiusOfEarthInKilo:D = 6371.2
.field private static final radiusOfEarthInMiles:D = 3958.880139982502
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static computeCompareDistance(DDDD)D
.registers 12
const-wide/high16 v0, 0x3ff0
sub-double v2, p0, p4
invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D
move-result-wide v2
sub-double/2addr v0, v2
const-wide/high16 v2, 0x4000
div-double/2addr v0, v2
invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D
move-result-wide p0
invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D
move-result-wide p4
mul-double/2addr p0, p4
const-wide/high16 p4, 0x3ff0
sub-double/2addr p2, p6
invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D
move-result-wide p2
sub-double p2, p4, p2
const-wide/high16 p4, 0x4000
div-double/2addr p2, p4
mul-double/2addr p0, p2
add-double/2addr p0, v0
const-wide p2, 0x40aeedc2a1b5317fL
mul-double/2addr p0, p2
return-wide p0
.end method