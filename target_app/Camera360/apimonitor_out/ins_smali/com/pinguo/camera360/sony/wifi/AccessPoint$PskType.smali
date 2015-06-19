.class final enum Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;
.super Ljava/lang/Enum;
.source "AccessPoint.java"
.field private static final synthetic ENUM$VALUES:[Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;
.field public static final enum UNKNOWN:Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;
.field public static final enum WPA:Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;
.field public static final enum WPA2:Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;
.field public static final enum WPA_WPA2:Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;
const-string/jumbo v1, "UNKNOWN"
invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;
new-instance v0, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;
const-string/jumbo v1, "WPA"
invoke-direct {v0, v1, v3}, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;->WPA:Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;
new-instance v0, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;
const-string/jumbo v1, "WPA2"
invoke-direct {v0, v1, v4}, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;->WPA2:Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;
new-instance v0, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;
const-string/jumbo v1, "WPA_WPA2"
invoke-direct {v0, v1, v5}, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;->WPA_WPA2:Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;
const/4 v0, 0x4
new-array v0, v0, [Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;
sget-object v1, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;
aput-object v1, v0, v2
sget-object v1, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;->WPA:Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;
aput-object v1, v0, v3
sget-object v1, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;->WPA2:Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;
aput-object v1, v0, v4
sget-object v1, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;->WPA_WPA2:Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;
aput-object v1, v0, v5
sput-object v0, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;->ENUM$VALUES:[Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;
.registers 2
const-class v0, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;
return-object v0
.end method
.method public static values()[Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;
.registers 4
const/4 v3, 0x0
sget-object v0, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;->ENUM$VALUES:[Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;
array-length v1, v0
new-array v2, v1, [Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v2
.end method