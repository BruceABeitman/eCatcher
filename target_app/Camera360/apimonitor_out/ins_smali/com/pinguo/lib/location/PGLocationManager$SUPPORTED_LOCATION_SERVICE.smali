.class public final enum Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;
.super Ljava/lang/Enum;
.source "PGLocationManager.java"
.field public static final enum BAIDU_LOCATION_SERVICE:Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;
.field private static final synthetic ENUM$VALUES:[Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;
.field public static final enum GOOGLE_LOCATION_SERVICE:Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;
const-string/jumbo v1, "BAIDU_LOCATION_SERVICE"
invoke-direct {v0, v1, v2}, Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;->BAIDU_LOCATION_SERVICE:Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;
new-instance v0, Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;
const-string/jumbo v1, "GOOGLE_LOCATION_SERVICE"
invoke-direct {v0, v1, v3}, Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;->GOOGLE_LOCATION_SERVICE:Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;
const/4 v0, 0x2
new-array v0, v0, [Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;
sget-object v1, Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;->BAIDU_LOCATION_SERVICE:Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;
aput-object v1, v0, v2
sget-object v1, Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;->GOOGLE_LOCATION_SERVICE:Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;
aput-object v1, v0, v3
sput-object v0, Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;->ENUM$VALUES:[Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;
.registers 2
const-class v0, Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;
return-object v0
.end method
.method public static values()[Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;
.registers 4
const/4 v3, 0x0
sget-object v0, Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;->ENUM$VALUES:[Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;
array-length v1, v0
new-array v2, v1, [Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v2
.end method