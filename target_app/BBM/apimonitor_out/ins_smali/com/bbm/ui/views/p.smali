.class final Lcom/bbm/ui/views/p;
.super Ljava/lang/Object;
.source "EphemeralPickerPagerV2.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic a:Lcom/bbm/ui/views/EphemeralPickerPagerV2;
.method constructor <init>(Lcom/bbm/ui/views/EphemeralPickerPagerV2;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/views/p;->a:Lcom/bbm/ui/views/EphemeralPickerPagerV2;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 11
const/4 v7, 0x2
const/4 v6, 0x1
const/high16 v4, 0x4000
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v0
if-eqz v0, :cond_10
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v0
if-ne v0, v7, :cond_44
:cond_10
invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F
move-result v0
invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F
move-result v1
invoke-virtual {p1}, Landroid/view/View;->getWidth()I
move-result v2
int-to-float v2, v2
div-float/2addr v2, v4
invoke-virtual {p1}, Landroid/view/View;->getHeight()I
move-result v3
int-to-float v3, v3
div-float/2addr v3, v4
sub-float/2addr v0, v2
float-to-double v4, v0
sub-float v0, v3, v1
float-to-double v0, v0
invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->atan2(DD)D
move-result-wide v0
const-wide v2, -0x3fff3eadc7d28c9bL
cmpg-double v2, v0, v2
if-gez v2, :cond_45
iget-object v0, p0, Lcom/bbm/ui/views/p;->a:Lcom/bbm/ui/views/EphemeralPickerPagerV2;
iget-object v1, p0, Lcom/bbm/ui/views/p;->a:Lcom/bbm/ui/views/EphemeralPickerPagerV2;
invoke-static {v1}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->a(Lcom/bbm/ui/views/EphemeralPickerPagerV2;)[I
move-result-object v1
const/4 v2, 0x3
aget v1, v1, v2
invoke-virtual {v0, v1}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->setValue(I)V
:goto_44
:cond_44
return v6
:cond_45
const-wide v2, -0x400f3eadc7d28c9bL
cmpg-double v2, v0, v2
if-gez v2, :cond_5d
iget-object v0, p0, Lcom/bbm/ui/views/p;->a:Lcom/bbm/ui/views/EphemeralPickerPagerV2;
iget-object v1, p0, Lcom/bbm/ui/views/p;->a:Lcom/bbm/ui/views/EphemeralPickerPagerV2;
invoke-static {v1}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->a(Lcom/bbm/ui/views/EphemeralPickerPagerV2;)[I
move-result-object v1
const/4 v2, 0x4
aget v1, v1, v2
invoke-virtual {v0, v1}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->setValue(I)V
goto :goto_44
:cond_5d
const-wide/16 v2, 0x0
cmpg-double v2, v0, v2
if-gez v2, :cond_72
iget-object v0, p0, Lcom/bbm/ui/views/p;->a:Lcom/bbm/ui/views/EphemeralPickerPagerV2;
iget-object v1, p0, Lcom/bbm/ui/views/p;->a:Lcom/bbm/ui/views/EphemeralPickerPagerV2;
invoke-static {v1}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->a(Lcom/bbm/ui/views/EphemeralPickerPagerV2;)[I
move-result-object v1
const/4 v2, 0x5
aget v1, v1, v2
invoke-virtual {v0, v1}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->setValue(I)V
goto :goto_44
:cond_72
const-wide v2, 0x3ff0c152382d7365L
cmpg-double v2, v0, v2
if-gez v2, :cond_8a
iget-object v0, p0, Lcom/bbm/ui/views/p;->a:Lcom/bbm/ui/views/EphemeralPickerPagerV2;
iget-object v1, p0, Lcom/bbm/ui/views/p;->a:Lcom/bbm/ui/views/EphemeralPickerPagerV2;
invoke-static {v1}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->a(Lcom/bbm/ui/views/EphemeralPickerPagerV2;)[I
move-result-object v1
const/4 v2, 0x0
aget v1, v1, v2
invoke-virtual {v0, v1}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->setValue(I)V
goto :goto_44
:cond_8a
const-wide v2, 0x4000c152382d7365L
cmpg-double v2, v0, v2
if-gez v2, :cond_a1
iget-object v0, p0, Lcom/bbm/ui/views/p;->a:Lcom/bbm/ui/views/EphemeralPickerPagerV2;
iget-object v1, p0, Lcom/bbm/ui/views/p;->a:Lcom/bbm/ui/views/EphemeralPickerPagerV2;
invoke-static {v1}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->a(Lcom/bbm/ui/views/EphemeralPickerPagerV2;)[I
move-result-object v1
aget v1, v1, v6
invoke-virtual {v0, v1}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->setValue(I)V
goto :goto_44
:cond_a1
const-wide v2, 0x400921fb54442d18L
cmpg-double v0, v0, v2
if-gez v0, :cond_44
iget-object v0, p0, Lcom/bbm/ui/views/p;->a:Lcom/bbm/ui/views/EphemeralPickerPagerV2;
iget-object v1, p0, Lcom/bbm/ui/views/p;->a:Lcom/bbm/ui/views/EphemeralPickerPagerV2;
invoke-static {v1}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->a(Lcom/bbm/ui/views/EphemeralPickerPagerV2;)[I
move-result-object v1
aget v1, v1, v7
invoke-virtual {v0, v1}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->setValue(I)V
goto :goto_44
.end method