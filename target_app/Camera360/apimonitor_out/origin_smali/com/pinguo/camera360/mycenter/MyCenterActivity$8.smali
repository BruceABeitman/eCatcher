.class Lcom/pinguo/camera360/mycenter/MyCenterActivity$8;
.super Ljava/lang/Object;
.source "MyCenterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/mycenter/MyCenterActivity;->initGridView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/mycenter/MyCenterActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/mycenter/MyCenterActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity$8;->this$0:Lcom/pinguo/camera360/mycenter/MyCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity$8;->this$0:Lcom/pinguo/camera360/mycenter/MyCenterActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->enterNbtf()V

    return-void
.end method
