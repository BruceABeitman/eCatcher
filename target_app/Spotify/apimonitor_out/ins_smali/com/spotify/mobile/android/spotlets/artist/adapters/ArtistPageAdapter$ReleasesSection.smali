.class final enum Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;
.field public static final enum b:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;
.field public static final enum c:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;
.field public static final enum d:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;
.field private static final synthetic e:[Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;
.field private final mReleaseType:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
.field private final mSection:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x3
const/4 v6, 0x2
const/4 v5, 0x1
const/4 v4, 0x0
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;
const-string v1, "ALBUMS"
sget-object v2, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->f:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;
sget-object v3, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;->a:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
invoke-direct {v0, v1, v4, v2, v3}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;-><init>(Ljava/lang/String;ILcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;->a:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;
const-string v1, "SINGLES"
sget-object v2, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->g:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;
sget-object v3, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;->b:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
invoke-direct {v0, v1, v5, v2, v3}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;-><init>(Ljava/lang/String;ILcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;->b:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;
const-string v1, "COMPILATIONS"
sget-object v2, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->h:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;
sget-object v3, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;->d:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
invoke-direct {v0, v1, v6, v2, v3}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;-><init>(Ljava/lang/String;ILcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;->c:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;
const-string v1, "APPEARS_ON"
sget-object v2, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->i:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;
sget-object v3, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;->c:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
invoke-direct {v0, v1, v7, v2, v3}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;-><init>(Ljava/lang/String;ILcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;->d:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;
const/4 v0, 0x4
new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;
sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;->a:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;
aput-object v1, v0, v4
sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;->b:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;
aput-object v1, v0, v5
sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;->c:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;
aput-object v1, v0, v6
sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;->d:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;
aput-object v1, v0, v7
sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;->e:[Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;)V
.registers 5
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;->mSection:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;
iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;->mReleaseType:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;)Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;->mReleaseType:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;)Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;->mSection:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;
return-object v0
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;
.registers 2
const-class v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;->e:[Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$ReleasesSection;
return-object v0
.end method