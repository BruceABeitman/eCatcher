.class final Lcom/bbm/ui/activities/ajf;
.super Ljava/lang/Object;
.source "ViewChannelPostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ViewChannelPostActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ajf;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/bbm/ui/activities/ajf;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/ajf;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/ajf;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->v(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/el;

    move-result-object v2

    iget-object v2, v2, Lcom/bbm/d/el;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/bbm/ui/activities/ajf;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v3}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->w(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/bbm/util/ac;->a(Lcom/bbm/ui/activities/ev;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ajf;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    return-void
.end method
