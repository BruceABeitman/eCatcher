.class Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation$2;
.super Ljava/lang/Object;
.source "AlbumActionBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;->setRefreshEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;

.field private final synthetic val$updateThumbImageEvent:Lcom/pinguo/camera360/camera/event/UpdateThumbImageEvent;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;Lcom/pinguo/camera360/camera/event/UpdateThumbImageEvent;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation$2;->this$1:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;

    iput-object p2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation$2;->val$updateThumbImageEvent:Lcom/pinguo/camera360/camera/event/UpdateThumbImageEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation$2;->val$updateThumbImageEvent:Lcom/pinguo/camera360/camera/event/UpdateThumbImageEvent;

    invoke-virtual {v0, v1}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    return-void
.end method
