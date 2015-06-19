.class public Lcom/google/android/gms/internal/ic;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/internal/id;
.field private final Hi:Ljava/util/HashMap;
.field private final Hj:Ljava/util/ArrayList;
.field private final Hk:Ljava/lang/String;
.field private final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/id;
invoke-direct {v0}, Lcom/google/android/gms/internal/id;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/ic;->CREATOR:Lcom/google/android/gms/internal/id;
return-void
.end method
.method constructor <init>(ILjava/util/ArrayList;Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/ic;->xJ:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/ic;->Hj:Ljava/util/ArrayList;
invoke-static {p2}, Lcom/google/android/gms/internal/ic;->b(Ljava/util/ArrayList;)Ljava/util/HashMap;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/ic;->Hi:Ljava/util/HashMap;
invoke-static {p3}, Lcom/google/android/gms/internal/hn;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/internal/ic;->Hk:Ljava/lang/String;
invoke-virtual {p0}, Lcom/google/android/gms/internal/ic;->fO()V
return-void
.end method
.method public constructor <init>(Ljava/lang/Class;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/internal/ic;->xJ:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/ic;->Hj:Ljava/util/ArrayList;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/ic;->Hi:Ljava/util/HashMap;
invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/ic;->Hk:Ljava/lang/String;
return-void
.end method
.method private static b(Ljava/util/ArrayList;)Ljava/util/HashMap;
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
check-cast v0, Lcom/google/android/gms/internal/ic$a;
iget-object v4, v0, Lcom/google/android/gms/internal/ic$a;->className:Ljava/lang/String;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ic$a;->fS()Ljava/util/HashMap;
move-result-object v0
invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_b
:cond_20
return-object v2
.end method
.method public a(Ljava/lang/Class;Ljava/util/HashMap;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/ic;->Hi:Ljava/util/HashMap;
invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public aJ(Ljava/lang/String;)Ljava/util/HashMap;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ic;->Hi:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/HashMap;
return-object v0
.end method
.method public b(Ljava/lang/Class;)Z
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/ic;->Hi:Ljava/util/HashMap;
invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public describeContents()I
.registers 2
sget-object v0, Lcom/google/android/gms/internal/ic;->CREATOR:Lcom/google/android/gms/internal/id;
const/4 v0, 0x0
return v0
.end method
.method public fO()V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/ic;->Hi:Ljava/util/HashMap;
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
iget-object v1, p0, Lcom/google/android/gms/internal/ic;->Hi:Ljava/util/HashMap;
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
check-cast v1, Lcom/google/android/gms/internal/hz$a;
invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/hz$a;->a(Lcom/google/android/gms/internal/ic;)V
goto :goto_26
:cond_3c
return-void
.end method
.method public fP()V
.registers 8
iget-object v0, p0, Lcom/google/android/gms/internal/ic;->Hi:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_a
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_4b
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v1, p0, Lcom/google/android/gms/internal/ic;->Hi:Ljava/util/HashMap;
invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/HashMap;
new-instance v5, Ljava/util/HashMap;
invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v2
invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_2b
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_45
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/google/android/gms/internal/hz$a;
invoke-virtual {v3}, Lcom/google/android/gms/internal/hz$a;->fE()Lcom/google/android/gms/internal/hz$a;
move-result-object v3
invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_2b
:cond_45
iget-object v1, p0, Lcom/google/android/gms/internal/ic;->Hi:Ljava/util/HashMap;
invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_a
:cond_4b
return-void
.end method
.method  fQ()Ljava/util/ArrayList;
.registers 6
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lcom/google/android/gms/internal/ic;->Hi:Ljava/util/HashMap;
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
new-instance v4, Lcom/google/android/gms/internal/ic$a;
iget-object v1, p0, Lcom/google/android/gms/internal/ic;->Hi:Ljava/util/HashMap;
invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/HashMap;
invoke-direct {v4, v0, v1}, Lcom/google/android/gms/internal/ic$a;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V
invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_f
:cond_2c
return-object v2
.end method
.method public fR()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ic;->Hk:Ljava/lang/String;
return-object v0
.end method
.method  getVersionCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/ic;->xJ:I
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 8
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v0, p0, Lcom/google/android/gms/internal/ic;->Hi:Ljava/util/HashMap;
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
iget-object v1, p0, Lcom/google/android/gms/internal/ic;->Hi:Ljava/util/HashMap;
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
sget-object v0, Lcom/google/android/gms/internal/ic;->CREATOR:Lcom/google/android/gms/internal/id;
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/id;->a(Lcom/google/android/gms/internal/ic;Landroid/os/Parcel;I)V
return-void
.end method