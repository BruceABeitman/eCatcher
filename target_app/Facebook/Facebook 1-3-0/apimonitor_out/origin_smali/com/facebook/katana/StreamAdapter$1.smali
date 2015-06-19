.class Lcom/facebook/katana/StreamAdapter$1;
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

    iput-object p1, p0, Lcom/facebook/katana/StreamAdapter$1;->this$0:Lcom/facebook/katana/StreamAdapter;

    iput-object p2, p0, Lcom/facebook/katana/StreamAdapter$1;->val$listener:Lcom/facebook/katana/StreamAdapter$StreamAdapterListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/katana/StreamAdapter$1;->val$listener:Lcom/facebook/katana/StreamAdapter$StreamAdapterListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/katana/service/api/FacebookPost;

    invoke-interface {v0, p0}, Lcom/facebook/katana/StreamAdapter$StreamAdapterListener;->onUserImageClicked(Lcom/facebook/katana/service/api/FacebookPost;)V

    return-void
.end method
