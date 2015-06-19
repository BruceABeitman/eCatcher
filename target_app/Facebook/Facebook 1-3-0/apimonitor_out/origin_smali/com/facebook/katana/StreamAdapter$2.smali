.class Lcom/facebook/katana/StreamAdapter$2;
.super Ljava/lang/Object;
.source "StreamAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/StreamAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListView;Lcom/facebook/katana/binding/FacebookStreamContainer;Lcom/facebook/katana/binding/UserImagesCache;Lcom/facebook/katana/binding/StreamPhotosCache;Lcom/facebook/katana/StreamAdapter$StreamAdapterListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/StreamAdapter;

.field private final synthetic val$listener:Lcom/facebook/katana/StreamAdapter$StreamAdapterListener;


# direct methods
.method constructor <init>(Lcom/facebook/katana/StreamAdapter;Lcom/facebook/katana/StreamAdapter$StreamAdapterListener;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/katana/StreamAdapter$2;->this$0:Lcom/facebook/katana/StreamAdapter;

    iput-object p2, p0, Lcom/facebook/katana/StreamAdapter$2;->val$listener:Lcom/facebook/katana/StreamAdapter$StreamAdapterListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;

    iget-object v1, p0, Lcom/facebook/katana/StreamAdapter$2;->val$listener:Lcom/facebook/katana/StreamAdapter$StreamAdapterListener;

    invoke-interface {v1, v0}, Lcom/facebook/katana/StreamAdapter$StreamAdapterListener;->onOpenMediaItem(Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;)V

    return-void
.end method
