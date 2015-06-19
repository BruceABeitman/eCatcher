.class public final enum Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

.field public static final enum b:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

.field public static final enum c:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

.field public static final enum d:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

.field public static final enum e:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

.field public static final enum f:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

.field private static final synthetic g:[Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    const-string v1, "START"

    invoke-direct {v0, v1, v3}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v4}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;->b:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v5}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;->c:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    const-string v1, "RESUME"

    invoke-direct {v0, v1, v6}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;->d:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    const-string v1, "CLOSE"

    invoke-direct {v0, v1, v7}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;->e:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    const-string v1, "STOP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;->f:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    aput-object v1, v0, v3

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;->b:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    aput-object v1, v0, v4

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;->c:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    aput-object v1, v0, v5

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;->d:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    aput-object v1, v0, v6

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;->e:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;->f:Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    aput-object v2, v0, v1

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;->g:[Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;
    .registers 2

    const-class v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    return-object v0
.end method

.method public static values()[Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;
    .registers 1

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;->g:[Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    invoke-virtual {v0}, [Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/admarvel/android/ads/AdMarvelVideoActivity$l;

    return-object v0
.end method
