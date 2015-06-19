.class final Lcom/bbm/ui/activities/xz;
.super Ljava/lang/Object;
.source "NewChannelActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/NewChannelActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/NewChannelActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/xz;->a:Lcom/bbm/ui/activities/NewChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/xz;->a:Lcom/bbm/ui/activities/NewChannelActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelActivity;->a(Lcom/bbm/ui/activities/NewChannelActivity;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bbm/ui/activities/xz;->a:Lcom/bbm/ui/activities/NewChannelActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelActivity;->b(Lcom/bbm/ui/activities/NewChannelActivity;)V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/bbm/ui/activities/xz;->a:Lcom/bbm/ui/activities/NewChannelActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelActivity;->c(Lcom/bbm/ui/activities/NewChannelActivity;)V

    goto :goto_11
.end method
