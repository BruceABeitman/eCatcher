.class public final Lcom/google/android/gms/internal/ih$a;
.super Lcom/google/android/gms/internal/ga;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/plus/a/b/b;
.field public static final CREATOR:Lcom/google/android/gms/internal/ka;
.field private static final a:Ljava/util/HashMap;
.field private final b:Ljava/util/Set;
.field private final c:I
.field private d:I
.field private e:I
.method static constructor <clinit>()V
.registers 4
new-instance v0, Lcom/google/android/gms/internal/ka;
invoke-direct {v0}, Lcom/google/android/gms/internal/ka;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/ih$a;->CREATOR:Lcom/google/android/gms/internal/ka;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/ih$a;->a:Ljava/util/HashMap;
const-string v1, "max"
const-string v2, "max"
const/4 v3, 0x2
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ga$a;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/ga$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/ih$a;->a:Ljava/util/HashMap;
const-string v1, "min"
const-string v2, "min"
const/4 v3, 0x3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ga$a;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/ga$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/internal/ga;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/internal/ih$a;->c:I
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/ih$a;->b:Ljava/util/Set;
return-void
.end method
.method constructor <init>(Ljava/util/Set;III)V
.registers 5
invoke-direct {p0}, Lcom/google/android/gms/internal/ga;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/ih$a;->b:Ljava/util/Set;
iput p2, p0, Lcom/google/android/gms/internal/ih$a;->c:I
iput p3, p0, Lcom/google/android/gms/internal/ih$a;->d:I
iput p4, p0, Lcom/google/android/gms/internal/ih$a;->e:I
return-void
.end method
.method public final synthetic a()Ljava/lang/Object;
.registers 1
return-object p0
.end method
.method protected final a(Lcom/google/android/gms/internal/ga$a;)Z
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/ih$a;->b:Ljava/util/Set;
invoke-virtual {p1}, Lcom/google/android/gms/internal/ga$a;->g()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method protected final b(Lcom/google/android/gms/internal/ga$a;)Ljava/lang/Object;
.registers 5
invoke-virtual {p1}, Lcom/google/android/gms/internal/ga$a;->g()I
move-result v0
packed-switch v0, :pswitch_data_2e
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unknown safe parcelable id="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/google/android/gms/internal/ga$a;->g()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_20
iget v0, p0, Lcom/google/android/gms/internal/ih$a;->d:I
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
:goto_26
return-object v0
:pswitch_27
iget v0, p0, Lcom/google/android/gms/internal/ih$a;->e:I
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
goto :goto_26
:pswitch_data_2e
.packed-switch 0x2
:pswitch_20
:pswitch_27
.end packed-switch
.end method
.method public final b()Ljava/util/HashMap;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/ih$a;->a:Ljava/util/HashMap;
return-object v0
.end method
.method protected final c()Ljava/lang/Object;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method protected final d()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final describeContents()I
.registers 2
sget-object v0, Lcom/google/android/gms/internal/ih$a;->CREATOR:Lcom/google/android/gms/internal/ka;
const/4 v0, 0x0
return v0
.end method
.method final e()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ih$a;->b:Ljava/util/Set;
return-object v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 7
const/4 v2, 0x1
const/4 v1, 0x0
instance-of v0, p1, Lcom/google/android/gms/internal/ih$a;
if-nez v0, :cond_8
move v0, v1
:goto_7
return v0
:cond_8
if-ne p0, p1, :cond_c
move v0, v2
goto :goto_7
:cond_c
check-cast p1, Lcom/google/android/gms/internal/ih$a;
sget-object v0, Lcom/google/android/gms/internal/ih$a;->a:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_18
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_4a
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/ga$a;
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ih$a;->a(Lcom/google/android/gms/internal/ga$a;)Z
move-result v4
if-eqz v4, :cond_42
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ih$a;->a(Lcom/google/android/gms/internal/ga$a;)Z
move-result v4
if-eqz v4, :cond_40
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ih$a;->b(Lcom/google/android/gms/internal/ga$a;)Ljava/lang/Object;
move-result-object v4
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ih$a;->b(Lcom/google/android/gms/internal/ga$a;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_18
move v0, v1
goto :goto_7
:cond_40
move v0, v1
goto :goto_7
:cond_42
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ih$a;->a(Lcom/google/android/gms/internal/ga$a;)Z
move-result v0
if-eqz v0, :cond_18
move v0, v1
goto :goto_7
:cond_4a
move v0, v2
goto :goto_7
.end method
.method final f()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/ih$a;->c:I
return v0
.end method
.method public final g()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/ih$a;->d:I
return v0
.end method
.method public final h()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/ih$a;->e:I
return v0
.end method
.method public final hashCode()I
.registers 5
const/4 v0, 0x0
sget-object v1, Lcom/google/android/gms/internal/ih$a;->a:Ljava/util/HashMap;
invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;
move-result-object v1
invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
move v1, v0
:goto_c
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2e
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/ga$a;
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ih$a;->a(Lcom/google/android/gms/internal/ga$a;)Z
move-result v3
if-eqz v3, :cond_2f
invoke-virtual {v0}, Lcom/google/android/gms/internal/ga$a;->g()I
move-result v3
add-int/2addr v1, v3
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ih$a;->b(Lcom/google/android/gms/internal/ga$a;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
add-int/2addr v0, v1
:goto_2c
move v1, v0
goto :goto_c
:cond_2e
return v1
:cond_2f
move v0, v1
goto :goto_2c
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 4
sget-object v0, Lcom/google/android/gms/internal/ih$a;->CREATOR:Lcom/google/android/gms/internal/ka;
invoke-static {p0, p1}, Lcom/google/android/gms/internal/ka;->a(Lcom/google/android/gms/internal/ih$a;Landroid/os/Parcel;)V
return-void
.end method