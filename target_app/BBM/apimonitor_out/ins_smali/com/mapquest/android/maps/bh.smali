.class public abstract Lcom/mapquest/android/maps/bh;
.super Ljava/lang/Object;
.source "Overlay.java"
.field protected h:Lcom/mapquest/android/maps/bi;
.field protected i:Lcom/mapquest/android/maps/bj;
.field protected j:Lcom/mapquest/android/maps/bk;
.field  k:Ljava/lang/String;
.field  l:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/mapquest/android/maps/bh;->k:Ljava/lang/String;
const/4 v0, 0x0
iput v0, p0, Lcom/mapquest/android/maps/bh;->l:I
return-void
.end method
.method public static a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
.registers 12
const/4 v1, 0x0
if-eqz p0, :cond_6c
invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v7
invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v4
shr-int/lit8 v0, v7, 0x1
neg-int v5, v0
add-int v3, v5, v7
shr-int/lit8 v0, v4, 0x1
neg-int v2, v0
add-int v0, v2, v4
move v6, v3
move v8, v5
move v5, v2
move v3, v0
move v0, v1
:goto_1a
if-eqz p1, :cond_69
add-int/lit8 v2, v0, 0x1
const/4 v9, 0x3
if-ge v0, v9, :cond_69
and-int/lit8 v0, p1, 0x1
if-lez v0, :cond_30
shr-int/lit8 v0, v7, 0x1
neg-int v6, v0
add-int v0, v6, v7
xor-int/lit8 p1, p1, 0x1
move v8, v6
move v6, v0
move v0, v2
goto :goto_1a
:cond_30
and-int/lit8 v0, p1, 0x2
if-lez v0, :cond_3f
shr-int/lit8 v0, v4, 0x1
neg-int v3, v0
add-int v0, v3, v4
xor-int/lit8 p1, p1, 0x2
move v5, v3
move v3, v0
move v0, v2
goto :goto_1a
:cond_3f
and-int/lit8 v0, p1, 0x20
if-lez v0, :cond_4a
neg-int v0, v4
xor-int/lit8 p1, p1, 0x20
move v3, v1
move v5, v0
move v0, v2
goto :goto_1a
:cond_4a
and-int/lit8 v0, p1, 0x10
if-lez v0, :cond_54
xor-int/lit8 p1, p1, 0x10
move v0, v2
move v3, v4
move v5, v1
goto :goto_1a
:cond_54
and-int/lit8 v0, p1, 0x8
if-lez v0, :cond_5f
neg-int v0, v7
xor-int/lit8 p1, p1, 0x8
move v6, v1
move v8, v0
move v0, v2
goto :goto_1a
:cond_5f
and-int/lit8 v0, p1, 0x4
if-lez v0, :cond_6d
xor-int/lit8 p1, p1, 0x4
move v0, v2
move v6, v7
move v8, v1
goto :goto_1a
:cond_69
invoke-virtual {p0, v8, v5, v6, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
:cond_6c
return-object p0
:cond_6d
move v0, v2
goto :goto_1a
.end method
.method public a(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;Z)V
.registers 4
return-void
.end method
.method public final a(Lcom/mapquest/android/maps/bi;)V
.registers 2
iput-object p1, p0, Lcom/mapquest/android/maps/bh;->h:Lcom/mapquest/android/maps/bi;
return-void
.end method
.method public a(ILandroid/view/KeyEvent;Lcom/mapquest/android/maps/MapView;)Z
.registers 5
const/4 v0, 0x0
return v0
.end method
.method public a(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z
.registers 4
const/4 v0, 0x0
return v0
.end method
.method public a(Lcom/mapquest/android/maps/s;Lcom/mapquest/android/maps/MapView;)Z
.registers 4
const/4 v0, 0x0
return v0
.end method
.method public final b(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;Z)Z
.registers 5
invoke-virtual {p0, p1, p2, p3}, Lcom/mapquest/android/maps/bh;->a(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;Z)V
const/4 v0, 0x0
return v0
.end method
.method public b(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z
.registers 4
const/4 v0, 0x0
return v0
.end method
.method public c()V
.registers 1
return-void
.end method