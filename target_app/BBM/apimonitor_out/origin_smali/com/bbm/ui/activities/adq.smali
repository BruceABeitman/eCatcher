.class final Lcom/bbm/ui/activities/adq;
.super Ljava/lang/Object;
.source "SearchResultsChannelsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/adq;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/bbm/ui/activities/adq;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->j(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Lcom/bbm/j/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/x;->f()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/bbm/ui/activities/adq;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->h(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/adq;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    invoke-static {v1, v0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->a(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;Ljava/lang/String;)V

    :goto_23
    return-void

    :cond_24
    iget-object v0, p0, Lcom/bbm/ui/activities/adq;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->j(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Lcom/bbm/j/x;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bbm/j/x;->a(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/adq;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->m(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Lcom/bbm/ui/activities/adz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/activities/adz;->notifyDataSetChanged()V
    :try_end_37
    .catch Lcom/bbm/j/z; {:try_start_0 .. :try_end_37} :catch_38

    goto :goto_23

    :catch_38
    move-exception v0

    goto :goto_23
.end method
