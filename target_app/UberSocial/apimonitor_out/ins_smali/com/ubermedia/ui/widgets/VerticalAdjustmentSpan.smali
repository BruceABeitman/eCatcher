.class public Lcom/ubermedia/ui/widgets/VerticalAdjustmentSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "SourceFile"
.implements Landroid/text/ParcelableSpan;
.field  a:I
.method public constructor <init>(I)V
.registers 3
invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/ubermedia/ui/widgets/VerticalAdjustmentSpan;->a:I
iput p1, p0, Lcom/ubermedia/ui/widgets/VerticalAdjustmentSpan;->a:I
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/ubermedia/ui/widgets/VerticalAdjustmentSpan;->a:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Lcom/ubermedia/ui/widgets/VerticalAdjustmentSpan;->a:I
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getSpanTypeId()I
.registers 2
const v0, -0x98967f
return v0
.end method
.method public updateDrawState(Landroid/text/TextPaint;)V
.registers 4
iget v0, p1, Landroid/text/TextPaint;->baselineShift:I
iget v1, p0, Lcom/ubermedia/ui/widgets/VerticalAdjustmentSpan;->a:I
add-int/2addr v0, v1
iput v0, p1, Landroid/text/TextPaint;->baselineShift:I
return-void
.end method
.method public updateMeasureState(Landroid/text/TextPaint;)V
.registers 4
iget v0, p1, Landroid/text/TextPaint;->baselineShift:I
iget v1, p0, Lcom/ubermedia/ui/widgets/VerticalAdjustmentSpan;->a:I
add-int/2addr v0, v1
iput v0, p1, Landroid/text/TextPaint;->baselineShift:I
return-void
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
iget v0, p0, Lcom/ubermedia/ui/widgets/VerticalAdjustmentSpan;->a:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
return-void
.end method