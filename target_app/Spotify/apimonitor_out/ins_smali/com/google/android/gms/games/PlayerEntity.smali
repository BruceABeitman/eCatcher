.class public final Lcom/google/android/gms/games/PlayerEntity;
.super Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;
.implements Lcom/google/android/gms/games/Player;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private final a:I
.field private final b:Ljava/lang/String;
.field private final c:Ljava/lang/String;
.field private final d:Landroid/net/Uri;
.field private final e:Landroid/net/Uri;
.field private final f:J
.field private final g:I
.field private final h:J
.field private final i:Ljava/lang/String;
.field private final j:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/games/c;
invoke-direct {v0}, Lcom/google/android/gms/games/c;-><init>()V
sput-object v0, Lcom/google/android/gms/games/PlayerEntity;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;JIJLjava/lang/String;Ljava/lang/String;)V
.registers 13
invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V
iput p1, p0, Lcom/google/android/gms/games/PlayerEntity;->a:I
iput-object p2, p0, Lcom/google/android/gms/games/PlayerEntity;->b:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/games/PlayerEntity;->c:Ljava/lang/String;
iput-object p4, p0, Lcom/google/android/gms/games/PlayerEntity;->d:Landroid/net/Uri;
iput-object p11, p0, Lcom/google/android/gms/games/PlayerEntity;->i:Ljava/lang/String;
iput-object p5, p0, Lcom/google/android/gms/games/PlayerEntity;->e:Landroid/net/Uri;
iput-object p12, p0, Lcom/google/android/gms/games/PlayerEntity;->j:Ljava/lang/String;
iput-wide p6, p0, Lcom/google/android/gms/games/PlayerEntity;->f:J
iput p8, p0, Lcom/google/android/gms/games/PlayerEntity;->g:I
iput-wide p9, p0, Lcom/google/android/gms/games/PlayerEntity;->h:J
return-void
.end method
.method public constructor <init>(Lcom/google/android/gms/games/Player;)V
.registers 6
invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V
const/4 v0, 0x4
iput v0, p0, Lcom/google/android/gms/games/PlayerEntity;->a:I
invoke-interface {p1}, Lcom/google/android/gms/games/Player;->b()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->b:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/Player;->c()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->c:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/Player;->d()Landroid/net/Uri;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->d:Landroid/net/Uri;
invoke-interface {p1}, Lcom/google/android/gms/games/Player;->e()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->i:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/Player;->f()Landroid/net/Uri;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->e:Landroid/net/Uri;
invoke-interface {p1}, Lcom/google/android/gms/games/Player;->g()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->j:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/Player;->h()J
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/gms/games/PlayerEntity;->f:J
invoke-interface {p1}, Lcom/google/android/gms/games/Player;->j()I
move-result v0
iput v0, p0, Lcom/google/android/gms/games/PlayerEntity;->g:I
invoke-interface {p1}, Lcom/google/android/gms/games/Player;->i()J
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/gms/games/PlayerEntity;->h:J
iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->b:Ljava/lang/String;
invoke-static {v0}, Lcom/google/android/gms/internal/fw;->a(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->c:Ljava/lang/String;
invoke-static {v0}, Lcom/google/android/gms/internal/fw;->a(Ljava/lang/Object;)V
iget-wide v0, p0, Lcom/google/android/gms/games/PlayerEntity;->f:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-lez v0, :cond_53
const/4 v0, 0x1
:goto_4f
invoke-static {v0}, Lcom/google/android/gms/internal/fw;->a(Z)V
return-void
:cond_53
const/4 v0, 0x0
goto :goto_4f
.end method
.method static a(Lcom/google/android/gms/games/Player;)I
.registers 5
const/4 v0, 0x5
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
invoke-interface {p0}, Lcom/google/android/gms/games/Player;->b()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x1
invoke-interface {p0}, Lcom/google/android/gms/games/Player;->c()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x2
invoke-interface {p0}, Lcom/google/android/gms/games/Player;->d()Landroid/net/Uri;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x3
invoke-interface {p0}, Lcom/google/android/gms/games/Player;->f()Landroid/net/Uri;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x4
invoke-interface {p0}, Lcom/google/android/gms/games/Player;->h()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method static a(Lcom/google/android/gms/games/Player;Ljava/lang/Object;)Z
.registers 7
const/4 v1, 0x1
const/4 v0, 0x0
instance-of v2, p1, Lcom/google/android/gms/games/Player;
if-nez v2, :cond_7
:goto_6
:cond_6
return v0
:cond_7
if-ne p0, p1, :cond_b
move v0, v1
goto :goto_6
:cond_b
check-cast p1, Lcom/google/android/gms/games/Player;
invoke-interface {p1}, Lcom/google/android/gms/games/Player;->b()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/Player;->b()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/Player;->c()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/Player;->c()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/Player;->d()Landroid/net/Uri;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/Player;->d()Landroid/net/Uri;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/Player;->f()Landroid/net/Uri;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/Player;->f()Landroid/net/Uri;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/Player;->h()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/Player;->h()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
move v0, v1
goto :goto_6
.end method
.method static synthetic a(Ljava/lang/Integer;)Z
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->b(Ljava/lang/Integer;)Z
move-result v0
return v0
.end method
.method static synthetic a(Ljava/lang/String;)Z
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->b(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method static b(Lcom/google/android/gms/games/Player;)Ljava/lang/String;
.registers 5
invoke-static {p0}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "PlayerId"
invoke-interface {p0}, Lcom/google/android/gms/games/Player;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "DisplayName"
invoke-interface {p0}, Lcom/google/android/gms/games/Player;->c()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "IconImageUri"
invoke-interface {p0}, Lcom/google/android/gms/games/Player;->d()Landroid/net/Uri;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "IconImageUrl"
invoke-interface {p0}, Lcom/google/android/gms/games/Player;->e()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "HiResImageUri"
invoke-interface {p0}, Lcom/google/android/gms/games/Player;->f()Landroid/net/Uri;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "HiResImageUrl"
invoke-interface {p0}, Lcom/google/android/gms/games/Player;->g()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "RetrievedTimestamp"
invoke-interface {p0}, Lcom/google/android/gms/games/Player;->h()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/he;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic l()Ljava/lang/Integer;
.registers 1
invoke-static {}, Lcom/google/android/gms/games/PlayerEntity;->z()Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic a()Ljava/lang/Object;
.registers 1
return-object p0
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->b:Ljava/lang/String;
return-object v0
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->c:Ljava/lang/String;
return-object v0
.end method
.method public final d()Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->d:Landroid/net/Uri;
return-object v0
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->i:Ljava/lang/String;
return-object v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/PlayerEntity;->a(Lcom/google/android/gms/games/Player;Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final f()Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->e:Landroid/net/Uri;
return-object v0
.end method
.method public final g()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->j:Ljava/lang/String;
return-object v0
.end method
.method public final h()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/games/PlayerEntity;->f:J
return-wide v0
.end method
.method public final hashCode()I
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->a(Lcom/google/android/gms/games/Player;)I
move-result v0
return v0
.end method
.method public final i()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/games/PlayerEntity;->h:J
return-wide v0
.end method
.method public final j()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/PlayerEntity;->g:I
return v0
.end method
.method public final k()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/PlayerEntity;->a:I
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->b(Lcom/google/android/gms/games/Player;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 5
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->A()Z
move-result v0
if-nez v0, :cond_b
invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/d;->a(Lcom/google/android/gms/games/PlayerEntity;Landroid/os/Parcel;I)V
:goto_a
return-void
:cond_b
iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->b:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->c:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->d:Landroid/net/Uri;
if-nez v0, :cond_2a
move-object v0, v1
:goto_1a
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->e:Landroid/net/Uri;
if-nez v0, :cond_31
:goto_21
invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-wide v0, p0, Lcom/google/android/gms/games/PlayerEntity;->f:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
goto :goto_a
:cond_2a
iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->d:Landroid/net/Uri;
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_1a
:cond_31
iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->e:Landroid/net/Uri;
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v1
goto :goto_21
.end method