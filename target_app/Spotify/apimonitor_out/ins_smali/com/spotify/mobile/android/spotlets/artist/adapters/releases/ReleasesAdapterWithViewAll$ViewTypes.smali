.class final enum Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;
.field public static final enum b:Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;
.field private static final c:I
.field private static final synthetic d:[Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;
const-string v1, "REGULAR"
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;->a:Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;
const-string v1, "VIEW_ALL"
invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;->b:Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;
const/4 v0, 0x2
new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;
sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;->a:Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;
aput-object v1, v0, v2
sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;->b:Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;
aput-object v1, v0, v3
sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;->d:[Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;
invoke-static {}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;->values()[Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;
move-result-object v0
array-length v0, v0
sput v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;->c:I
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method static synthetic a()I
.registers 1
sget v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;->c:I
return v0
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;
.registers 2
const-class v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;->d:[Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll$ViewTypes;
return-object v0
.end method