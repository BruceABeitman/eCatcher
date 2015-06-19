.class final Lcom/bbm/ui/activities/l;
.super Ljava/lang/Object;
.source "AddChannelPostActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/AddChannelPostActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/AddChannelPostActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/l;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 5

    if-eqz p2, :cond_d

    iget-object v0, p0, Lcom/bbm/ui/activities/l;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->q(Lcom/bbm/ui/activities/AddChannelPostActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/bbm/ui/activities/l;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->q(Lcom/bbm/ui/activities/AddChannelPostActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c
.end method
