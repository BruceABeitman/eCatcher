.class  Lcom/faceplusplus/api/FaceDetecter$Logger;
.super Ljava/lang/Object;
.source "FaceDetecter.java"
.field private mDSuccessCount:I
.field private mDTotalCount:I
.field private mSSuccessCount:I
.field private mSTtotalCount:I
.field final synthetic this$0:Lcom/faceplusplus/api/FaceDetecter;
.method public constructor <init>(Lcom/faceplusplus/api/FaceDetecter;)V
.registers 2
iput-object p1, p0, Lcom/faceplusplus/api/FaceDetecter$Logger;->this$0:Lcom/faceplusplus/api/FaceDetecter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method  saveLog(Landroid/content/Context;)V
.registers 6
iget v0, p0, Lcom/faceplusplus/api/FaceDetecter$Logger;->mDTotalCount:I
iget v1, p0, Lcom/faceplusplus/api/FaceDetecter$Logger;->mDSuccessCount:I
iget v2, p0, Lcom/faceplusplus/api/FaceDetecter$Logger;->mSTtotalCount:I
iget v3, p0, Lcom/faceplusplus/api/FaceDetecter$Logger;->mSSuccessCount:I
invoke-static {p1, v0, v1, v2, v3}, Lcom/faceplusplus/api/Utils;->saveLog(Landroid/content/Context;IIII)V
return-void
.end method
.method  syncLog(Landroid/content/Context;)V
.registers 4
iget-object v0, p0, Lcom/faceplusplus/api/FaceDetecter$Logger;->this$0:Lcom/faceplusplus/api/FaceDetecter;
#getter for: Lcom/faceplusplus/api/FaceDetecter;->apikey:Ljava/lang/String;
invoke-static {v0}, Lcom/faceplusplus/api/FaceDetecter;->access$0(Lcom/faceplusplus/api/FaceDetecter;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/faceplusplus/api/FaceDetecter$Logger;->this$0:Lcom/faceplusplus/api/FaceDetecter;
#getter for: Lcom/faceplusplus/api/FaceDetecter;->apisecret:Ljava/lang/String;
invoke-static {v1}, Lcom/faceplusplus/api/FaceDetecter;->access$1(Lcom/faceplusplus/api/FaceDetecter;)Ljava/lang/String;
move-result-object v1
invoke-static {p1, v0, v1}, Lcom/faceplusplus/api/Utils;->syncLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method  updateCount(ZZ)V
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-eqz p1, :cond_14
iget v2, p0, Lcom/faceplusplus/api/FaceDetecter$Logger;->mDTotalCount:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/faceplusplus/api/FaceDetecter$Logger;->mDTotalCount:I
iget v2, p0, Lcom/faceplusplus/api/FaceDetecter$Logger;->mDSuccessCount:I
if-eqz p2, :cond_12
:goto_e
add-int/2addr v0, v2
iput v0, p0, Lcom/faceplusplus/api/FaceDetecter$Logger;->mDSuccessCount:I
:goto_11
return-void
:cond_12
move v0, v1
goto :goto_e
:cond_14
iget v2, p0, Lcom/faceplusplus/api/FaceDetecter$Logger;->mSTtotalCount:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/faceplusplus/api/FaceDetecter$Logger;->mSTtotalCount:I
iget v2, p0, Lcom/faceplusplus/api/FaceDetecter$Logger;->mSSuccessCount:I
if-eqz p2, :cond_22
:goto_1e
add-int/2addr v0, v2
iput v0, p0, Lcom/faceplusplus/api/FaceDetecter$Logger;->mSSuccessCount:I
goto :goto_11
:cond_22
move v0, v1
goto :goto_1e
.end method