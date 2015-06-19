.class public Lcom/pinguo/camera360/cloud/struct/DayInformation;
.super Ljava/lang/Object;
.source "DayInformation.java"
.field private nCount:I
.field private strDate:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/pinguo/camera360/cloud/struct/DayInformation;->nCount:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/cloud/struct/DayInformation;->strDate:Ljava/lang/String;
return-void
.end method
.method public decrement()V
.registers 2
iget v0, p0, Lcom/pinguo/camera360/cloud/struct/DayInformation;->nCount:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lcom/pinguo/camera360/cloud/struct/DayInformation;->nCount:I
return-void
.end method
.method public getDate()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/DayInformation;->strDate:Ljava/lang/String;
return-object v0
.end method
.method public getUploadNeedCount()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/cloud/struct/DayInformation;->nCount:I
return v0
.end method
.method public increment()V
.registers 2
iget v0, p0, Lcom/pinguo/camera360/cloud/struct/DayInformation;->nCount:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/pinguo/camera360/cloud/struct/DayInformation;->nCount:I
return-void
.end method
.method public isLast()Z
.registers 2
iget v0, p0, Lcom/pinguo/camera360/cloud/struct/DayInformation;->nCount:I
if-gtz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public setDate(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/cloud/struct/DayInformation;->strDate:Ljava/lang/String;
return-void
.end method
.method public setUploadNeedCount(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/cloud/struct/DayInformation;->nCount:I
return-void
.end method