.class public Lcom/google/android/gms/plus/internal/PlusCommonExtras;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/plus/internal/f;
.field public static TAG:Ljava/lang/String;
.field private Rj:Ljava/lang/String;
.field private Rk:Ljava/lang/String;
.field private final wj:I
.method static constructor <clinit>()V
.registers 1
const-string v0, "PlusCommonExtras"
sput-object v0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->TAG:Ljava/lang/String;
new-instance v0, Lcom/google/android/gms/plus/internal/f;
invoke-direct {v0}, Lcom/google/android/gms/plus/internal/f;-><init>()V
sput-object v0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->CREATOR:Lcom/google/android/gms/plus/internal/f;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->wj:I
const-string v0, ""
iput-object v0, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->Rj:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->Rk:Ljava/lang/String;
return-void
.end method
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->wj:I
iput-object p2, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->Rj:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->Rk:Ljava/lang/String;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 5
const/4 v0, 0x0
instance-of v1, p1, Lcom/google/android/gms/plus/internal/PlusCommonExtras;
if-nez v1, :cond_6
:cond_5
:goto_5
return v0
:cond_6
check-cast p1, Lcom/google/android/gms/plus/internal/PlusCommonExtras;
iget v1, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->wj:I
iget v2, p1, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->wj:I
if-ne v1, v2, :cond_5
iget-object v1, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->Rj:Ljava/lang/String;
iget-object v2, p1, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->Rj:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/google/android/gms/internal/ep;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5
iget-object v1, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->Rk:Ljava/lang/String;
iget-object v2, p1, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->Rk:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/google/android/gms/internal/ep;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5
const/4 v0, 0x1
goto :goto_5
.end method
.method public getVersionCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->wj:I
return v0
.end method
.method public hashCode()I
.registers 4
const/4 v0, 0x3
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
iget v2, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->wj:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x1
iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->Rj:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->Rk:Ljava/lang/String;
aput-object v2, v0, v1
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->hashCode([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public ho()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->Rj:Ljava/lang/String;
return-object v0
.end method
.method public hp()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->Rk:Ljava/lang/String;
return-object v0
.end method
.method public m(Landroid/os/Bundle;)V
.registers 2
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 4
invoke-static {p0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
const-string v1, "versionCode"
iget v2, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->wj:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
const-string v1, "Gpsrc"
iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->Rj:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
const-string v1, "ClientCallingPackage"
iget-object v2, p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->Rk:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/ep$a;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/plus/internal/f;->a(Lcom/google/android/gms/plus/internal/PlusCommonExtras;Landroid/os/Parcel;I)V
return-void
.end method