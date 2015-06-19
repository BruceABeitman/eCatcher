.class public final Lcom/cropimage/m;
.super Ljava/lang/Object;
.source "RotateBitmap.java"
.field  a:Landroid/graphics/Bitmap;
.field  b:I
.method public constructor <init>(Landroid/graphics/Bitmap;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/cropimage/m;->a:Landroid/graphics/Bitmap;
const/4 v0, 0x0
iput v0, p0, Lcom/cropimage/m;->b:I
return-void
.end method
.method private c()Z
.registers 2
iget v0, p0, Lcom/cropimage/m;->b:I
div-int/lit8 v0, v0, 0x5a
rem-int/lit8 v0, v0, 0x2
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final a()I
.registers 2
invoke-direct {p0}, Lcom/cropimage/m;->c()Z
move-result v0
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/cropimage/m;->a:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v0
:goto_c
return v0
:cond_d
iget-object v0, p0, Lcom/cropimage/m;->a:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v0
goto :goto_c
.end method
.method public final b()I
.registers 2
invoke-direct {p0}, Lcom/cropimage/m;->c()Z
move-result v0
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/cropimage/m;->a:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v0
:goto_c
return v0
:cond_d
iget-object v0, p0, Lcom/cropimage/m;->a:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v0
goto :goto_c
.end method