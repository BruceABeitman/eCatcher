.class public Lcom/pinguo/camera360/cloud/request/MultiDayCompleteRequestConsole;
.super Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;
.source "MultiDayCompleteRequestConsole.java"
.field private static final APP_KEY_NAME:Ljava/lang/String; = "app_key"
.field private static final DAYS_NAME:Ljava/lang/String; = "days"
.field private static final SIGNATURE_NAME:Ljava/lang/String; = "signature"
.field private static final USER_ID_NAME:Ljava/lang/String; = "user_id"
.field private mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;
.field private mDays:Lcom/pinguo/camera360/cloud/struct/PostStruct;
.field private mSignature:Lcom/pinguo/camera360/cloud/struct/PostStruct;
.field private mUserId:Lcom/pinguo/camera360/cloud/struct/PostStruct;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 13
const/4 v7, 0x0
const/4 v4, 0x0
const/4 v3, 0x4
invoke-direct {p0, v3, p1, p2}, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;-><init>(ILjava/lang/String;Ljava/lang/String;)V
iput-object v4, p0, Lcom/pinguo/camera360/cloud/request/MultiDayCompleteRequestConsole;->mUserId:Lcom/pinguo/camera360/cloud/struct/PostStruct;
iput-object v4, p0, Lcom/pinguo/camera360/cloud/request/MultiDayCompleteRequestConsole;->mDays:Lcom/pinguo/camera360/cloud/struct/PostStruct;
iput-object v4, p0, Lcom/pinguo/camera360/cloud/request/MultiDayCompleteRequestConsole;->mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;
iput-object v4, p0, Lcom/pinguo/camera360/cloud/request/MultiDayCompleteRequestConsole;->mSignature:Lcom/pinguo/camera360/cloud/struct/PostStruct;
new-instance v3, Lcom/pinguo/camera360/cloud/struct/PostStruct;
const-string/jumbo v4, "text"
const-string/jumbo v5, "user_id"
const-string/jumbo v6, ""
invoke-direct {v3, v4, v5, v6}, Lcom/pinguo/camera360/cloud/struct/PostStruct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object v3, p0, Lcom/pinguo/camera360/cloud/request/MultiDayCompleteRequestConsole;->mUserId:Lcom/pinguo/camera360/cloud/struct/PostStruct;
new-instance v3, Lcom/pinguo/camera360/cloud/struct/PostStruct;
const-string/jumbo v4, "text"
const-string/jumbo v5, "days"
const-string/jumbo v6, ""
invoke-direct {v3, v4, v5, v6}, Lcom/pinguo/camera360/cloud/struct/PostStruct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object v3, p0, Lcom/pinguo/camera360/cloud/request/MultiDayCompleteRequestConsole;->mDays:Lcom/pinguo/camera360/cloud/struct/PostStruct;
new-instance v3, Lcom/pinguo/camera360/cloud/struct/PostStruct;
const-string/jumbo v4, "text"
const-string/jumbo v5, "signature"
const-string/jumbo v6, ""
invoke-direct {v3, v4, v5, v6}, Lcom/pinguo/camera360/cloud/struct/PostStruct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object v3, p0, Lcom/pinguo/camera360/cloud/request/MultiDayCompleteRequestConsole;->mSignature:Lcom/pinguo/camera360/cloud/struct/PostStruct;
new-instance v3, Lcom/pinguo/camera360/cloud/struct/PostStruct;
const-string/jumbo v4, "text"
const-string/jumbo v5, "app_key"
const-string/jumbo v6, ""
invoke-direct {v3, v4, v5, v6}, Lcom/pinguo/camera360/cloud/struct/PostStruct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object v3, p0, Lcom/pinguo/camera360/cloud/request/MultiDayCompleteRequestConsole;->mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;
iget-object v3, p0, Lcom/pinguo/camera360/cloud/request/MultiDayCompleteRequestConsole;->mData:[Lcom/pinguo/camera360/cloud/struct/PostStruct;
iget-object v4, p0, Lcom/pinguo/camera360/cloud/request/MultiDayCompleteRequestConsole;->mUserId:Lcom/pinguo/camera360/cloud/struct/PostStruct;
aput-object v4, v3, v7
iget-object v3, p0, Lcom/pinguo/camera360/cloud/request/MultiDayCompleteRequestConsole;->mData:[Lcom/pinguo/camera360/cloud/struct/PostStruct;
const/4 v4, 0x1
iget-object v5, p0, Lcom/pinguo/camera360/cloud/request/MultiDayCompleteRequestConsole;->mDays:Lcom/pinguo/camera360/cloud/struct/PostStruct;
aput-object v5, v3, v4
iget-object v3, p0, Lcom/pinguo/camera360/cloud/request/MultiDayCompleteRequestConsole;->mData:[Lcom/pinguo/camera360/cloud/struct/PostStruct;
const/4 v4, 0x2
iget-object v5, p0, Lcom/pinguo/camera360/cloud/request/MultiDayCompleteRequestConsole;->mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;
aput-object v5, v3, v4
iget-object v3, p0, Lcom/pinguo/camera360/cloud/request/MultiDayCompleteRequestConsole;->mData:[Lcom/pinguo/camera360/cloud/struct/PostStruct;
const/4 v4, 0x3
iget-object v5, p0, Lcom/pinguo/camera360/cloud/request/MultiDayCompleteRequestConsole;->mSignature:Lcom/pinguo/camera360/cloud/struct/PostStruct;
aput-object v5, v3, v4
iget-object v3, p0, Lcom/pinguo/camera360/cloud/request/MultiDayCompleteRequestConsole;->mUserId:Lcom/pinguo/camera360/cloud/struct/PostStruct;
invoke-virtual {v3, p3}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->setValue(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/cloud/request/MultiDayCompleteRequestConsole;->mUserId:Lcom/pinguo/camera360/cloud/struct/PostStruct;
invoke-virtual {v3}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->createData()Z
iget-object v3, p0, Lcom/pinguo/camera360/cloud/request/MultiDayCompleteRequestConsole;->mDays:Lcom/pinguo/camera360/cloud/struct/PostStruct;
invoke-virtual {v3, p4}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->setValue(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/cloud/request/MultiDayCompleteRequestConsole;->mDays:Lcom/pinguo/camera360/cloud/struct/PostStruct;
invoke-virtual {v3}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->createData()Z
iget-object v3, p0, Lcom/pinguo/camera360/cloud/request/MultiDayCompleteRequestConsole;->mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;
const-string/jumbo v4, "5dab06e7a53740ea9b78"
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->setValue(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/cloud/request/MultiDayCompleteRequestConsole;->mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;
invoke-virtual {v3}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->createData()Z
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;
move-result-object v0
const/4 v1, 0x0
if-eqz v0, :cond_9b
iget-object v1, v0, Lcom/pinguo/camera360/login/model/User$Info;->token:Ljava/lang/String;
:cond_9b
if-nez v1, :cond_a0
iput-boolean v7, p0, Lcom/pinguo/camera360/cloud/request/MultiDayCompleteRequestConsole;->bEnable:Z
:goto_9f
return-void
:cond_a0
const-string/jumbo v3, "\r"
const-string/jumbo v4, ""
invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v3, "\n"
const-string/jumbo v4, ""
invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v1
iget-object v3, p0, Lcom/pinguo/camera360/cloud/request/MultiDayCompleteRequestConsole;->mSignature:Lcom/pinguo/camera360/cloud/struct/PostStruct;
invoke-virtual {v3, v1}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->setValue(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/cloud/request/MultiDayCompleteRequestConsole;->mSignature:Lcom/pinguo/camera360/cloud/struct/PostStruct;
invoke-virtual {v3}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->createData()Z
goto :goto_9f
.end method