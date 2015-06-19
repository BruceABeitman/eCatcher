.class public Lcom/sina/weibo/sdk/api/CmdObject;
.super Lcom/sina/weibo/sdk/api/BaseMediaObject;
.source "CmdObject.java"
.field public static final CMD_HOME:Ljava/lang/String; = "home"
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field public cmd:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/sina/weibo/sdk/api/CmdObject$1;
invoke-direct {v0}, Lcom/sina/weibo/sdk/api/CmdObject$1;-><init>()V
sput-object v0, Lcom/sina/weibo/sdk/api/CmdObject;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/sina/weibo/sdk/api/BaseMediaObject;-><init>()V
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0}, Lcom/sina/weibo/sdk/api/BaseMediaObject;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/sina/weibo/sdk/api/CmdObject;->cmd:Ljava/lang/String;
return-void
.end method
.method public checkArgs()Z
.registers 3
iget-object v0, p0, Lcom/sina/weibo/sdk/api/CmdObject;->cmd:Ljava/lang/String;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/sina/weibo/sdk/api/CmdObject;->cmd:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/sina/weibo/sdk/api/CmdObject;->cmd:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
const/16 v1, 0x400
if-le v0, v1, :cond_18
:cond_16
const/4 v0, 0x0
:goto_17
return v0
:cond_18
const/4 v0, 0x1
goto :goto_17
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getObjType()I
.registers 2
const/4 v0, 0x7
return v0
.end method
.method protected toExtraMediaObject(Ljava/lang/String;)Lcom/sina/weibo/sdk/api/BaseMediaObject;
.registers 2
return-object p0
.end method
.method protected toExtraMediaString()Ljava/lang/String;
.registers 2
const-string/jumbo v0, ""
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
iget-object v0, p0, Lcom/sina/weibo/sdk/api/CmdObject;->cmd:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
return-void
.end method