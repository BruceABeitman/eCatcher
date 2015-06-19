.class public Lcom/pinguo/camera360/cloud/request/DayCompleteRequestConsole;
.super Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;
.source "DayCompleteRequestConsole.java"
.field private static final APP_KEY_NAME:Ljava/lang/String; = "app_key"
.field private static final DAY_NAME:Ljava/lang/String; = "day"
.field private static final SIGNATURE_NAME:Ljava/lang/String; = "signature"
.field private static final USER_ID_NAME:Ljava/lang/String; = "user_id"
.field private mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;
.field private mDay:Lcom/pinguo/camera360/cloud/struct/PostStruct;
.field private mSignature:Lcom/pinguo/camera360/cloud/struct/PostStruct;
.field private mUserID:Lcom/pinguo/camera360/cloud/struct/PostStruct;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 12
const/4 v5, 0x0
const/4 v2, 0x0
const/4 v1, 0x4
invoke-direct {p0, v1, p1, p2}, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;-><init>(ILjava/lang/String;Ljava/lang/String;)V
iput-object v2, p0, Lcom/pinguo/camera360/cloud/request/DayCompleteRequestConsole;->mUserID:Lcom/pinguo/camera360/cloud/struct/PostStruct;
iput-object v2, p0, Lcom/pinguo/camera360/cloud/request/DayCompleteRequestConsole;->mDay:Lcom/pinguo/camera360/cloud/struct/PostStruct;
iput-object v2, p0, Lcom/pinguo/camera360/cloud/request/DayCompleteRequestConsole;->mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;
iput-object v2, p0, Lcom/pinguo/camera360/cloud/request/DayCompleteRequestConsole;->mSignature:Lcom/pinguo/camera360/cloud/struct/PostStruct;
new-instance v1, Lcom/pinguo/camera360/cloud/struct/PostStruct;
const-string/jumbo v2, "text"
const-string/jumbo v3, "user_id"
const-string/jumbo v4, ""
invoke-direct {v1, v2, v3, v4}, Lcom/pinguo/camera360/cloud/struct/PostStruct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object v1, p0, Lcom/pinguo/camera360/cloud/request/DayCompleteRequestConsole;->mUserID:Lcom/pinguo/camera360/cloud/struct/PostStruct;
new-instance v1, Lcom/pinguo/camera360/cloud/struct/PostStruct;
const-string/jumbo v2, "text"
const-string/jumbo v3, "day"
const-string/jumbo v4, ""
invoke-direct {v1, v2, v3, v4}, Lcom/pinguo/camera360/cloud/struct/PostStruct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object v1, p0, Lcom/pinguo/camera360/cloud/request/DayCompleteRequestConsole;->mDay:Lcom/pinguo/camera360/cloud/struct/PostStruct;
new-instance v1, Lcom/pinguo/camera360/cloud/struct/PostStruct;
const-string/jumbo v2, "text"
const-string/jumbo v3, "app_key"
const-string/jumbo v4, ""
invoke-direct {v1, v2, v3, v4}, Lcom/pinguo/camera360/cloud/struct/PostStruct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object v1, p0, Lcom/pinguo/camera360/cloud/request/DayCompleteRequestConsole;->mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;
new-instance v1, Lcom/pinguo/camera360/cloud/struct/PostStruct;
const-string/jumbo v2, "text"
const-string/jumbo v3, "signature"
const-string/jumbo v4, ""
invoke-direct {v1, v2, v3, v4}, Lcom/pinguo/camera360/cloud/struct/PostStruct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object v1, p0, Lcom/pinguo/camera360/cloud/request/DayCompleteRequestConsole;->mSignature:Lcom/pinguo/camera360/cloud/struct/PostStruct;
iget-object v1, p0, Lcom/pinguo/camera360/cloud/request/DayCompleteRequestConsole;->mData:[Lcom/pinguo/camera360/cloud/struct/PostStruct;
iget-object v2, p0, Lcom/pinguo/camera360/cloud/request/DayCompleteRequestConsole;->mUserID:Lcom/pinguo/camera360/cloud/struct/PostStruct;
aput-object v2, v1, v5
iget-object v1, p0, Lcom/pinguo/camera360/cloud/request/DayCompleteRequestConsole;->mData:[Lcom/pinguo/camera360/cloud/struct/PostStruct;
const/4 v2, 0x1
iget-object v3, p0, Lcom/pinguo/camera360/cloud/request/DayCompleteRequestConsole;->mDay:Lcom/pinguo/camera360/cloud/struct/PostStruct;
aput-object v3, v1, v2
iget-object v1, p0, Lcom/pinguo/camera360/cloud/request/DayCompleteRequestConsole;->mData:[Lcom/pinguo/camera360/cloud/struct/PostStruct;
const/4 v2, 0x2
iget-object v3, p0, Lcom/pinguo/camera360/cloud/request/DayCompleteRequestConsole;->mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;
aput-object v3, v1, v2
iget-object v1, p0, Lcom/pinguo/camera360/cloud/request/DayCompleteRequestConsole;->mData:[Lcom/pinguo/camera360/cloud/struct/PostStruct;
const/4 v2, 0x3
iget-object v3, p0, Lcom/pinguo/camera360/cloud/request/DayCompleteRequestConsole;->mSignature:Lcom/pinguo/camera360/cloud/struct/PostStruct;
aput-object v3, v1, v2
move-object v0, p3
if-nez v0, :cond_6f
iput-boolean v5, p0, Lcom/pinguo/camera360/cloud/request/DayCompleteRequestConsole;->bEnable:Z
:goto_6e
return-void
:cond_6f
const-string/jumbo v1, "\r"
const-string/jumbo v2, ""
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "\n"
const-string/jumbo v2, ""
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/cloud/request/DayCompleteRequestConsole;->mUserID:Lcom/pinguo/camera360/cloud/struct/PostStruct;
invoke-virtual {v1, p4}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->setValue(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/cloud/request/DayCompleteRequestConsole;->mUserID:Lcom/pinguo/camera360/cloud/struct/PostStruct;
invoke-virtual {v1}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->createData()Z
const-string/jumbo v1, "-"
const-string/jumbo v2, "%2D"
invoke-virtual {p5, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object p5
iget-object v1, p0, Lcom/pinguo/camera360/cloud/request/DayCompleteRequestConsole;->mDay:Lcom/pinguo/camera360/cloud/struct/PostStruct;
invoke-virtual {v1, p5}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->setValue(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/cloud/request/DayCompleteRequestConsole;->mDay:Lcom/pinguo/camera360/cloud/struct/PostStruct;
invoke-virtual {v1}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->createData()Z
iget-object v1, p0, Lcom/pinguo/camera360/cloud/request/DayCompleteRequestConsole;->mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;
const-string/jumbo v2, "5dab06e7a53740ea9b78"
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->setValue(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/cloud/request/DayCompleteRequestConsole;->mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;
invoke-virtual {v1}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->createData()Z
iget-object v1, p0, Lcom/pinguo/camera360/cloud/request/DayCompleteRequestConsole;->mSignature:Lcom/pinguo/camera360/cloud/struct/PostStruct;
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->setValue(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/cloud/request/DayCompleteRequestConsole;->mSignature:Lcom/pinguo/camera360/cloud/struct/PostStruct;
invoke-virtual {v1}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->createData()Z
goto :goto_6e
.end method