.class public final enum Lcom/admarvel/android/ads/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/admarvel/android/ads/a$a;
.field public static final enum b:Lcom/admarvel/android/ads/a$a;
.field private static final synthetic c:[Lcom/admarvel/android/ads/a$a;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/admarvel/android/ads/a$a;
const-string v1, "BANNER"
invoke-direct {v0, v1, v2}, Lcom/admarvel/android/ads/a$a;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/admarvel/android/ads/a$a;->a:Lcom/admarvel/android/ads/a$a;
new-instance v0, Lcom/admarvel/android/ads/a$a;
const-string v1, "INTERSTITIAL"
invoke-direct {v0, v1, v3}, Lcom/admarvel/android/ads/a$a;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/admarvel/android/ads/a$a;->b:Lcom/admarvel/android/ads/a$a;
const/4 v0, 0x2
new-array v0, v0, [Lcom/admarvel/android/ads/a$a;
sget-object v1, Lcom/admarvel/android/ads/a$a;->a:Lcom/admarvel/android/ads/a$a;
aput-object v1, v0, v2
sget-object v1, Lcom/admarvel/android/ads/a$a;->b:Lcom/admarvel/android/ads/a$a;
aput-object v1, v0, v3
sput-object v0, Lcom/admarvel/android/ads/a$a;->c:[Lcom/admarvel/android/ads/a$a;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/admarvel/android/ads/a$a;
.registers 2
const-class v0, Lcom/admarvel/android/ads/a$a;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/a$a;
return-object v0
.end method
.method public static values()[Lcom/admarvel/android/ads/a$a;
.registers 1
sget-object v0, Lcom/admarvel/android/ads/a$a;->c:[Lcom/admarvel/android/ads/a$a;
invoke-virtual {v0}, [Lcom/admarvel/android/ads/a$a;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/admarvel/android/ads/a$a;
return-object v0
.end method