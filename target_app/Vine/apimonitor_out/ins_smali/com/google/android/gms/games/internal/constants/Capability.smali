.class public Lcom/google/android/gms/games/internal/constants/Capability;
.super Ljava/lang/Object;
.field public static final Rf:Ljava/util/ArrayList;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
sput-object v0, Lcom/google/android/gms/games/internal/constants/Capability;->Rf:Ljava/util/ArrayList;
sget-object v0, Lcom/google/android/gms/games/internal/constants/Capability;->Rf:Ljava/util/ArrayList;
const-string v1, "ibb"
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/google/android/gms/games/internal/constants/Capability;->Rf:Ljava/util/ArrayList;
const-string v1, "rtp"
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/google/android/gms/games/internal/constants/Capability;->Rf:Ljava/util/ArrayList;
const-string v1, "unreliable_ping"
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method