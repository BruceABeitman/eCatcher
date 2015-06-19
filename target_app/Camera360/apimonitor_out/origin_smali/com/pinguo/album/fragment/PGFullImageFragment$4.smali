.class Lcom/pinguo/album/fragment/PGFullImageFragment$4;
.super Ljava/lang/Object;
.source "PGFullImageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/album/fragment/PGFullImageFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/album/fragment/PGFullImageFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$4;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_b

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$4;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;

    #calls: Lcom/pinguo/album/fragment/PGFullImageFragment;->startDownload()V
    invoke-static {v0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$17(Lcom/pinguo/album/fragment/PGFullImageFragment;)V

    :cond_b
    return-void
.end method
