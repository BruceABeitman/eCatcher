.class final Lcom/mapquest/android/maps/bn;
.super Ljava/util/ArrayList;
.source "OverlayController.java"
.field final synthetic a:Lcom/mapquest/android/maps/bm;
.method private constructor <init>(Lcom/mapquest/android/maps/bm;)V
.registers 2
iput-object p1, p0, Lcom/mapquest/android/maps/bn;->a:Lcom/mapquest/android/maps/bm;
invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/mapquest/android/maps/bm;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/mapquest/android/maps/bn;-><init>(Lcom/mapquest/android/maps/bm;)V
return-void
.end method
.method private a()V
.registers 2
new-instance v0, Lcom/mapquest/android/maps/bo;
invoke-direct {v0, p0}, Lcom/mapquest/android/maps/bo;-><init>(Lcom/mapquest/android/maps/bn;)V
invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
const/16 v0, 0x29
invoke-static {v0}, Lcom/mapquest/android/maps/g;->a(I)V
return-void
.end method
.method private a(Lcom/mapquest/android/maps/bh;)V
.registers 6
iget-object v0, p1, Lcom/mapquest/android/maps/bh;->k:Ljava/lang/String;
if-eqz v0, :cond_c
iget-object v0, p1, Lcom/mapquest/android/maps/bh;->k:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_d
:cond_c
:goto_c
return-void
:cond_d
iget-object v1, p1, Lcom/mapquest/android/maps/bh;->k:Ljava/lang/String;
invoke-virtual {p0}, Lcom/mapquest/android/maps/bn;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_13
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2d
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/bh;
iget-object v3, v0, Lcom/mapquest/android/maps/bh;->k:Ljava/lang/String;
invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_13
:goto_27
if-eqz v0, :cond_c
invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/bn;->remove(Ljava/lang/Object;)Z
goto :goto_c
:cond_2d
const/4 v0, 0x0
goto :goto_27
.end method
.method public final synthetic add(ILjava/lang/Object;)V
.registers 3
check-cast p2, Lcom/mapquest/android/maps/bh;
invoke-direct {p0, p2}, Lcom/mapquest/android/maps/bn;->a(Lcom/mapquest/android/maps/bh;)V
invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
invoke-direct {p0}, Lcom/mapquest/android/maps/bn;->a()V
return-void
.end method
.method public final synthetic add(Ljava/lang/Object;)Z
.registers 3
check-cast p1, Lcom/mapquest/android/maps/bh;
invoke-direct {p0, p1}, Lcom/mapquest/android/maps/bn;->a(Lcom/mapquest/android/maps/bh;)V
invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
move-result v0
invoke-direct {p0}, Lcom/mapquest/android/maps/bn;->a()V
return v0
.end method
.method public final addAll(ILjava/util/Collection;)Z
.registers 5
invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_4
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_14
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/bh;
invoke-direct {p0, v0}, Lcom/mapquest/android/maps/bn;->a(Lcom/mapquest/android/maps/bh;)V
goto :goto_4
:cond_14
invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z
move-result v0
invoke-direct {p0}, Lcom/mapquest/android/maps/bn;->a()V
return v0
.end method
.method public final addAll(Ljava/util/Collection;)Z
.registers 3
invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
move-result v0
invoke-direct {p0}, Lcom/mapquest/android/maps/bn;->a()V
return v0
.end method
.method public final clear()V
.registers 3
invoke-virtual {p0}, Lcom/mapquest/android/maps/bn;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_4
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_14
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/bh;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bh;->c()V
goto :goto_4
:cond_14
invoke-super {p0}, Ljava/util/ArrayList;->clear()V
return-void
.end method
.method public final synthetic remove(I)Ljava/lang/Object;
.registers 3
invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/bh;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bh;->c()V
return-object v0
.end method
.method public final remove(Ljava/lang/Object;)Z
.registers 4
instance-of v0, p1, Ljava/util/List;
if-eqz v0, :cond_1b
move-object v0, p1
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_25
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/bh;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bh;->c()V
goto :goto_b
:cond_1b
instance-of v0, p1, Lcom/mapquest/android/maps/bh;
if-eqz v0, :cond_25
move-object v0, p1
check-cast v0, Lcom/mapquest/android/maps/bh;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bh;->c()V
:cond_25
invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method protected final removeRange(II)V
.registers 5
move v1, p1
:goto_1
if-gt v1, p2, :cond_10
invoke-virtual {p0, v1}, Lcom/mapquest/android/maps/bn;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/bh;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bh;->c()V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_1
:cond_10
invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->removeRange(II)V
return-void
.end method