.class public final Lcom/google/android/gms/internal/ee$a;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/internal/eq;
.field private final Bp:Ljava/util/List;
.field private final vi:Ljava/lang/String;
.field private final wj:I
.field private final zo:I
.field private final zq:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/eq;
invoke-direct {v0}, Lcom/google/android/gms/internal/eq;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/ee$a;->CREATOR:Lcom/google/android/gms/internal/eq;
return-void
.end method
.method constructor <init>(ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/ee$a;->Bp:Ljava/util/List;
iput p1, p0, Lcom/google/android/gms/internal/ee$a;->wj:I
iput-object p2, p0, Lcom/google/android/gms/internal/ee$a;->vi:Ljava/lang/String;
iget-object v0, p0, Lcom/google/android/gms/internal/ee$a;->Bp:Ljava/util/List;
invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
iput p4, p0, Lcom/google/android/gms/internal/ee$a;->zo:I
iput-object p5, p0, Lcom/google/android/gms/internal/ee$a;->zq:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;ILjava/lang/String;)V
.registers 11
const/4 v1, 0x3
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
move-object v0, p0
move-object v2, p1
move v4, p3
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ee$a;-><init>(ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V
return-void
.end method
.method public final dR()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ee$a;->vi:Ljava/lang/String;
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/google/android/gms/internal/ee$a;->vi:Ljava/lang/String;
:goto_6
return-object v0
:cond_7
const-string v0, "<<default account>>"
goto :goto_6
.end method
.method public final dS()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/ee$a;->zo:I
return v0
.end method
.method public final dT()Ljava/util/List;
.registers 3
new-instance v0, Ljava/util/ArrayList;
iget-object v1, p0, Lcom/google/android/gms/internal/ee$a;->Bp:Ljava/util/List;
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
return-object v0
.end method
.method public final dV()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ee$a;->zq:Ljava/lang/String;
return-object v0
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final getAccountName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ee$a;->vi:Ljava/lang/String;
return-object v0
.end method
.method public final getVersionCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/ee$a;->wj:I
return v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/eq;->a(Lcom/google/android/gms/internal/ee$a;Landroid/os/Parcel;I)V
return-void
.end method