.class Lcom/facebook/katana/EventDetailsActivity$1;
.super Ljava/lang/Object;
.source "EventDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/EventDetailsActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/EventDetailsActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/EventDetailsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/EventDetailsActivity$1;->this$0:Lcom/facebook/katana/EventDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/facebook/katana/EventDetailsActivity$1;->this$0:Lcom/facebook/katana/EventDetailsActivity;

    #getter for: Lcom/facebook/katana/EventDetailsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
    invoke-static {v1}, Lcom/facebook/katana/EventDetailsActivity;->access$12(Lcom/facebook/katana/EventDetailsActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/EventDetailsActivity$1;->this$0:Lcom/facebook/katana/EventDetailsActivity;

    iget-object v3, p0, Lcom/facebook/katana/EventDetailsActivity$1;->this$0:Lcom/facebook/katana/EventDetailsActivity;

    #getter for: Lcom/facebook/katana/EventDetailsActivity;->mAdapter:Lcom/facebook/katana/EventDetailsAdapter;
    invoke-static {v3}, Lcom/facebook/katana/EventDetailsActivity;->access$10(Lcom/facebook/katana/EventDetailsActivity;)Lcom/facebook/katana/EventDetailsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/katana/EventDetailsAdapter;->getEventId()J

    move-result-wide v3

    invoke-static {p2}, Lcom/facebook/katana/service/api/FacebookEvent;->getRsvpStatus(I)Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/facebook/katana/binding/AppSession;->eventRsvp(Landroid/content/Context;JLcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;)Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/katana/EventDetailsActivity$1;->this$0:Lcom/facebook/katana/EventDetailsActivity;

    const v2, 0x7f0b0020

    invoke-virtual {v1, v2}, Lcom/facebook/katana/EventDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/facebook/katana/EventDetailsActivity$1;->this$0:Lcom/facebook/katana/EventDetailsActivity;

    invoke-virtual {v1, v6}, Lcom/facebook/katana/EventDetailsActivity;->dismissDialog(I)V

    return-void
.end method
