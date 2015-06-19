.class public final Lcom/google/android/gms/games/internal/game/GameBadgeEntity;
.super Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;
.implements Lcom/google/android/gms/games/internal/game/GameBadge;
.field public static final CREATOR:Lcom/google/android/gms/games/internal/game/d;
.field private final a:I
.field private b:I
.field private c:Ljava/lang/String;
.field private d:Ljava/lang/String;
.field private e:Landroid/net/Uri;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/games/internal/game/c;
invoke-direct {v0}, Lcom/google/android/gms/games/internal/game/c;-><init>()V
sput-object v0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->CREATOR:Lcom/google/android/gms/games/internal/game/d;
return-void
.end method
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
.registers 6
invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V
iput p1, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->a:I
iput p2, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->b:I
iput-object p3, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->c:Ljava/lang/String;
iput-object p4, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->d:Ljava/lang/String;
iput-object p5, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->e:Landroid/net/Uri;
return-void
.end method
.method public constructor <init>(Lcom/google/android/gms/games/internal/game/GameBadge;)V
.registers 3
invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->a:I
invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/GameBadge;->b()I
move-result v0
iput v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->b:I
invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/GameBadge;->c()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->c:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/GameBadge;->d()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->d:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/GameBadge;->e()Landroid/net/Uri;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->e:Landroid/net/Uri;
return-void
.end method
.method static a(Lcom/google/android/gms/games/internal/game/GameBadge;)I
.registers 4
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/GameBadge;->b()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x1
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/GameBadge;->c()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x2
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/GameBadge;->d()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x3
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/GameBadge;->e()Landroid/net/Uri;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method static a(Lcom/google/android/gms/games/internal/game/GameBadge;Ljava/lang/Object;)Z
.registers 6
const/4 v1, 0x1
const/4 v0, 0x0
instance-of v2, p1, Lcom/google/android/gms/games/internal/game/GameBadge;
if-nez v2, :cond_7
:goto_6
:cond_6
return v0
:cond_7
if-ne p0, p1, :cond_b
move v0, v1
goto :goto_6
:cond_b
check-cast p1, Lcom/google/android/gms/games/internal/game/GameBadge;
invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/GameBadge;->b()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/GameBadge;->c()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/GameBadge;->d()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/GameBadge;->e()Landroid/net/Uri;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
move v0, v1
goto :goto_6
.end method
.method static synthetic a(Ljava/lang/Integer;)Z
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->b(Ljava/lang/Integer;)Z
move-result v0
return v0
.end method
.method static synthetic a(Ljava/lang/String;)Z
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->b(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method static b(Lcom/google/android/gms/games/internal/game/GameBadge;)Ljava/lang/String;
.registers 4
invoke-static {p0}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "Type"
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/GameBadge;->b()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "Title"
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/GameBadge;->c()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "Description"
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/GameBadge;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "IconImageUri"
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/GameBadge;->e()Landroid/net/Uri;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/he;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic g()Ljava/lang/Integer;
.registers 1
invoke-static {}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->z()Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method
.method public final synthetic a()Ljava/lang/Object;
.registers 1
return-object p0
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->b:I
return v0
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->c:Ljava/lang/String;
return-object v0
.end method
.method public final d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->d:Ljava/lang/String;
return-object v0
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final e()Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->e:Landroid/net/Uri;
return-object v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->a(Lcom/google/android/gms/games/internal/game/GameBadge;Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final f()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->a:I
return v0
.end method
.method public final hashCode()I
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->a(Lcom/google/android/gms/games/internal/game/GameBadge;)I
move-result v0
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->b(Lcom/google/android/gms/games/internal/game/GameBadge;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 4
invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->A()Z
move-result v0
if-nez v0, :cond_a
invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/internal/game/d;->a(Lcom/google/android/gms/games/internal/game/GameBadgeEntity;Landroid/os/Parcel;I)V
:goto_9
return-void
:cond_a
iget v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->b:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->c:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->d:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->e:Landroid/net/Uri;
if-nez v0, :cond_22
const/4 v0, 0x0
:goto_1e
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_9
:cond_22
iget-object v0, p0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->e:Landroid/net/Uri;
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_1e
.end method