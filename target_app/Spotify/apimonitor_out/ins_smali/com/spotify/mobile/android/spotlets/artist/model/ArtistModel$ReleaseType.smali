.class public final enum Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
.field public static final enum b:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
.field public static final enum c:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
.field public static final enum d:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
.field private static final synthetic e:[Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
const-string v1, "ALBUMS"
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;->a:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
const-string v1, "SINGLES"
invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;->b:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
const-string v1, "APPEARS_ON"
invoke-direct {v0, v1, v4}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;->c:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
const-string v1, "COMPILATIONS"
invoke-direct {v0, v1, v5}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;->d:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
const/4 v0, 0x4
new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;->a:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
aput-object v1, v0, v2
sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;->b:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
aput-object v1, v0, v3
sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;->c:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
aput-object v1, v0, v4
sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;->d:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
aput-object v1, v0, v5
sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;->e:[Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
.registers 2
const-class v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;->e:[Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
return-object v0
.end method