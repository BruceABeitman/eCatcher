.class public Lcom/google/android/gms/internal/gd;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/internal/hx;
.field private final a:I
.field private final b:Ljava/util/HashMap;
.field private final c:Ljava/util/ArrayList;
.field private final d:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/hx;
invoke-direct {v0}, Lcom/google/android/gms/internal/hx;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/gd;->CREATOR:Lcom/google/android/gms/internal/hx;
return-void
.end method
.method constructor <init>(ILjava/util/ArrayList;Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/gd;->a:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/gd;->c:Ljava/util/ArrayList;
invoke-static {p2}, Lcom/google/android/gms/internal/gd;->a(Ljava/util/ArrayList;)Ljava/util/HashMap;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/gd;->b:Ljava/util/HashMap;
invoke-static {p3}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/internal/gd;->d:Ljava/lang/String;
invoke-direct {p0}, Lcom/google/android/gms/internal/gd;->d()V
return-void
.end method
.method private static a(Ljava/util/ArrayList;)Ljava/util/HashMap;
.registers 6
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
invoke-virtual {p0}, Ljava/util/ArrayList;->size()I
move-result v3
const/4 v0, 0x0
move v1, v0
:goto_b
if-ge v1, v3, :cond_20
invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gd$a;
iget-object v4, v0, Lcom/google/android/gms/internal/gd$a;->b:Ljava/lang/String;
invoke-virtual {v0}, Lcom/google/android/gms/internal/gd$a;->a()Ljava/util/HashMap;
move-result-object v0
invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_b
:cond_20
return-object v2
.end method
.method private d()V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/gd;->b:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_a
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v1, p0, Lcom/google/android/gms/internal/gd;->b:Ljava/util/HashMap;
invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_26
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_a
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/android/gms/internal/ga$a;
invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ga$a;->a(Lcom/google/android/gms/internal/gd;)V
goto :goto_26
:cond_3c
return-void
.end method
.method final a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/gd;->a:I
return v0
.end method
.method public final a(Ljava/lang/String;)Ljava/util/HashMap;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/gd;->b:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/HashMap;
return-object v0
.end method
.method final b()Ljava/util/ArrayList;
.registers 6
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lcom/google/android/gms/internal/gd;->b:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_f
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2c
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
new-instance v4, Lcom/google/android/gms/internal/gd$a;
iget-object v1, p0, Lcom/google/android/gms/internal/gd;->b:Ljava/util/HashMap;
invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/HashMap;
invoke-direct {v4, v0, v1}, Lcom/google/android/gms/internal/gd$a;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V
invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_f
:cond_2c
return-object v2
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gd;->d:Ljava/lang/String;
return-object v0
.end method
.method public describeContents()I
.registers 2
sget-object v0, Lcom/google/android/gms/internal/gd;->CREATOR:Lcom/google/android/gms/internal/hx;
const/4 v0, 0x0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 8
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v0, p0, Lcom/google/android/gms/internal/gd;->b:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_f
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_57
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v4, ":\n"
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/google/android/gms/internal/gd;->b:Ljava/util/HashMap;
invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_34
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_f
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
const-string v5, "  "
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, ": "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
goto :goto_34
:cond_57
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
sget-object v0, Lcom/google/android/gms/internal/gd;->CREATOR:Lcom/google/android/gms/internal/hx;
invoke-static {p0, p1}, Lcom/google/android/gms/internal/hx;->a(Lcom/google/android/gms/internal/gd;Landroid/os/Parcel;)V
return-void
.end method