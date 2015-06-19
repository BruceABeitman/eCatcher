.class Lcom/pinguo/camera360/LocationTestActivity$3;
.super Ljava/lang/Object;
.source "LocationTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/LocationTestActivity;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/LocationTestActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/LocationTestActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/LocationTestActivity$3;->this$0:Lcom/pinguo/camera360/LocationTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/LocationTestActivity$3;->this$0:Lcom/pinguo/camera360/LocationTestActivity;

    #calls: Lcom/pinguo/camera360/LocationTestActivity;->doRequestAddress()V
    invoke-static {v0}, Lcom/pinguo/camera360/LocationTestActivity;->access$6(Lcom/pinguo/camera360/LocationTestActivity;)V

    return-void
.end method
