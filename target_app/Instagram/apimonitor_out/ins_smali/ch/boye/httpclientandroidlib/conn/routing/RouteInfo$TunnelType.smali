.class public final enum Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
.super Ljava/lang/Enum;
.source "RouteInfo.java"
.field private static final synthetic $VALUES:[Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
.field public static final enum PLAIN:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
.field public static final enum TUNNELLED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
const-string v1, "PLAIN"
invoke-direct {v0, v1, v2}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->PLAIN:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
new-instance v0, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
const-string v1, "TUNNELLED"
invoke-direct {v0, v1, v3}, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
const/4 v0, 0x2
new-array v0, v0, [Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
sget-object v1, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->PLAIN:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
aput-object v1, v0, v2
sget-object v1, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
aput-object v1, v0, v3
sput-object v0, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->$VALUES:[Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
.registers 2
const-class v0, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
return-object v0
.end method
.method public static values()[Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
.registers 1
sget-object v0, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->$VALUES:[Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
invoke-virtual {v0}, [Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
return-object v0
.end method