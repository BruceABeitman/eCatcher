.class public final Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final Ek:Landroid/os/Bundle;
.field final wj:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/metadata/internal/f;
invoke-direct {v0}, Lcom/google/android/gms/drive/metadata/internal/f;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILandroid/os/Bundle;)V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->wj:I
invoke-static {p2}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
iput-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->Ek:Landroid/os/Bundle;
iget-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->Ek:Landroid/os/Bundle;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->Ek:Landroid/os/Bundle;
invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_29
:cond_29
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_53
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->ar(Ljava/lang/String;)Lcom/google/android/gms/drive/metadata/MetadataField;
move-result-object v3
if-nez v3, :cond_29
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
const-string v3, "MetadataBundle"
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Ignored unknown metadata field in bundle: "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_29
:cond_53
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_57
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_69
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v2, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->Ek:Landroid/os/Bundle;
invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
goto :goto_57
:cond_69
return-void
.end method
.method private constructor <init>(Landroid/os/Bundle;)V
.registers 3
const/4 v0, 0x1
invoke-direct {p0, v0, p1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;-><init>(ILandroid/os/Bundle;)V
return-void
.end method
.method public static a(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
.registers 3
invoke-static {}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->fh()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->b(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V
return-object v0
.end method
.method public static a(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
.registers 4
new-instance v0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
new-instance v1, Landroid/os/Bundle;
iget-object v2, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->Ek:Landroid/os/Bundle;
invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;-><init>(Landroid/os/Bundle;)V
return-object v0
.end method
.method public static fh()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
.registers 2
new-instance v0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;-><init>(Landroid/os/Bundle;)V
return-object v0
.end method
.method public final a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->Ek:Landroid/os/Bundle;
invoke-virtual {p1, v0}, Lcom/google/android/gms/drive/metadata/MetadataField;->d(Landroid/os/Bundle;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final b(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V
.registers 6
invoke-virtual {p1}, Lcom/google/android/gms/drive/metadata/MetadataField;->getName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->ar(Ljava/lang/String;)Lcom/google/android/gms/drive/metadata/MetadataField;
move-result-object v0
if-nez v0, :cond_23
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unregistered field: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/google/android/gms/drive/metadata/MetadataField;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_23
iget-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->Ek:Landroid/os/Bundle;
invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/drive/metadata/MetadataField;->a(Ljava/lang/Object;Landroid/os/Bundle;)V
return-void
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 8
const/4 v1, 0x1
const/4 v2, 0x0
if-ne p0, p1, :cond_6
move v0, v1
:goto_5
return v0
:cond_6
instance-of v0, p1, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
if-nez v0, :cond_c
move v0, v2
goto :goto_5
:cond_c
check-cast p1, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
iget-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->Ek:Landroid/os/Bundle;
invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v0
iget-object v3, p1, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->Ek:Landroid/os/Bundle;
invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_22
move v0, v2
goto :goto_5
:cond_22
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_26
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_46
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v4, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->Ek:Landroid/os/Bundle;
invoke-virtual {v4, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v4
iget-object v5, p1, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->Ek:Landroid/os/Bundle;
invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
invoke-static {v4, v0}, Lcom/google/android/gms/internal/ep;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_26
move v0, v2
goto :goto_5
:cond_46
move v0, v1
goto :goto_5
.end method
.method public final fi()Ljava/util/Set;
.registers 4
new-instance v1, Ljava/util/HashSet;
invoke-direct {v1}, Ljava/util/HashSet;-><init>()V
iget-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->Ek:Landroid/os/Bundle;
invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_f
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_23
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->ar(Ljava/lang/String;)Lcom/google/android/gms/drive/metadata/MetadataField;
move-result-object v0
invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_f
:cond_23
return-object v1
.end method
.method public final hashCode()I
.registers 5
const/4 v0, 0x1
iget-object v1, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->Ek:Landroid/os/Bundle;
invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
move v1, v0
:goto_c
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_27
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
mul-int/lit8 v1, v1, 0x1f
iget-object v3, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->Ek:Landroid/os/Bundle;
invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
add-int/2addr v0, v1
move v1, v0
goto :goto_c
:cond_27
return v1
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "MetadataBundle [values="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->Ek:Landroid/os/Bundle;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/internal/f;->a(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Landroid/os/Parcel;I)V
return-void
.end method