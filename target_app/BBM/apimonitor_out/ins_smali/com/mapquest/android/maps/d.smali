.class public final Lcom/mapquest/android/maps/d;
.super Lcom/mapquest/android/maps/y;
.source "DefaultItemizedOverlay.java"
.field private d:Ljava/util/List;
.field private e:Landroid/graphics/drawable/Drawable;
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
.registers 3
const/16 v0, 0x21
invoke-static {p1, v0}, Lcom/mapquest/android/maps/bh;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-direct {p0, v0}, Lcom/mapquest/android/maps/y;-><init>(Landroid/graphics/drawable/Drawable;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/mapquest/android/maps/d;->d:Ljava/util/List;
iput-object p1, p0, Lcom/mapquest/android/maps/d;->e:Landroid/graphics/drawable/Drawable;
return-void
.end method
.method public final a()I
.registers 2
iget-object v0, p0, Lcom/mapquest/android/maps/d;->d:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method protected final a(I)Lcom/mapquest/android/maps/bp;
.registers 3
iget-object v0, p0, Lcom/mapquest/android/maps/d;->d:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/bp;
return-object v0
.end method
.method public final a(Lcom/mapquest/android/maps/bp;)V
.registers 3
iget v0, p1, Lcom/mapquest/android/maps/bp;->f:I
invoke-virtual {p1, v0}, Lcom/mapquest/android/maps/bp;->a(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
if-nez v0, :cond_d
iget-object v0, p0, Lcom/mapquest/android/maps/d;->e:Landroid/graphics/drawable/Drawable;
invoke-virtual {p1, v0}, Lcom/mapquest/android/maps/bp;->a(Landroid/graphics/drawable/Drawable;)V
:cond_d
iget-object v0, p0, Lcom/mapquest/android/maps/d;->d:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {p0}, Lcom/mapquest/android/maps/d;->e()V
return-void
.end method
.method public final a(Lcom/mapquest/android/maps/s;Lcom/mapquest/android/maps/MapView;)Z
.registers 4
invoke-super {p0, p1, p2}, Lcom/mapquest/android/maps/y;->a(Lcom/mapquest/android/maps/s;Lcom/mapquest/android/maps/MapView;)Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/mapquest/android/maps/d;->h:Lcom/mapquest/android/maps/bi;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/mapquest/android/maps/d;->h:Lcom/mapquest/android/maps/bi;
invoke-interface {v0}, Lcom/mapquest/android/maps/bi;->a()V
const/4 v0, 0x1
:goto_10
return v0
:cond_11
const/4 v0, 0x0
goto :goto_10
.end method
.method protected final b(I)I
.registers 2
return p1
.end method
.method public final b()V
.registers 2
invoke-super {p0}, Lcom/mapquest/android/maps/y;->b()V
iget-object v0, p0, Lcom/mapquest/android/maps/d;->d:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
return-void
.end method
.method public final c()V
.registers 1
invoke-virtual {p0}, Lcom/mapquest/android/maps/d;->b()V
return-void
.end method
.method protected final d()Z
.registers 2
const/4 v0, 0x1
return v0
.end method