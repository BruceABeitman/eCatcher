.class public Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;
.super Ljava/lang/Object;
.source "IDPhoto.java"
.implements Ljava/io/Serializable;
.field public icon:Ljava/lang/String;
.field public imageList:Ljava/util/List;
.field public itemCount:I
.field public name:Ljava/lang/String;
.field public nameTag:Ljava/lang/String;
.field public nextPrice:I
.field public price:I
.field public productId:Ljava/lang/String;
.field public purchaseType:I
.field public savePath:Ljava/lang/String;
.field public templateData:Ljava/util/List;
.field public version:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getFullName()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->nameTag:Ljava/lang/String;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->name:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method