.class public final enum Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
.field public static final enum b:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
.field public static final enum c:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
.field public static final enum d:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
.field public static final enum e:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
.field public static final enum f:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
.field public static final enum g:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
.field public static final enum h:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
.field private static final synthetic i:[Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
const-string v1, "FEATURED_PLAYLISTS"
invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;->a:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
const-string v1, "GENRE"
invoke-direct {v0, v1, v4}, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;->b:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
const-string v1, "GENRE_PLAYLISTS"
invoke-direct {v0, v1, v5}, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;->c:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
const-string v1, "COLLECTION_FAVORITES"
invoke-direct {v0, v1, v6}, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;->d:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
const-string v1, "NEW_RELEASES"
invoke-direct {v0, v1, v7}, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;->e:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
const-string v1, "TRENDING_ARTISTS"
const/4 v2, 0x5
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;->f:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
const-string v1, "TOP_LISTS"
const/4 v2, 0x6
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;->g:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
const-string v1, "REGION_MAPPINGS"
const/4 v2, 0x7
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;->h:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
const/16 v0, 0x8
new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
sget-object v1, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;->a:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
aput-object v1, v0, v3
sget-object v1, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;->b:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
aput-object v1, v0, v4
sget-object v1, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;->c:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
aput-object v1, v0, v5
sget-object v1, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;->d:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
aput-object v1, v0, v6
sget-object v1, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;->e:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
aput-object v1, v0, v7
const/4 v1, 0x5
sget-object v2, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;->f:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
aput-object v2, v0, v1
const/4 v1, 0x6
sget-object v2, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;->g:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
aput-object v2, v0, v1
const/4 v1, 0x7
sget-object v2, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;->h:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;->i:[Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
.registers 2
const-class v0, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;->i:[Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
return-object v0
.end method