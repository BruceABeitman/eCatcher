.class public final enum Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
.field public static final enum b:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
.field public static final enum c:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
.field public static final enum d:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
.field public static final enum e:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
.field public static final enum f:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
.field public static final enum g:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
.field private static final synthetic h:[Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
.field final mString:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 9
const/4 v8, 0x4
const/4 v7, 0x3
const/4 v6, 0x2
const/4 v5, 0x1
const/4 v4, 0x0
new-instance v0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
const-string v1, "SUGGEST"
const-string v2, "search"
invoke-direct {v0, v1, v4, v2}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->a:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
new-instance v0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
const-string v1, "ARTISTS"
const-string v2, "search-artists"
invoke-direct {v0, v1, v5, v2}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->b:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
new-instance v0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
const-string v1, "ALBUMS"
const-string v2, "search-albums"
invoke-direct {v0, v1, v6, v2}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->c:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
new-instance v0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
const-string v1, "PLAYLISTS"
const-string v2, "search-playlists"
invoke-direct {v0, v1, v7, v2}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->d:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
new-instance v0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
const-string v1, "PROFILES"
const-string v2, "search-profiles"
invoke-direct {v0, v1, v8, v2}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->e:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
new-instance v0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
const-string v1, "GENRES"
const/4 v2, 0x5
const-string v3, "search-genres"
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->f:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
new-instance v0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
const-string v1, "TRACKS"
const/4 v2, 0x6
const-string v3, "search-tracks"
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->g:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
const/4 v0, 0x7
new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
sget-object v1, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->a:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
aput-object v1, v0, v4
sget-object v1, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->b:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
aput-object v1, v0, v5
sget-object v1, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->c:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
aput-object v1, v0, v6
sget-object v1, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->d:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
aput-object v1, v0, v7
sget-object v1, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->e:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
aput-object v1, v0, v8
const/4 v1, 0x5
sget-object v2, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->f:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
aput-object v2, v0, v1
const/4 v1, 0x6
sget-object v2, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->g:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->h:[Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->mString:Ljava/lang/String;
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
.registers 2
const-class v0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->h:[Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
return-object v0
.end method