.class public Lcom/pinguo/camera360/sony/ssdp/SSDPSearchMsg;
.super Ljava/lang/Object;
.source "SSDPSearchMsg.java"
.field static final HOST:Ljava/lang/String; = "Host: 239.255.255.250:1900"
.field static final MAN:Ljava/lang/String; = "Man: \"ssdp:discover\""
.field static final NEWLINE:Ljava/lang/String; = "\r\n"
.field  mMX:I
.field  mST:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x5
iput v0, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSearchMsg;->mMX:I
iput-object p1, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSearchMsg;->mST:Ljava/lang/String;
return-void
.end method
.method public getmMX()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSearchMsg;->mMX:I
return v0
.end method
.method public getmST()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSearchMsg;->mST:Ljava/lang/String;
return-object v0
.end method
.method public setmMX(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSearchMsg;->mMX:I
return-void
.end method
.method public setmST(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSearchMsg;->mST:Ljava/lang/String;
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "M-SEARCH * HTTP/1.1"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "\r\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v1, "Man: \"ssdp:discover\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "\r\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Mx: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSearchMsg;->mMX:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "\r\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v1, "Host: 239.255.255.250:1900"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "\r\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/pinguo/camera360/sony/ssdp/SSDPSearchMsg;->mST:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "\r\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v1, "\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method