.class final Lcom/mapquest/android/maps/bo;
.super Ljava/lang/Object;
.source "OverlayController.java"
.implements Ljava/util/Comparator;
.field final synthetic a:Lcom/mapquest/android/maps/bn;
.method constructor <init>(Lcom/mapquest/android/maps/bn;)V
.registers 2
iput-object p1, p0, Lcom/mapquest/android/maps/bo;->a:Lcom/mapquest/android/maps/bn;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 5
check-cast p1, Lcom/mapquest/android/maps/bh;
iget v0, p1, Lcom/mapquest/android/maps/bh;->l:I
check-cast p2, Lcom/mapquest/android/maps/bh;
iget v1, p2, Lcom/mapquest/android/maps/bh;->l:I
if-ne v0, v1, :cond_c
const/4 v0, 0x0
:goto_b
return v0
:cond_c
if-ge v0, v1, :cond_10
const/4 v0, -0x1
goto :goto_b
:cond_10
const/4 v0, 0x1
goto :goto_b
.end method