.class final Lcom/bbm/ui/activities/dy;
.super Ljava/lang/Object;
.source "ChannelReportsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ea;

.field final synthetic b:Lcom/bbm/ui/activities/ChannelReportsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ChannelReportsActivity;Lcom/bbm/ui/activities/ea;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/dy;->b:Lcom/bbm/ui/activities/ChannelReportsActivity;

    iput-object p2, p0, Lcom/bbm/ui/activities/dy;->a:Lcom/bbm/ui/activities/ea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/bbm/ui/activities/dy;->a:Lcom/bbm/ui/activities/ea;

    iget-object v0, v0, Lcom/bbm/ui/activities/ea;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/bbm/ui/activities/dy;->b:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/dy;->a:Lcom/bbm/ui/activities/ea;

    iget-object v1, v1, Lcom/bbm/ui/activities/ea;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/ui/activities/dy;->b:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-static {v0, v1, v2}, Lcom/bbm/util/ac;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bbm/ui/activities/cn;)V

    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/bbm/ui/activities/dy;->b:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/dy;->a:Lcom/bbm/ui/activities/ea;

    iget-object v1, v1, Lcom/bbm/ui/activities/ea;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/ui/activities/dy;->a:Lcom/bbm/ui/activities/ea;

    iget-object v2, v2, Lcom/bbm/ui/activities/ea;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/bbm/ui/activities/dy;->b:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-static {v0, v1, v2, v3}, Lcom/bbm/util/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bbm/ui/activities/cn;)V

    goto :goto_19
.end method
