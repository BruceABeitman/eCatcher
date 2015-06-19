.class public Lcom/google/android/gms/common/data/DataHolder$Builder;
.super Ljava/lang/Object;
.field private final Aa:[Ljava/lang/String;
.field private final Aj:Ljava/util/ArrayList;
.field private final Ak:Ljava/lang/String;
.field private final Al:Ljava/util/HashMap;
.field private Am:Z
.field private An:Ljava/lang/String;
.method private constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->Aa:[Ljava/lang/String;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->Aj:Ljava/util/ArrayList;
iput-object p2, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->Ak:Ljava/lang/String;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->Al:Ljava/util/HashMap;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->Am:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->An:Ljava/lang/String;
return-void
.end method
.method synthetic constructor <init>([Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/data/DataHolder$1;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder$Builder;-><init>([Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private a(Ljava/util/HashMap;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->Ak:Ljava/lang/String;
invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
if-nez v1, :cond_9
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->Al:Ljava/util/HashMap;
invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
if-eqz v0, :cond_1c
iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->Aj:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
:cond_1c
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->Al:Ljava/util/HashMap;
iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->Aj:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_8
.end method
.method static synthetic a(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->Aa:[Ljava/lang/String;
return-object v0
.end method
.method static synthetic b(Lcom/google/android/gms/common/data/DataHolder$Builder;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->Aj:Ljava/util/ArrayList;
return-object v0
.end method
.method private dJ()V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->Ak:Ljava/lang/String;
if-eqz v0, :cond_30
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->Al:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
const/4 v0, 0x0
iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->Aj:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v2
move v1, v0
:goto_11
if-ge v1, v2, :cond_30
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->Aj:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/HashMap;
iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->Ak:Ljava/lang/String;
invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_2c
iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->Al:Ljava/util/HashMap;
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_2c
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_11
:cond_30
return-void
.end method
.method public build(I)Lcom/google/android/gms/common/data/DataHolder;
.registers 4
const/4 v1, 0x0
new-instance v0, Lcom/google/android/gms/common/data/DataHolder;
invoke-direct {v0, p0, p1, v1, v1}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;Lcom/google/android/gms/common/data/DataHolder$1;)V
return-object v0
.end method
.method public build(ILandroid/os/Bundle;)Lcom/google/android/gms/common/data/DataHolder;
.registers 9
new-instance v0, Lcom/google/android/gms/common/data/DataHolder;
const/4 v4, -0x1
const/4 v5, 0x0
move-object v1, p0
move v2, p1
move-object v3, p2
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;ILcom/google/android/gms/common/data/DataHolder$1;)V
return-object v0
.end method
.method public build(ILandroid/os/Bundle;I)Lcom/google/android/gms/common/data/DataHolder;
.registers 10
new-instance v0, Lcom/google/android/gms/common/data/DataHolder;
const/4 v5, 0x0
move-object v1, p0
move v2, p1
move-object v3, p2
move v4, p3
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;ILcom/google/android/gms/common/data/DataHolder$1;)V
return-object v0
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->Aj:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method
.method public removeRowsWithValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/data/DataHolder$Builder;
.registers 5
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->Aj:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_9
if-ltz v1, :cond_26
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->Aj:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-static {v0, p2}, Lcom/google/android/gms/internal/ep;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->Aj:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
:cond_22
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_9
:cond_26
return-object p0
.end method
.method public sort(Ljava/lang/String;)Lcom/google/android/gms/common/data/DataHolder$Builder;
.registers 4
invoke-static {p1}, Lcom/google/android/gms/internal/ed;->d(Ljava/lang/Object;)V
iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->Am:Z
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->An:Ljava/lang/String;
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_10
:goto_f
return-object p0
:cond_10
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->Aj:Ljava/util/ArrayList;
new-instance v1, Lcom/google/android/gms/common/data/DataHolder$a;
invoke-direct {v1, p1}, Lcom/google/android/gms/common/data/DataHolder$a;-><init>(Ljava/lang/String;)V
invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
invoke-direct {p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->dJ()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->Am:Z
iput-object p1, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->An:Ljava/lang/String;
goto :goto_f
.end method
.method public withRow(Landroid/content/ContentValues;)Lcom/google/android/gms/common/data/DataHolder$Builder;
.registers 6
invoke-static {p1}, Lcom/google/android/gms/internal/ed;->d(Ljava/lang/Object;)V
new-instance v1, Ljava/util/HashMap;
invoke-virtual {p1}, Landroid/content/ContentValues;->size()I
move-result v0
invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V
invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_14
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v3
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_14
:cond_2c
invoke-virtual {p0, v1}, Lcom/google/android/gms/common/data/DataHolder$Builder;->withRow(Ljava/util/HashMap;)Lcom/google/android/gms/common/data/DataHolder$Builder;
move-result-object v0
return-object v0
.end method
.method public withRow(Ljava/util/HashMap;)Lcom/google/android/gms/common/data/DataHolder$Builder;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/internal/ed;->d(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->Ak:Ljava/lang/String;
if-eqz v0, :cond_a
invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/DataHolder$Builder;->a(Ljava/util/HashMap;)V
:cond_a
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->Aj:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->Am:Z
return-object p0
.end method