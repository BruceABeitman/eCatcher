.class Lcom/facebook/katana/EventDetailsActivity$EventsAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "EventDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/EventDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventsAppSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/EventDetailsActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/EventDetailsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/EventDetailsActivity$EventsAppSessionListener;->this$0:Lcom/facebook/katana/EventDetailsActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/EventDetailsActivity;Lcom/facebook/katana/EventDetailsActivity$EventsAppSessionListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/katana/EventDetailsActivity$EventsAppSessionListener;-><init>(Lcom/facebook/katana/EventDetailsActivity;)V

    return-void
.end method


# virtual methods
.method public onDownloadStreamPhotoComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 9

    iget-object v0, p0, Lcom/facebook/katana/EventDetailsActivity$EventsAppSessionListener;->this$0:Lcom/facebook/katana/EventDetailsActivity;

    #getter for: Lcom/facebook/katana/EventDetailsActivity;->mAdapter:Lcom/facebook/katana/EventDetailsAdapter;
    invoke-static {v0}, Lcom/facebook/katana/EventDetailsActivity;->access$10(Lcom/facebook/katana/EventDetailsActivity;)Lcom/facebook/katana/EventDetailsAdapter;

    move-result-object v0

    invoke-virtual {v0, p7, p6}, Lcom/facebook/katana/EventDetailsAdapter;->updatePhoto(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public onEventRsvpComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;JZ)V
    .registers 14

    iget-object v1, p0, Lcom/facebook/katana/EventDetailsActivity$EventsAppSessionListener;->this$0:Lcom/facebook/katana/EventDetailsActivity;

    #getter for: Lcom/facebook/katana/EventDetailsActivity;->mAdapter:Lcom/facebook/katana/EventDetailsAdapter;
    invoke-static {v1}, Lcom/facebook/katana/EventDetailsActivity;->access$10(Lcom/facebook/katana/EventDetailsActivity;)Lcom/facebook/katana/EventDetailsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/EventDetailsAdapter;->getEventId()J

    move-result-wide v1

    cmp-long v1, p6, v1

    if-nez v1, :cond_55

    iget-object v1, p0, Lcom/facebook/katana/EventDetailsActivity$EventsAppSessionListener;->this$0:Lcom/facebook/katana/EventDetailsActivity;

    const v2, 0x7f0b0020

    invoke-virtual {v1, v2}, Lcom/facebook/katana/EventDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v1, 0xc8

    if-ne p3, v1, :cond_56

    if-eqz p8, :cond_56

    iget-object v1, p0, Lcom/facebook/katana/EventDetailsActivity$EventsAppSessionListener;->this$0:Lcom/facebook/katana/EventDetailsActivity;

    #getter for: Lcom/facebook/katana/EventDetailsActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/facebook/katana/EventDetailsActivity;->access$11(Lcom/facebook/katana/EventDetailsActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    iget-object v1, p0, Lcom/facebook/katana/EventDetailsActivity$EventsAppSessionListener;->this$0:Lcom/facebook/katana/EventDetailsActivity;

    #getter for: Lcom/facebook/katana/EventDetailsActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/facebook/katana/EventDetailsActivity;->access$11(Lcom/facebook/katana/EventDetailsActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/facebook/katana/EventDetailsActivity$EventsAppSessionListener;->this$0:Lcom/facebook/katana/EventDetailsActivity;

    #getter for: Lcom/facebook/katana/EventDetailsActivity;->mAdapter:Lcom/facebook/katana/EventDetailsAdapter;
    invoke-static {v1}, Lcom/facebook/katana/EventDetailsActivity;->access$10(Lcom/facebook/katana/EventDetailsActivity;)Lcom/facebook/katana/EventDetailsAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/EventDetailsActivity$EventsAppSessionListener;->this$0:Lcom/facebook/katana/EventDetailsActivity;

    const v3, 0x7f0b001f

    invoke-virtual {v2, v3}, Lcom/facebook/katana/EventDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/katana/EventDetailsActivity$EventsAppSessionListener;->this$0:Lcom/facebook/katana/EventDetailsActivity;

    #getter for: Lcom/facebook/katana/EventDetailsActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/facebook/katana/EventDetailsActivity;->access$11(Lcom/facebook/katana/EventDetailsActivity;)Landroid/database/Cursor;

    move-result-object v3

    const/16 v4, 0xb

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/katana/EventDetailsAdapter;->setRsvpStatus(Landroid/view/View;I)V

    :cond_55
    :goto_55
    return-void

    :cond_56
    iget-object v1, p0, Lcom/facebook/katana/EventDetailsActivity$EventsAppSessionListener;->this$0:Lcom/facebook/katana/EventDetailsActivity;

    iget-object v2, p0, Lcom/facebook/katana/EventDetailsActivity$EventsAppSessionListener;->this$0:Lcom/facebook/katana/EventDetailsActivity;

    const v3, 0x7f08004f

    invoke-virtual {v2, v3}, Lcom/facebook/katana/EventDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_55
.end method

.method public onPhotoDecodeComplete(Lcom/facebook/katana/binding/AppSession;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/katana/EventDetailsActivity$EventsAppSessionListener;->this$0:Lcom/facebook/katana/EventDetailsActivity;

    #getter for: Lcom/facebook/katana/EventDetailsActivity;->mAdapter:Lcom/facebook/katana/EventDetailsAdapter;
    invoke-static {v0}, Lcom/facebook/katana/EventDetailsActivity;->access$10(Lcom/facebook/katana/EventDetailsActivity;)Lcom/facebook/katana/EventDetailsAdapter;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/facebook/katana/EventDetailsAdapter;->updatePhoto(Landroid/graphics/Bitmap;Ljava/lang/String;)V

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

    iget-object v0, p0, Lcom/facebook/katana/EventDetailsActivity$EventsAppSessionListener;->this$0:Lcom/facebook/katana/EventDetailsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/EventDetailsActivity;->prepareEvent(Z)V

    return-void
.end method
