.class Lcom/pinguo/camera360/camera/activity/OptionsCamera$1;
.super Ljava/lang/Object;
.source "OptionsCamera.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/activity/OptionsCamera;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/activity/OptionsCamera;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/activity/OptionsCamera;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$1;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$1;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsCamera;

    const-class v2, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsCamera$1;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsCamera;

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Lcom/pinguo/camera360/camera/activity/OptionsCamera;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
