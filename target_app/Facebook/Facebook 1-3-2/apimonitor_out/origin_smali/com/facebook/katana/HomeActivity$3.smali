.class Lcom/facebook/katana/HomeActivity$3;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/HomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/HomeActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/HomeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/HomeActivity$3;->this$0:Lcom/facebook/katana/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/HomeActivity$3;->this$0:Lcom/facebook/katana/HomeActivity;

    #calls: Lcom/facebook/katana/HomeActivity;->markAsRead()V
    invoke-static {v0}, Lcom/facebook/katana/HomeActivity;->access$16(Lcom/facebook/katana/HomeActivity;)V

    return-void
.end method