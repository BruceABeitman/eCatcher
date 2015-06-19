.class public final enum Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;
.field public static final enum b:Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;
.field public static final enum c:Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;
.field public static final enum d:Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;
.field private static final synthetic e:[Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;
.field private mFailType:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;
const-string v1, "SOMMELIER_TIMEOUT"
const-string v2, "Sommelier timeout"
invoke-direct {v0, v1, v3, v2}, Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;->a:Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;
new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;
const-string v1, "SOMMELIER_RESOLVER_ERROR"
const-string v2, "Sommelier resolver error"
invoke-direct {v0, v1, v4, v2}, Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;->b:Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;
new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;
const-string v1, "SOMMELIER_BAD_TITLE"
const-string v2, "Sommelier bad title"
invoke-direct {v0, v1, v5, v2}, Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;->c:Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;
new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;
const-string v1, "SOMMELIER_NO_CLUSTERS"
const-string v2, "Sommelier no cluseters"
invoke-direct {v0, v1, v6, v2}, Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;->d:Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;
const/4 v0, 0x4
new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;
sget-object v1, Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;->a:Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;
aput-object v1, v0, v3
sget-object v1, Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;->b:Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;
aput-object v1, v0, v4
sget-object v1, Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;->c:Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;
aput-object v1, v0, v5
sget-object v1, Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;->d:Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;
aput-object v1, v0, v6
sput-object v0, Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;->e:[Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;->mFailType:Ljava/lang/String;
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;
.registers 2
const-class v0, Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;->e:[Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;->mFailType:Ljava/lang/String;
return-object v0
.end method