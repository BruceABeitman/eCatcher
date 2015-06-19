.class public Lcom/google/android/gms/wearable/Asset;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private TC:[B
.field private ald:Ljava/lang/String;
.field public ale:Landroid/os/ParcelFileDescriptor;
.field public uri:Landroid/net/Uri;
.field final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/wearable/a;
invoke-direct {v0}, Lcom/google/android/gms/wearable/a;-><init>()V
sput-object v0, Lcom/google/android/gms/wearable/Asset;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(I[BLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/wearable/Asset;->xJ:I
iput-object p2, p0, Lcom/google/android/gms/wearable/Asset;->TC:[B
iput-object p3, p0, Lcom/google/android/gms/wearable/Asset;->ald:Ljava/lang/String;
iput-object p4, p0, Lcom/google/android/gms/wearable/Asset;->ale:Landroid/os/ParcelFileDescriptor;
iput-object p5, p0, Lcom/google/android/gms/wearable/Asset;->uri:Landroid/net/Uri;
return-void
.end method
.method public static createFromBytes([B)Lcom/google/android/gms/wearable/Asset;
.registers 7
const/4 v3, 0x0
if-nez p0, :cond_b
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Asset data cannot be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_b
new-instance v0, Lcom/google/android/gms/wearable/Asset;
const/4 v1, 0x1
move-object v2, p0
move-object v4, v3
move-object v5, v3
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/wearable/Asset;-><init>(I[BLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;)V
return-object v0
.end method
.method public static createFromFd(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/wearable/Asset;
.registers 7
const/4 v2, 0x0
if-nez p0, :cond_b
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Asset fd cannot be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_b
new-instance v0, Lcom/google/android/gms/wearable/Asset;
const/4 v1, 0x1
move-object v3, v2
move-object v4, p0
move-object v5, v2
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/wearable/Asset;-><init>(I[BLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;)V
return-object v0
.end method
.method public static createFromRef(Ljava/lang/String;)Lcom/google/android/gms/wearable/Asset;
.registers 7
const/4 v2, 0x0
if-nez p0, :cond_b
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Asset digest cannot be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_b
new-instance v0, Lcom/google/android/gms/wearable/Asset;
const/4 v1, 0x1
move-object v3, p0
move-object v4, v2
move-object v5, v2
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/wearable/Asset;-><init>(I[BLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;)V
return-object v0
.end method
.method public static createFromUri(Landroid/net/Uri;)Lcom/google/android/gms/wearable/Asset;
.registers 7
const/4 v2, 0x0
if-nez p0, :cond_b
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Asset uri cannot be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_b
new-instance v0, Lcom/google/android/gms/wearable/Asset;
const/4 v1, 0x1
move-object v3, v2
move-object v4, v2
move-object v5, p0
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/wearable/Asset;-><init>(I[BLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;)V
return-object v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
instance-of v2, p1, Lcom/google/android/gms/wearable/Asset;
if-nez v2, :cond_b
move v0, v1
goto :goto_4
:cond_b
check-cast p1, Lcom/google/android/gms/wearable/Asset;
iget-object v2, p0, Lcom/google/android/gms/wearable/Asset;->TC:[B
iget-object v3, p1, Lcom/google/android/gms/wearable/Asset;->TC:[B
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_35
iget-object v2, p0, Lcom/google/android/gms/wearable/Asset;->ald:Ljava/lang/String;
iget-object v3, p1, Lcom/google/android/gms/wearable/Asset;->ald:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_35
iget-object v2, p0, Lcom/google/android/gms/wearable/Asset;->ale:Landroid/os/ParcelFileDescriptor;
iget-object v3, p1, Lcom/google/android/gms/wearable/Asset;->ale:Landroid/os/ParcelFileDescriptor;
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_35
iget-object v2, p0, Lcom/google/android/gms/wearable/Asset;->uri:Landroid/net/Uri;
iget-object v3, p1, Lcom/google/android/gms/wearable/Asset;->uri:Landroid/net/Uri;
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:cond_35
move v0, v1
goto :goto_4
.end method
.method public getData()[B
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wearable/Asset;->TC:[B
return-object v0
.end method
.method public getDigest()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wearable/Asset;->ald:Ljava/lang/String;
return-object v0
.end method
.method public getFd()Landroid/os/ParcelFileDescriptor;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wearable/Asset;->ale:Landroid/os/ParcelFileDescriptor;
return-object v0
.end method
.method public getUri()Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wearable/Asset;->uri:Landroid/net/Uri;
return-object v0
.end method
.method public hashCode()I
.registers 4
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
iget-object v2, p0, Lcom/google/android/gms/wearable/Asset;->TC:[B
aput-object v2, v0, v1
const/4 v1, 0x1
iget-object v2, p0, Lcom/google/android/gms/wearable/Asset;->ald:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/wearable/Asset;->ale:Landroid/os/ParcelFileDescriptor;
aput-object v2, v0, v1
const/4 v1, 0x3
iget-object v2, p0, Lcom/google/android/gms/wearable/Asset;->uri:Landroid/net/Uri;
aput-object v2, v0, v1
invoke-static {v0}, Lcom/google/android/gms/internal/hl;->hashCode([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Asset[@"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Lcom/google/android/gms/wearable/Asset;->hashCode()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/google/android/gms/wearable/Asset;->ald:Ljava/lang/String;
if-nez v1, :cond_53
const-string v1, ", nodigest"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_1e
iget-object v1, p0, Lcom/google/android/gms/wearable/Asset;->TC:[B
if-eqz v1, :cond_2d
const-string v1, ", size="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/google/android/gms/wearable/Asset;->TC:[B
array-length v1, v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
:cond_2d
iget-object v1, p0, Lcom/google/android/gms/wearable/Asset;->ale:Landroid/os/ParcelFileDescriptor;
if-eqz v1, :cond_3b
const-string v1, ", fd="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/google/android/gms/wearable/Asset;->ale:Landroid/os/ParcelFileDescriptor;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:cond_3b
iget-object v1, p0, Lcom/google/android/gms/wearable/Asset;->uri:Landroid/net/Uri;
if-eqz v1, :cond_49
const-string v1, ", uri="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/google/android/gms/wearable/Asset;->uri:Landroid/net/Uri;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:cond_49
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_53
const-string v1, ", "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/google/android/gms/wearable/Asset;->ald:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_1e
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
or-int/lit8 v0, p2, 0x1
invoke-static {p0, p1, v0}, Lcom/google/android/gms/wearable/a;->a(Lcom/google/android/gms/wearable/Asset;Landroid/os/Parcel;I)V
return-void
.end method