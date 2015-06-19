.class public Lorg/apache/log4j/f/b/az;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/awt/event/AdjustmentListener;
.field protected a:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lorg/apache/log4j/f/b/az;->a:I
return-void
.end method
.method public a(Ljava/awt/event/AdjustmentEvent;)V
.registers 6
invoke-virtual {p1}, Ljava/awt/event/AdjustmentEvent;->getAdjustable()Ljava/awt/Adjustable;
move-result-object v0
invoke-interface {v0}, Ljava/awt/Adjustable;->getMaximum()I
move-result v1
invoke-interface {v0}, Ljava/awt/Adjustable;->getMaximum()I
move-result v2
iget v3, p0, Lorg/apache/log4j/f/b/az;->a:I
if-ne v2, v3, :cond_11
:goto_10
return-void
:cond_11
invoke-interface {v0}, Ljava/awt/Adjustable;->getValue()I
move-result v2
invoke-interface {v0}, Ljava/awt/Adjustable;->getVisibleAmount()I
move-result v3
add-int/2addr v2, v3
invoke-interface {v0}, Ljava/awt/Adjustable;->getUnitIncrement()I
move-result v3
add-int/2addr v2, v3
iget v3, p0, Lorg/apache/log4j/f/b/az;->a:I
if-lt v2, v3, :cond_2a
invoke-interface {v0}, Ljava/awt/Adjustable;->getMaximum()I
move-result v2
invoke-interface {v0, v2}, Ljava/awt/Adjustable;->setValue(I)V
:cond_2a
iput v1, p0, Lorg/apache/log4j/f/b/az;->a:I
goto :goto_10
.end method