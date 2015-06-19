.class Lcom/pinguo/share/local/LocalShareModel$1;
.super Ljava/lang/Object;
.source "LocalShareModel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/share/local/LocalShareModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/share/local/LocalShareModel;


# direct methods
.method constructor <init>(Lcom/pinguo/share/local/LocalShareModel;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/local/LocalShareModel$1;->this$0:Lcom/pinguo/share/local/LocalShareModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/share/local/LocalShareModel$1;->this$0:Lcom/pinguo/share/local/LocalShareModel;

    const/4 v1, 0x1

    #setter for: Lcom/pinguo/share/local/LocalShareModel;->mShareProcessCancelled:Z
    invoke-static {v0, v1}, Lcom/pinguo/share/local/LocalShareModel;->access$0(Lcom/pinguo/share/local/LocalShareModel;Z)V

    return-void
.end method
