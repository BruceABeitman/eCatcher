.class Lcom/pinguo/camera360/cloud/login/PersonalInformation$13;
.super Ljava/lang/Object;
.source "PersonalInformation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/cloud/login/PersonalInformation;->onModifyGenderClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/cloud/login/PersonalInformation;

.field private final synthetic val$info:Lcom/pinguo/camera360/login/model/User$Info;

.field private final synthetic val$user:Lcom/pinguo/camera360/login/model/User;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/cloud/login/PersonalInformation;Lcom/pinguo/camera360/login/model/User$Info;Lcom/pinguo/camera360/login/model/User;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation$13;->this$0:Lcom/pinguo/camera360/cloud/login/PersonalInformation;

    iput-object p2, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation$13;->val$info:Lcom/pinguo/camera360/login/model/User$Info;

    iput-object p3, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation$13;->val$user:Lcom/pinguo/camera360/login/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    const-string/jumbo v0, ""

    if-nez p2, :cond_21

    const-string/jumbo v0, "1"

    :goto_8
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation$13;->val$info:Lcom/pinguo/camera360/login/model/User$Info;

    iget-object v1, v1, Lcom/pinguo/camera360/login/model/User$Info;->gender:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalGender(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation$13;->this$0:Lcom/pinguo/camera360/cloud/login/PersonalInformation;

    iget-object v2, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation$13;->val$user:Lcom/pinguo/camera360/login/model/User;

    #calls: Lcom/pinguo/camera360/cloud/login/PersonalInformation;->modifyGender(Ljava/lang/String;Lcom/pinguo/camera360/login/model/User;)V
    invoke-static {v1, v0, v2}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->access$10(Lcom/pinguo/camera360/cloud/login/PersonalInformation;Ljava/lang/String;Lcom/pinguo/camera360/login/model/User;)V

    :cond_20
    return-void

    :cond_21
    const-string/jumbo v0, "2"

    goto :goto_8
.end method
