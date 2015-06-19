.class Lcom/pinguo/camera360/camera/activity/OptionsPicture$3;
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

.field private final synthetic val$haveFront:Z


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/activity/OptionsPicture;Z)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture$3;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsPicture;

    iput-boolean p2, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture$3;->val$haveFront:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture$3;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsPicture;

    iget-boolean v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture$3;->val$haveFront:Z

    #calls: Lcom/pinguo/camera360/camera/activity/OptionsPicture;->selectPicRedress(IZ)V
    invoke-static {v0, p2, v1}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->access$2(Lcom/pinguo/camera360/camera/activity/OptionsPicture;IZ)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture$3;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsPicture;

    #getter for: Lcom/pinguo/camera360/camera/activity/OptionsPicture;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->access$3(Lcom/pinguo/camera360/camera/activity/OptionsPicture;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->dismiss()V

    return-void
.end method
