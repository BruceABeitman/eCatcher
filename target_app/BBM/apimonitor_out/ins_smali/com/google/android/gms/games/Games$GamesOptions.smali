.class public final Lcom/google/android/gms/games/Games$GamesOptions;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;
.field final Gc:Z
.field final Gd:Z
.field final Ge:I
.field final Gf:Z
.field final Gg:I
.method private constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Gc:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Gd:Z
const/16 v0, 0x11
iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Ge:I
iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Gf:Z
const/16 v0, 0x1110
iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Gg:I
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/games/Games$1;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/games/Games$GamesOptions;-><init>()V
return-void
.end method
.method private constructor <init>(Lcom/google/android/gms/games/Games$GamesOptions$Builder;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Gc:Z
iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Gc:Z
iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Gd:Z
iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Gd:Z
iget v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Ge:I
iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Ge:I
iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Gf:Z
iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Gf:Z
iget v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Gg:I
iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Gg:I
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/games/Games$GamesOptions$Builder;Lcom/google/android/gms/games/Games$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/games/Games$GamesOptions;-><init>(Lcom/google/android/gms/games/Games$GamesOptions$Builder;)V
return-void
.end method
.method public static builder()Lcom/google/android/gms/games/Games$GamesOptions$Builder;
.registers 2
new-instance v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;-><init>(Lcom/google/android/gms/games/Games$1;)V
return-object v0
.end method