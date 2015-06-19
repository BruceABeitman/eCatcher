.class final Lcom/bbm/ui/activities/av;
.super Ljava/lang/Object;
.source "BroadcastActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/BroadcastActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/BroadcastActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/av;->a:Lcom/bbm/ui/activities/BroadcastActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 5

    const-string v0, "onFocusChange"

    const-class v1, Lcom/bbm/ui/activities/BroadcastActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/av;->a:Lcom/bbm/ui/activities/BroadcastActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/BroadcastActivity;->k(Lcom/bbm/ui/activities/BroadcastActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz p2, :cond_15

    const/high16 v0, 0x4120

    :goto_11
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    return-void

    :cond_15
    const/high16 v0, 0x4180

    goto :goto_11
.end method
