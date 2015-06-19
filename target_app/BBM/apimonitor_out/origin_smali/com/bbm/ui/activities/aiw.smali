.class final Lcom/bbm/ui/activities/aiw;
.super Ljava/lang/Object;
.source "ViewChannelPostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ViewChannelPostActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/aiw;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/activities/aiw;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->k(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/ek;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bbm/d/ek;->h:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/bbm/ui/activities/aiw;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    const v1, 0x7f0a0042

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a(I)V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/bbm/ui/activities/aiw;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    const v1, 0x7f0a0046

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a(I)V

    goto :goto_12
.end method
