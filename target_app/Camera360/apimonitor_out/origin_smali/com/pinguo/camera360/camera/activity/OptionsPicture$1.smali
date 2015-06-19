.class Lcom/pinguo/camera360/camera/activity/OptionsPicture$1;
.super Ljava/lang/Object;
.source "OptionsPicture.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/activity/OptionsPicture;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/activity/OptionsPicture;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/activity/OptionsPicture;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture$1;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsPicture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture$1;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsPicture;

    #getter for: Lcom/pinguo/camera360/camera/activity/OptionsPicture;->tvOptionsPictureSizeSummary:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->access$0(Lcom/pinguo/camera360/camera/activity/OptionsPicture;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture$1;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsPicture;

    #calls: Lcom/pinguo/camera360/camera/activity/OptionsPicture;->buildPictureSizeSummary()Ljava/lang/String;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->access$1(Lcom/pinguo/camera360/camera/activity/OptionsPicture;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
