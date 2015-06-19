.class public final enum Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;
.field public static final enum b:Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;
.field public static final enum c:Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;
.field private static final synthetic d:[Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;
const-string v1, "Mute"
invoke-direct {v0, v1, v2}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;
new-instance v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;
const-string v1, "UnMute"
invoke-direct {v0, v1, v3}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;->b:Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;
new-instance v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;
const-string v1, "Unknown"
invoke-direct {v0, v1, v4}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;->c:Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;
const/4 v0, 0x3
new-array v0, v0, [Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;
sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;
aput-object v1, v0, v2
sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;->b:Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;
aput-object v1, v0, v3
sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;->c:Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;
aput-object v1, v0, v4
sput-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;->d:[Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;
.registers 2
const-class v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;
return-object v0
.end method
.method public static values()[Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;
.registers 1
sget-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;->d:[Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;
invoke-virtual {v0}, [Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;
return-object v0
.end method