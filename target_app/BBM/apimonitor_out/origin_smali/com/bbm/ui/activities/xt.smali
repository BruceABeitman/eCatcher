.class final Lcom/bbm/ui/activities/xt;
.super Ljava/lang/Object;
.source "NewChannelActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/NewChannelActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/NewChannelActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/xt;->a:Lcom/bbm/ui/activities/NewChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 4

    if-eqz p2, :cond_b

    iget-object v0, p0, Lcom/bbm/ui/activities/xt;->a:Lcom/bbm/ui/activities/NewChannelActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelActivity;->n(Lcom/bbm/ui/activities/NewChannelActivity;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    :cond_b
    return-void
.end method
