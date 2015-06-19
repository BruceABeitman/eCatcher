.class Lcom/pinguo/camera360/gallery/PhotoDataAdapter$SourceListener;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/pinguo/camera360/gallery/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SourceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$SourceListener;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;Lcom/pinguo/camera360/gallery/PhotoDataAdapter$SourceListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$SourceListener;-><init>(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$SourceListener;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;

    #getter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mReloadTask:Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$5(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$SourceListener;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;

    #getter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mReloadTask:Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$5(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    :cond_11
    return-void
.end method
