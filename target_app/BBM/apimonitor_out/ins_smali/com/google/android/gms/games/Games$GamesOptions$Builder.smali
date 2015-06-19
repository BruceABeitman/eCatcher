.class public final Lcom/google/android/gms/games/Games$GamesOptions$Builder;
.super Ljava/lang/Object;
.field  Gc:Z
.field  Gd:Z
.field  Ge:I
.field  Gf:Z
.field  Gg:I
.method private constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Gc:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Gd:Z
const/16 v0, 0x11
iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Ge:I
iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Gf:Z
const/16 v0, 0x1110
iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Gg:I
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/games/Games$1;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;-><init>()V
return-void
.end method
.method public final build()Lcom/google/android/gms/games/Games$GamesOptions;
.registers 3
new-instance v0, Lcom/google/android/gms/games/Games$GamesOptions;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/google/android/gms/games/Games$GamesOptions;-><init>(Lcom/google/android/gms/games/Games$GamesOptions$Builder;Lcom/google/android/gms/games/Games$1;)V
return-object v0
.end method
.method public final setSdkVariant(I)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
.registers 2
iput p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Gg:I
return-object p0
.end method
.method public final setShowConnectingPopup(Z)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
.registers 3
iput-boolean p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Gd:Z
const/16 v0, 0x11
iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Ge:I
return-object p0
.end method
.method public final setShowConnectingPopup(ZI)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
.registers 3
iput-boolean p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Gd:Z
iput p2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Ge:I
return-object p0
.end method