.class final Lcom/bbm/ui/activities/adp;
.super Ljava/lang/Object;
.source "SearchResultsChannelsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/adp;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ec;

    iget-object v1, p0, Lcom/bbm/ui/activities/adp;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->a(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_38

    iget-object v1, v0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;

    sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v1, v2, :cond_38

    iget-object v1, v0, Lcom/bbm/d/ec;->I:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/ui/activities/adp;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->a(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/bbm/ui/activities/adp;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    check-cast p1, Landroid/widget/ImageView;

    sget-object v2, Lcom/bbm/d/az;->c:Lcom/bbm/d/az;

    invoke-static {v0, v1, p1, v2}, Lcom/bbm/util/s;->a(Lcom/bbm/d/ec;Landroid/app/Activity;Landroid/widget/ImageView;Lcom/bbm/d/az;)V

    :goto_37
    return-void

    :cond_38
    iget-object v1, p0, Lcom/bbm/ui/activities/adp;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    check-cast p1, Landroid/widget/ImageView;

    sget-object v2, Lcom/bbm/d/az;->e:Lcom/bbm/d/az;

    invoke-static {v0, v1, p1, v2}, Lcom/bbm/util/s;->a(Lcom/bbm/d/ec;Landroid/app/Activity;Landroid/widget/ImageView;Lcom/bbm/d/az;)V

    goto :goto_37
.end method
