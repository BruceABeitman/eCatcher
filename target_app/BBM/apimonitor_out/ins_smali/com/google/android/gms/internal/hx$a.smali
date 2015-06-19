.class public final Lcom/google/android/gms/internal/hx$a;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/internal/hw;
.field private final LE:Ljava/lang/String;
.field private final Ot:Ljava/lang/String;
.field private final Ou:I
.field private final mTag:Ljava/lang/String;
.field final wj:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/hw;
invoke-direct {v0}, Lcom/google/android/gms/internal/hw;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/hx$a;->CREATOR:Lcom/google/android/gms/internal/hw;
return-void
.end method
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/hx$a;->wj:I
iput-object p2, p0, Lcom/google/android/gms/internal/hx$a;->LE:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/internal/hx$a;->mTag:Ljava/lang/String;
iput-object p4, p0, Lcom/google/android/gms/internal/hx$a;->Ot:Ljava/lang/String;
iput p5, p0, Lcom/google/android/gms/internal/hx$a;->Ou:I
return-void
.end method
.method public final describeContents()I
.registers 2
sget-object v0, Lcom/google/android/gms/internal/hx$a;->CREATOR:Lcom/google/android/gms/internal/hw;
const/4 v0, 0x0
return v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
instance-of v2, p1, Lcom/google/android/gms/internal/hx$a;
if-nez v2, :cond_b
move v0, v1
goto :goto_4
:cond_b
check-cast p1, Lcom/google/android/gms/internal/hx$a;
iget-object v2, p0, Lcom/google/android/gms/internal/hx$a;->LE:Ljava/lang/String;
iget-object v3, p1, Lcom/google/android/gms/internal/hx$a;->LE:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_21
iget-object v2, p0, Lcom/google/android/gms/internal/hx$a;->mTag:Ljava/lang/String;
iget-object v3, p1, Lcom/google/android/gms/internal/hx$a;->mTag:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ep;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:cond_21
move v0, v1
goto :goto_4
.end method
.method public final gH()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/hx$a;->Ot:Ljava/lang/String;
return-object v0
.end method
.method public final gI()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/hx$a;->Ou:I
return v0
.end method
.method public final getTag()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/hx$a;->mTag:Ljava/lang/String;
return-object v0
.end method
.method public final gt()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/hx$a;->LE:Ljava/lang/String;
return-object v0
.end method
.method public final hashCode()I
.registers 4
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
iget-object v2, p0, Lcom/google/android/gms/internal/hx$a;->LE:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x1
iget-object v2, p0, Lcom/google/android/gms/internal/hx$a;->mTag:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/internal/hx$a;->Ot:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x3
iget v2, p0, Lcom/google/android/gms/internal/hx$a;->Ou:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->hashCode([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 4
invoke-static {p0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
const-string v1, "placeId"
iget-object v2, p0, Lcom/google/android/gms/internal/hx$a;->LE:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
const-string v1, "tag"
iget-object v2, p0, Lcom/google/android/gms/internal/hx$a;->mTag:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
const-string v1, "callingAppPackageName"
iget-object v2, p0, Lcom/google/android/gms/internal/hx$a;->Ot:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
const-string v1, "callingAppVersionCode"
iget v2, p0, Lcom/google/android/gms/internal/hx$a;->Ou:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/ep$a;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 4
sget-object v0, Lcom/google/android/gms/internal/hx$a;->CREATOR:Lcom/google/android/gms/internal/hw;
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/hw;->a(Lcom/google/android/gms/internal/hx$a;Landroid/os/Parcel;I)V
return-void
.end method