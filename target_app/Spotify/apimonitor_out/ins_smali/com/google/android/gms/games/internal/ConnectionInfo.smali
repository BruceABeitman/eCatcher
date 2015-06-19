.class public Lcom/google/android/gms/games/internal/ConnectionInfo;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/games/internal/a;
.field private final a:I
.field private final b:Ljava/lang/String;
.field private final c:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/games/internal/a;
invoke-direct {v0}, Lcom/google/android/gms/games/internal/a;-><init>()V
sput-object v0, Lcom/google/android/gms/games/internal/ConnectionInfo;->CREATOR:Lcom/google/android/gms/games/internal/a;
return-void
.end method
.method public constructor <init>(ILjava/lang/String;I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/games/internal/ConnectionInfo;->a:I
iput-object p2, p0, Lcom/google/android/gms/games/internal/ConnectionInfo;->b:Ljava/lang/String;
iput p3, p0, Lcom/google/android/gms/games/internal/ConnectionInfo;->c:I
return-void
.end method
.method public final a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/internal/ConnectionInfo;->a:I
return v0
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/ConnectionInfo;->b:Ljava/lang/String;
return-object v0
.end method
.method public final c()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/internal/ConnectionInfo;->c:I
return v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/internal/a;->a(Lcom/google/android/gms/games/internal/ConnectionInfo;Landroid/os/Parcel;)V
return-void
.end method