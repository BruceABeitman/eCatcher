.class final Lcom/bbm/ui/activities/adx;
.super Ljava/lang/Object;
.source "SearchResultsChannelsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/adx;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/bbm/ui/activities/adx;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->h(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/adx;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->h(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/adx;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->h(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    return-void
.end method
