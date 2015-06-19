.class final Lcom/bbm/ui/activities/ajm;
.super Ljava/lang/Object;
.source "ViewChannelPostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ViewChannelPostActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ajm;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/activities/ajm;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->i(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/ec;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bbm/d/ec;->q:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/bbm/ui/activities/ajm;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->b(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/bbm/ui/activities/ajm;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a(Ljava/lang/String;)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/bbm/ui/activities/ajm;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->b(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bbm/ui/activities/ajm;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->d(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V

    goto :goto_19
.end method
