.class Lcom/facebook/katana/EventGuestsActivity$EventsAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "EventGuestsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/EventGuestsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventsAppSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/EventGuestsActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/EventGuestsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/EventGuestsActivity$EventsAppSessionListener;->this$0:Lcom/facebook/katana/EventGuestsActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/EventGuestsActivity;Lcom/facebook/katana/EventGuestsActivity$EventsAppSessionListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/katana/EventGuestsActivity$EventsAppSessionListener;-><init>(Lcom/facebook/katana/EventGuestsActivity;)V

    return-void
.end method


# virtual methods
.method public onEventGetMembersComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;JLjava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/katana/binding/AppSession;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            "J",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/katana/EventGuestsActivity$EventsAppSessionListener;->this$0:Lcom/facebook/katana/EventGuestsActivity;

    #getter for: Lcom/facebook/katana/EventGuestsActivity;->mAdapter:Lcom/facebook/katana/EventGuestsAdapter;
    invoke-static {v0}, Lcom/facebook/katana/EventGuestsActivity;->access$10(Lcom/facebook/katana/EventGuestsActivity;)Lcom/facebook/katana/EventGuestsAdapter;

    move-result-object v0

    invoke-virtual {v0, p8}, Lcom/facebook/katana/EventGuestsAdapter;->setItemsInfo(Ljava/util/Map;)V

    return-void
.end method

.method public onUserImageDownloaded(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Lcom/facebook/katana/binding/UserImage;Lcom/facebook/katana/binding/UserImagesCache;)V
    .registers 9

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_d

    iget-object v0, p0, Lcom/facebook/katana/EventGuestsActivity$EventsAppSessionListener;->this$0:Lcom/facebook/katana/EventGuestsActivity;

    #getter for: Lcom/facebook/katana/EventGuestsActivity;->mAdapter:Lcom/facebook/katana/EventGuestsAdapter;
    invoke-static {v0}, Lcom/facebook/katana/EventGuestsActivity;->access$10(Lcom/facebook/katana/EventGuestsActivity;)Lcom/facebook/katana/EventGuestsAdapter;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/facebook/katana/EventGuestsAdapter;->updateUserImage(Lcom/facebook/katana/binding/UserImage;)V

    :cond_d
    return-void
.end method

.method public onUserImageLoaded(Lcom/facebook/katana/binding/AppSession;Lcom/facebook/katana/binding/UserImage;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/katana/EventGuestsActivity$EventsAppSessionListener;->this$0:Lcom/facebook/katana/EventGuestsActivity;

    #getter for: Lcom/facebook/katana/EventGuestsActivity;->mAdapter:Lcom/facebook/katana/EventGuestsAdapter;
    invoke-static {v0}, Lcom/facebook/katana/EventGuestsActivity;->access$10(Lcom/facebook/katana/EventGuestsActivity;)Lcom/facebook/katana/EventGuestsAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/katana/EventGuestsAdapter;->updateUserImage(Lcom/facebook/katana/binding/UserImage;)V

    return-void
.end method
