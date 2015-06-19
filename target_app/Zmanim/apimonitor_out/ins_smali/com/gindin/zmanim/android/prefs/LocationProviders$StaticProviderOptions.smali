.class public final enum Lcom/gindin/zmanim/android/prefs/LocationProviders$StaticProviderOptions;
.super Ljava/lang/Enum;
.source "LocationProviders.java"
.field private static final synthetic $VALUES:[Lcom/gindin/zmanim/android/prefs/LocationProviders$StaticProviderOptions;
.field public static final enum PLACE:Lcom/gindin/zmanim/android/prefs/LocationProviders$StaticProviderOptions;
.method static constructor <clinit>()V
.registers 3
const/4 v2, 0x0
new-instance v0, Lcom/gindin/zmanim/android/prefs/LocationProviders$StaticProviderOptions;
const-string v1, "PLACE"
invoke-direct {v0, v1, v2}, Lcom/gindin/zmanim/android/prefs/LocationProviders$StaticProviderOptions;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/gindin/zmanim/android/prefs/LocationProviders$StaticProviderOptions;->PLACE:Lcom/gindin/zmanim/android/prefs/LocationProviders$StaticProviderOptions;
const/4 v0, 0x1
new-array v0, v0, [Lcom/gindin/zmanim/android/prefs/LocationProviders$StaticProviderOptions;
sget-object v1, Lcom/gindin/zmanim/android/prefs/LocationProviders$StaticProviderOptions;->PLACE:Lcom/gindin/zmanim/android/prefs/LocationProviders$StaticProviderOptions;
aput-object v1, v0, v2
sput-object v0, Lcom/gindin/zmanim/android/prefs/LocationProviders$StaticProviderOptions;->$VALUES:[Lcom/gindin/zmanim/android/prefs/LocationProviders$StaticProviderOptions;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/gindin/zmanim/android/prefs/LocationProviders$StaticProviderOptions;
.registers 2
const-class v0, Lcom/gindin/zmanim/android/prefs/LocationProviders$StaticProviderOptions;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object p0
check-cast p0, Lcom/gindin/zmanim/android/prefs/LocationProviders$StaticProviderOptions;
return-object p0
.end method
.method public static values()[Lcom/gindin/zmanim/android/prefs/LocationProviders$StaticProviderOptions;
.registers 1
sget-object v0, Lcom/gindin/zmanim/android/prefs/LocationProviders$StaticProviderOptions;->$VALUES:[Lcom/gindin/zmanim/android/prefs/LocationProviders$StaticProviderOptions;
invoke-virtual {v0}, [Lcom/gindin/zmanim/android/prefs/LocationProviders$StaticProviderOptions;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/gindin/zmanim/android/prefs/LocationProviders$StaticProviderOptions;
return-object v0
.end method