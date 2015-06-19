.class public final enum Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;
.field public static final enum b:Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;
.field public static final enum c:Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;
.field public static final enum d:Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;
.field private static final synthetic e:[Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;
const-string v1, "ALL"
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;->a:Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;
new-instance v0, Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;
const-string v1, "OFFLINE_ONLY"
invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;->b:Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;
new-instance v0, Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;
const-string v1, "WRITABLE_ONLY"
invoke-direct {v0, v1, v4}, Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;->c:Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;
new-instance v0, Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;
const-string v1, "NOT_OFFLINE_ONLY"
invoke-direct {v0, v1, v5}, Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;->d:Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;
const/4 v0, 0x4
new-array v0, v0, [Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;
sget-object v1, Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;->a:Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;
aput-object v1, v0, v2
sget-object v1, Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;->b:Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;
aput-object v1, v0, v3
sget-object v1, Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;->c:Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;
aput-object v1, v0, v4
sget-object v1, Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;->d:Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;
aput-object v1, v0, v5
sput-object v0, Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;->e:[Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;
.registers 2
const-class v0, Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;->e:[Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;
return-object v0
.end method