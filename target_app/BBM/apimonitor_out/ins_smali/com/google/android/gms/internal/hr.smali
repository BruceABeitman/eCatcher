.class public final Lcom/google/android/gms/internal/hr;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/internal/hs;
.field private final LF:Lcom/google/android/gms/location/LocationRequest;
.field private final LG:Lcom/google/android/gms/internal/hn;
.field final wj:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/hs;
invoke-direct {v0}, Lcom/google/android/gms/internal/hs;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/hr;->CREATOR:Lcom/google/android/gms/internal/hs;
return-void
.end method
.method public constructor <init>(ILcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/internal/hn;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/hr;->wj:I
iput-object p2, p0, Lcom/google/android/gms/internal/hr;->LF:Lcom/google/android/gms/location/LocationRequest;
iput-object p3, p0, Lcom/google/android/gms/internal/hr;->LG:Lcom/google/android/gms/internal/hn;
return-void
.end method
.method public final describeContents()I
.registers 2
sget-object v0, Lcom/google/android/gms/internal/hr;->CREATOR:Lcom/google/android/gms/internal/hs;
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
instance-of v2, p1, Lcom/google/android/gms/internal/hr;
if-nez v2, :cond_b
move v0, v1
goto :goto_4
:cond_b
check-cast p1, Lcom/google/android/gms/internal/hr;
iget-object v2, p0, Lcom/google/android/gms/internal/hr;->LF:Lcom/google/android/gms/location/LocationRequest;
iget-object v3, p1, Lcom/google/android/gms/internal/hr;->LF:Lcom/google/android/gms/location/LocationRequest;
invoke-virtual {v2, v3}, Lcom/google/android/gms/location/LocationRequest;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_21
iget-object v2, p0, Lcom/google/android/gms/internal/hr;->LG:Lcom/google/android/gms/internal/hn;
iget-object v3, p1, Lcom/google/android/gms/internal/hr;->LG:Lcom/google/android/gms/internal/hn;
invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/hn;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:cond_21
move v0, v1
goto :goto_4
.end method
.method public final gu()Lcom/google/android/gms/location/LocationRequest;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/hr;->LF:Lcom/google/android/gms/location/LocationRequest;
return-object v0
.end method
.method public final gv()Lcom/google/android/gms/internal/hn;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/hr;->LG:Lcom/google/android/gms/internal/hn;
return-object v0
.end method
.method public final hashCode()I
.registers 4
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
iget-object v2, p0, Lcom/google/android/gms/internal/hr;->LF:Lcom/google/android/gms/location/LocationRequest;
aput-object v2, v0, v1
const/4 v1, 0x1
iget-object v2, p0, Lcom/google/android/gms/internal/hr;->LG:Lcom/google/android/gms/internal/hn;
aput-object v2, v0, v1
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->hashCode([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 4
invoke-static {p0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
const-string v1, "locationRequest"
iget-object v2, p0, Lcom/google/android/gms/internal/hr;->LF:Lcom/google/android/gms/location/LocationRequest;
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
const-string v1, "filter"
iget-object v2, p0, Lcom/google/android/gms/internal/hr;->LG:Lcom/google/android/gms/internal/hn;
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/ep$a;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 4
sget-object v0, Lcom/google/android/gms/internal/hr;->CREATOR:Lcom/google/android/gms/internal/hs;
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/hs;->a(Lcom/google/android/gms/internal/hr;Landroid/os/Parcel;I)V
return-void
.end method