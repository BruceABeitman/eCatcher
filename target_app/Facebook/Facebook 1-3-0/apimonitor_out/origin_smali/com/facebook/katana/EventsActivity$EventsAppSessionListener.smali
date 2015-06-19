.class Lcom/facebook/katana/EventsActivity$EventsAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "EventsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/EventsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventsAppSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/EventsActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/EventsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/EventsActivity$EventsAppSessionListener;->this$0:Lcom/facebook/katana/EventsActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/EventsActivity;Lcom/facebook/katana/EventsActivity$EventsAppSessionListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/katana/EventsActivity$EventsAppSessionListener;-><init>(Lcom/facebook/katana/EventsActivity;)V

    return-void
.end method


# virtual methods
.method public onDownloadStreamPhotoComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 9

    iget-object v0, p0, Lcom/facebook/katana/EventsActivity$EventsAppSessionListener;->this$0:Lcom/facebook/katana/EventsActivity;

    #getter for: Lcom/facebook/katana/EventsActivity;->mAdapter:Lcom/facebook/katana/EventsAdapter;
    invoke-static {v0}, Lcom/facebook/katana/EventsActivity;->access$10(Lcom/facebook/katana/EventsActivity;)Lcom/facebook/katana/EventsAdapter;

    move-result-object v0

    invoke-virtual {v0, p7, p6}, Lcom/facebook/katana/EventsAdapter;->updatePhoto(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public onFriendsSyncComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 7

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_d

    iget-object v0, p0, Lcom/facebook/katana/EventsActivity$EventsAppSessionListener;->this$0:Lcom/facebook/katana/EventsActivity;

    #getter for: Lcom/facebook/katana/EventsActivity;->mAdapter:Lcom/facebook/katana/EventsAdapter;
    invoke-static {v0}, Lcom/facebook/katana/EventsActivity;->access$10(Lcom/facebook/katana/EventsActivity;)Lcom/facebook/katana/EventsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/EventsAdapter;->setItemsAsync()V

    :cond_d
    return-void
.end method

.method public onPhotoDecodeComplete(Lcom/facebook/katana/binding/AppSession;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/katana/EventsActivity$EventsAppSessionListener;->this$0:Lcom/facebook/katana/EventsActivity;

    #getter for: Lcom/facebook/katana/EventsActivity;->mAdapter:Lcom/facebook/katana/EventsAdapter;
    invoke-static {v0}, Lcom/facebook/katana/EventsActivity;->access$10(Lcom/facebook/katana/EventsActivity;)Lcom/facebook/katana/EventsAdapter;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/facebook/katana/EventsAdapter;->updatePhoto(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public onUserGetEventsComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/katana/binding/AppSession;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookEvent;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/katana/EventsActivity$EventsAppSessionListener;->this$0:Lcom/facebook/katana/EventsActivity;

    #getter for: Lcom/facebook/katana/EventsActivity;->mAdapter:Lcom/facebook/katana/EventsAdapter;
    invoke-static {v0}, Lcom/facebook/katana/EventsActivity;->access$10(Lcom/facebook/katana/EventsActivity;)Lcom/facebook/katana/EventsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/EventsAdapter;->setItemsAsync()V

    iget-object v0, p0, Lcom/facebook/katana/EventsActivity$EventsAppSessionListener;->this$0:Lcom/facebook/katana/EventsActivity;

    const/4 v1, 0x0

    #calls: Lcom/facebook/katana/EventsActivity;->showProgress(Z)V
    invoke-static {v0, v1}, Lcom/facebook/katana/EventsActivity;->access$11(Lcom/facebook/katana/EventsActivity;Z)V

    return-void
.end method
