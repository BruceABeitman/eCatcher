.class final Lcom/mapquest/android/maps/z;
.super Ljava/lang/Object;
.source "ItemizedOverlay.java"
.implements Ljava/util/Comparator;
.field final synthetic a:Lcom/mapquest/android/maps/y;
.method constructor <init>(Lcom/mapquest/android/maps/y;)V
.registers 2
iput-object p1, p0, Lcom/mapquest/android/maps/z;->a:Lcom/mapquest/android/maps/y;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 6
check-cast p1, Ljava/lang/Integer;
check-cast p2, Ljava/lang/Integer;
iget-object v0, p0, Lcom/mapquest/android/maps/z;->a:Lcom/mapquest/android/maps/y;
iget-object v0, v0, Lcom/mapquest/android/maps/y;->a:Ljava/util/ArrayList;
invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/bp;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bp;->a()Lcom/mapquest/android/maps/s;
move-result-object v0
iget v0, v0, Lcom/mapquest/android/maps/s;->a:I
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
iget-object v0, p0, Lcom/mapquest/android/maps/z;->a:Lcom/mapquest/android/maps/y;
iget-object v0, v0, Lcom/mapquest/android/maps/y;->a:Ljava/util/ArrayList;
invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I
move-result v2
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/bp;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bp;->a()Lcom/mapquest/android/maps/s;
move-result-object v0
iget v0, v0, Lcom/mapquest/android/maps/s;->a:I
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I
move-result v0
return v0
.end method