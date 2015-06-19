.class final Lcom/mapquest/android/maps/ae;
.super Ljava/lang/Object;
.source "LineOverlay.java"
.implements Ljava/lang/Runnable;
.field  a:Lcom/mapquest/android/maps/bq;
.field final synthetic b:Lcom/mapquest/android/maps/ac;
.method private constructor <init>(Lcom/mapquest/android/maps/ac;Lcom/mapquest/android/maps/bq;)V
.registers 3
iput-object p1, p0, Lcom/mapquest/android/maps/ae;->b:Lcom/mapquest/android/maps/ac;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/mapquest/android/maps/ae;->a:Lcom/mapquest/android/maps/bq;
return-void
.end method
.method synthetic constructor <init>(Lcom/mapquest/android/maps/ac;Lcom/mapquest/android/maps/bq;B)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/mapquest/android/maps/ae;-><init>(Lcom/mapquest/android/maps/ac;Lcom/mapquest/android/maps/bq;)V
return-void
.end method
.method public final run()V
.registers 7
const/4 v3, 0x0
iget-object v0, p0, Lcom/mapquest/android/maps/ae;->b:Lcom/mapquest/android/maps/ac;
iget-boolean v0, v0, Lcom/mapquest/android/maps/ac;->f:Z
if-eqz v0, :cond_59
iget-object v0, p0, Lcom/mapquest/android/maps/ae;->b:Lcom/mapquest/android/maps/ac;
iget-object v0, v0, Lcom/mapquest/android/maps/ac;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v4
iget-object v0, p0, Lcom/mapquest/android/maps/ae;->b:Lcom/mapquest/android/maps/ac;
iget-object v0, v0, Lcom/mapquest/android/maps/ac;->c:Ljava/util/ArrayList;
invoke-virtual {v0, v4}, Ljava/util/ArrayList;->ensureCapacity(I)V
iget-object v0, p0, Lcom/mapquest/android/maps/ae;->b:Lcom/mapquest/android/maps/ac;
iget-object v0, v0, Lcom/mapquest/android/maps/ac;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v0, v4, :cond_32
:goto_20
add-int/lit8 v1, v0, 0x1
if-ge v0, v4, :cond_32
iget-object v0, p0, Lcom/mapquest/android/maps/ae;->b:Lcom/mapquest/android/maps/ac;
iget-object v0, v0, Lcom/mapquest/android/maps/ac;->c:Ljava/util/ArrayList;
new-instance v2, Landroid/graphics/Point;
invoke-direct {v2}, Landroid/graphics/Point;-><init>()V
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
move v0, v1
goto :goto_20
:cond_32
move v2, v3
:goto_33
if-ge v2, v4, :cond_52
iget-object v0, p0, Lcom/mapquest/android/maps/ae;->b:Lcom/mapquest/android/maps/ac;
iget-object v0, v0, Lcom/mapquest/android/maps/ac;->c:Ljava/util/ArrayList;
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/Point;
iget-object v5, p0, Lcom/mapquest/android/maps/ae;->a:Lcom/mapquest/android/maps/bq;
iget-object v1, p0, Lcom/mapquest/android/maps/ae;->b:Lcom/mapquest/android/maps/ac;
iget-object v1, v1, Lcom/mapquest/android/maps/ac;->b:Ljava/util/List;
invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/mapquest/android/maps/s;
invoke-interface {v5, v1, v0}, Lcom/mapquest/android/maps/bq;->a(Lcom/mapquest/android/maps/s;Landroid/graphics/Point;)Landroid/graphics/Point;
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_33
:cond_52
iget-object v0, p0, Lcom/mapquest/android/maps/ae;->b:Lcom/mapquest/android/maps/ac;
iget-object v0, v0, Lcom/mapquest/android/maps/ac;->g:Lcom/mapquest/android/maps/af;
invoke-virtual {v0, v3}, Lcom/mapquest/android/maps/af;->sendEmptyMessage(I)Z
:cond_59
return-void
.end method