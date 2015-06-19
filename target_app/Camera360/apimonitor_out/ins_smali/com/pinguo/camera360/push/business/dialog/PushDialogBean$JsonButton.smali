.class public Lcom/pinguo/camera360/push/business/dialog/PushDialogBean$JsonButton;
.super Ljava/lang/Object;
.source "PushDialogBean.java"
.field private link:Ljava/lang/String;
.field private txt:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean$JsonButton;->txt:Ljava/lang/String;
iput-object v0, p0, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean$JsonButton;->link:Ljava/lang/String;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/push/business/dialog/PushDialogBean$JsonButton;Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean$JsonButton;->txt:Ljava/lang/String;
return-void
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/push/business/dialog/PushDialogBean$JsonButton;Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean$JsonButton;->link:Ljava/lang/String;
return-void
.end method
.method public getLink()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean$JsonButton;->link:Ljava/lang/String;
return-object v0
.end method
.method public getTxt()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean$JsonButton;->txt:Ljava/lang/String;
return-object v0
.end method