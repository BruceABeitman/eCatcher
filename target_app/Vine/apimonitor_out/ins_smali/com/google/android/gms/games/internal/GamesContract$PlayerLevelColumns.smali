.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$PlayerLevelColumns;
.super Ljava/lang/Object;
.field public static final HO:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "level_value"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "level_min_xp"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "level_max_xp"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "version"
aput-object v2, v0, v1
sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$PlayerLevelColumns;->HO:[Ljava/lang/String;
return-void
.end method