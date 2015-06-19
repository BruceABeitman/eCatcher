.class final Lcom/bbm/ui/activities/abd;
.super Ljava/lang/Object;
.source "OwnedChannelLobbyActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/abd;->b:Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;

    iput-object p2, p0, Lcom/bbm/ui/activities/abd;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .registers 6

    iget-object v0, p0, Lcom/bbm/ui/activities/abd;->b:Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->a(Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;)Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/bbm/ui/activities/abd;->b:Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->b(Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;)Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/bbm/ui/activities/abd;->b:Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->c(Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;)Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/bbm/ui/activities/abd;->b:Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;

    invoke-static {v3}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->d(Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;)Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->getHeight()I

    move-result v3

    if-ne v0, v1, :cond_2e

    if-ne v1, v2, :cond_2e

    if-eq v2, v3, :cond_72

    :cond_2e
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eq v0, v4, :cond_48

    iget-object v0, p0, Lcom/bbm/ui/activities/abd;->b:Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->a(Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;)Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_48
    if-eq v1, v4, :cond_56

    iget-object v0, p0, Lcom/bbm/ui/activities/abd;->b:Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->b(Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;)Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_56
    if-eq v2, v4, :cond_64

    iget-object v0, p0, Lcom/bbm/ui/activities/abd;->b:Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->c(Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;)Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_64
    if-eq v3, v4, :cond_72

    iget-object v0, p0, Lcom/bbm/ui/activities/abd;->b:Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->d(Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;)Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_72
    iget-object v0, p0, Lcom/bbm/ui/activities/abd;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
