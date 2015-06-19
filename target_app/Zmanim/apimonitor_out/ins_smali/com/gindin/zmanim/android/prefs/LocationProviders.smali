.class public final enum Lcom/gindin/zmanim/android/prefs/LocationProviders;
.super Ljava/lang/Enum;
.source "LocationProviders.java"
.field private static final synthetic $VALUES:[Lcom/gindin/zmanim/android/prefs/LocationProviders;
.field public static final enum DYNAMIC_POSITION:Lcom/gindin/zmanim/android/prefs/LocationProviders;
.field public static final enum LATITUDE_LONGITUDE_POSITION:Lcom/gindin/zmanim/android/prefs/LocationProviders;
.field public static final enum STATIC_POSITION:Lcom/gindin/zmanim/android/prefs/LocationProviders;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/gindin/zmanim/android/prefs/LocationProviders;
const-string v1, "DYNAMIC_POSITION"
invoke-direct {v0, v1, v2}, Lcom/gindin/zmanim/android/prefs/LocationProviders;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/gindin/zmanim/android/prefs/LocationProviders;->DYNAMIC_POSITION:Lcom/gindin/zmanim/android/prefs/LocationProviders;
new-instance v0, Lcom/gindin/zmanim/android/prefs/LocationProviders;
const-string v1, "STATIC_POSITION"
invoke-direct {v0, v1, v3}, Lcom/gindin/zmanim/android/prefs/LocationProviders;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/gindin/zmanim/android/prefs/LocationProviders;->STATIC_POSITION:Lcom/gindin/zmanim/android/prefs/LocationProviders;
new-instance v0, Lcom/gindin/zmanim/android/prefs/LocationProviders;
const-string v1, "LATITUDE_LONGITUDE_POSITION"
invoke-direct {v0, v1, v4}, Lcom/gindin/zmanim/android/prefs/LocationProviders;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/gindin/zmanim/android/prefs/LocationProviders;->LATITUDE_LONGITUDE_POSITION:Lcom/gindin/zmanim/android/prefs/LocationProviders;
const/4 v0, 0x3
new-array v0, v0, [Lcom/gindin/zmanim/android/prefs/LocationProviders;
sget-object v1, Lcom/gindin/zmanim/android/prefs/LocationProviders;->DYNAMIC_POSITION:Lcom/gindin/zmanim/android/prefs/LocationProviders;
aput-object v1, v0, v2
sget-object v1, Lcom/gindin/zmanim/android/prefs/LocationProviders;->STATIC_POSITION:Lcom/gindin/zmanim/android/prefs/LocationProviders;
aput-object v1, v0, v3
sget-object v1, Lcom/gindin/zmanim/android/prefs/LocationProviders;->LATITUDE_LONGITUDE_POSITION:Lcom/gindin/zmanim/android/prefs/LocationProviders;
aput-object v1, v0, v4
sput-object v0, Lcom/gindin/zmanim/android/prefs/LocationProviders;->$VALUES:[Lcom/gindin/zmanim/android/prefs/LocationProviders;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/gindin/zmanim/android/prefs/LocationProviders;
.registers 2
const-class v0, Lcom/gindin/zmanim/android/prefs/LocationProviders;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object p0
check-cast p0, Lcom/gindin/zmanim/android/prefs/LocationProviders;
return-object p0
.end method
.method public static values()[Lcom/gindin/zmanim/android/prefs/LocationProviders;
.registers 1
sget-object v0, Lcom/gindin/zmanim/android/prefs/LocationProviders;->$VALUES:[Lcom/gindin/zmanim/android/prefs/LocationProviders;
invoke-virtual {v0}, [Lcom/gindin/zmanim/android/prefs/LocationProviders;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/gindin/zmanim/android/prefs/LocationProviders;
return-object v0
.end method