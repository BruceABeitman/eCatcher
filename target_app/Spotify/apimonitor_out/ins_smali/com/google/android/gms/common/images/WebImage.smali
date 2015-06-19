.class public final Lcom/google/android/gms/common/images/WebImage;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private final a:I
.field private final b:Landroid/net/Uri;
.field private final c:I
.field private final d:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/common/images/h;
invoke-direct {v0}, Lcom/google/android/gms/common/images/h;-><init>()V
sput-object v0, Lcom/google/android/gms/common/images/WebImage;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILandroid/net/Uri;II)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/common/images/WebImage;->a:I
iput-object p2, p0, Lcom/google/android/gms/common/images/WebImage;->b:Landroid/net/Uri;
iput p3, p0, Lcom/google/android/gms/common/images/WebImage;->c:I
iput p4, p0, Lcom/google/android/gms/common/images/WebImage;->d:I
return-void
.end method
.method final a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/common/images/WebImage;->a:I
return v0
.end method
.method public final b()Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/images/WebImage;->b:Landroid/net/Uri;
return-object v0
.end method
.method public final c()I
.registers 2
iget v0, p0, Lcom/google/android/gms/common/images/WebImage;->c:I
return v0
.end method
.method public final d()I
.registers 2
iget v0, p0, Lcom/google/android/gms/common/images/WebImage;->d:I
return v0
.end method
.method public final describeContents()I
.registers 2
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
if-eqz p1, :cond_b
instance-of v2, p1, Lcom/google/android/gms/common/images/WebImage;
if-nez v2, :cond_d
:cond_b
move v0, v1
goto :goto_4
:cond_d
check-cast p1, Lcom/google/android/gms/common/images/WebImage;
iget-object v2, p0, Lcom/google/android/gms/common/images/WebImage;->b:Landroid/net/Uri;
iget-object v3, p1, Lcom/google/android/gms/common/images/WebImage;->b:Landroid/net/Uri;
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_25
iget v2, p0, Lcom/google/android/gms/common/images/WebImage;->c:I
iget v3, p1, Lcom/google/android/gms/common/images/WebImage;->c:I
if-ne v2, v3, :cond_25
iget v2, p0, Lcom/google/android/gms/common/images/WebImage;->d:I
iget v3, p1, Lcom/google/android/gms/common/images/WebImage;->d:I
if-eq v2, v3, :cond_4
:cond_25
move v0, v1
goto :goto_4
.end method
.method public final hashCode()I
.registers 4
const/4 v0, 0x3
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
iget-object v2, p0, Lcom/google/android/gms/common/images/WebImage;->b:Landroid/net/Uri;
aput-object v2, v0, v1
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/common/images/WebImage;->c:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x2
iget v2, p0, Lcom/google/android/gms/common/images/WebImage;->d:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 5
const-string v0, "Image %dx%d %s"
const/4 v1, 0x3
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget v3, p0, Lcom/google/android/gms/common/images/WebImage;->c:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
iget v3, p0, Lcom/google/android/gms/common/images/WebImage;->d:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x2
iget-object v3, p0, Lcom/google/android/gms/common/images/WebImage;->b:Landroid/net/Uri;
invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/images/h;->a(Lcom/google/android/gms/common/images/WebImage;Landroid/os/Parcel;I)V
return-void
.end method