.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$GameInstancesColumns;
.super Ljava/lang/Object;
.field public static final HO:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/16 v0, 0x9
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "instance_game_id"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "real_time_support"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "turn_based_support"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "platform_type"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "instance_display_name"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "package_name"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "piracy_check"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "installed"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "preferred"
aput-object v2, v0, v1
sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$GameInstancesColumns;->HO:[Ljava/lang/String;
return-void
.end method