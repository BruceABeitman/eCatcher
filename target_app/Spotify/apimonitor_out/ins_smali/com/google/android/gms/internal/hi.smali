.class public Lcom/google/android/gms/internal/hi;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/internal/je;
.field final a:I
.field private final b:Ljava/lang/String;
.field private final c:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/je;
invoke-direct {v0}, Lcom/google/android/gms/internal/je;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/hi;->CREATOR:Lcom/google/android/gms/internal/je;
return-void
.end method
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/hi;->a:I
iput-object p2, p0, Lcom/google/android/gms/internal/hi;->b:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/internal/hi;->c:Ljava/lang/String;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/hi;->b:Ljava/lang/String;
return-object v0
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/hi;->c:Ljava/lang/String;
return-object v0
.end method
.method public describeContents()I
.registers 2
sget-object v0, Lcom/google/android/gms/internal/hi;->CREATOR:Lcom/google/android/gms/internal/je;
const/4 v0, 0x0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 5
const/4 v0, 0x0
instance-of v1, p1, Lcom/google/android/gms/internal/hi;
if-nez v1, :cond_6
:cond_5
:goto_5
return v0
:cond_6
check-cast p1, Lcom/google/android/gms/internal/hi;
iget-object v1, p0, Lcom/google/android/gms/internal/hi;->b:Ljava/lang/String;
iget-object v2, p1, Lcom/google/android/gms/internal/hi;->b:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5
iget-object v1, p0, Lcom/google/android/gms/internal/hi;->c:Ljava/lang/String;
iget-object v2, p1, Lcom/google/android/gms/internal/hi;->c:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5
const/4 v0, 0x1
goto :goto_5
.end method
.method public hashCode()I
.registers 4
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
iget-object v2, p0, Lcom/google/android/gms/internal/hi;->b:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x1
iget-object v2, p0, Lcom/google/android/gms/internal/hi;->c:Ljava/lang/String;
aput-object v2, v0, v1
invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 4
invoke-static {p0}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "mPlaceId"
iget-object v2, p0, Lcom/google/android/gms/internal/hi;->b:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "mTag"
iget-object v2, p0, Lcom/google/android/gms/internal/hi;->c:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/he;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
sget-object v0, Lcom/google/android/gms/internal/hi;->CREATOR:Lcom/google/android/gms/internal/je;
invoke-static {p0, p1}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/hi;Landroid/os/Parcel;)V
return-void
.end method