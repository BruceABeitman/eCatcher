.class public Lcom/pinguo/camera360/cloud/request/LoginRequestConsole;
.super Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;
.source "LoginRequestConsole.java"
.field private static final APP_KEY_NAME:Ljava/lang/String; = "app_key"
.field public static final APP_KEY_SECRET:Ljava/lang/String; = "0faad539032ef265da08056228d05641"
.field private static final ENC_VALUE_NAME:Ljava/lang/String; = "enc_value"
.field private mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;
.field private mEnc:Lcom/pinguo/camera360/cloud/struct/PostStruct;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 14
const/4 v3, 0x0
const/4 v7, 0x1
const/4 v6, 0x0
const/4 v2, 0x2
invoke-direct {p0, v2, p1, p2}, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;-><init>(ILjava/lang/String;Ljava/lang/String;)V
iput-object v3, p0, Lcom/pinguo/camera360/cloud/request/LoginRequestConsole;->mEnc:Lcom/pinguo/camera360/cloud/struct/PostStruct;
iput-object v3, p0, Lcom/pinguo/camera360/cloud/request/LoginRequestConsole;->mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;
new-instance v2, Lcom/pinguo/camera360/cloud/struct/PostStruct;
const-string/jumbo v3, "text"
const-string/jumbo v4, "enc_value"
const-string/jumbo v5, ""
invoke-direct {v2, v3, v4, v5}, Lcom/pinguo/camera360/cloud/struct/PostStruct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object v2, p0, Lcom/pinguo/camera360/cloud/request/LoginRequestConsole;->mEnc:Lcom/pinguo/camera360/cloud/struct/PostStruct;
new-instance v2, Lcom/pinguo/camera360/cloud/struct/PostStruct;
const-string/jumbo v3, "text"
const-string/jumbo v4, "app_key"
const-string/jumbo v5, ""
invoke-direct {v2, v3, v4, v5}, Lcom/pinguo/camera360/cloud/struct/PostStruct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object v2, p0, Lcom/pinguo/camera360/cloud/request/LoginRequestConsole;->mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;
iget-object v2, p0, Lcom/pinguo/camera360/cloud/request/LoginRequestConsole;->mData:[Lcom/pinguo/camera360/cloud/struct/PostStruct;
iget-object v3, p0, Lcom/pinguo/camera360/cloud/request/LoginRequestConsole;->mEnc:Lcom/pinguo/camera360/cloud/struct/PostStruct;
aput-object v3, v2, v6
iget-object v2, p0, Lcom/pinguo/camera360/cloud/request/LoginRequestConsole;->mData:[Lcom/pinguo/camera360/cloud/struct/PostStruct;
iget-object v3, p0, Lcom/pinguo/camera360/cloud/request/LoginRequestConsole;->mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;
aput-object v3, v2, v7
invoke-static {p5}, Lorg/pinguo/cloudshare/support/HelperConsole;->password_md5(Ljava/lang/String;)Ljava/lang/String;
move-result-object p5
const-string/jumbo v2, "I"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "Txt: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, " PassWord: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
new-instance v2, Ljava/lang/StringBuilder;
invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, "\n"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "\n"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "\nmore"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "0faad539032ef265da08056228d05641"
const-string/jumbo v4, "PINGUOSOFT"
invoke-static {v2, v3, v4, v7}, Lorg/pinguo/cloudshare/support/HelperConsole;->encryptDESBase64(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_95
iput-boolean v6, p0, Lcom/pinguo/camera360/cloud/request/LoginRequestConsole;->bEnable:Z
:goto_94
return-void
:cond_95
const-string/jumbo v2, "I"
new-instance v3, Ljava/lang/StringBuilder;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "\n"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "\n"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "\n"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "5dab06e7a53740ea9b78"
iget-object v2, p0, Lcom/pinguo/camera360/cloud/request/LoginRequestConsole;->mEnc:Lcom/pinguo/camera360/cloud/struct/PostStruct;
invoke-virtual {v2, v1}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->setValue(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/cloud/request/LoginRequestConsole;->mEnc:Lcom/pinguo/camera360/cloud/struct/PostStruct;
invoke-virtual {v2}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->createData()Z
iget-object v2, p0, Lcom/pinguo/camera360/cloud/request/LoginRequestConsole;->mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;
invoke-virtual {v2, v0}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->setValue(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/cloud/request/LoginRequestConsole;->mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;
invoke-virtual {v2}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->createData()Z
goto :goto_94
.end method