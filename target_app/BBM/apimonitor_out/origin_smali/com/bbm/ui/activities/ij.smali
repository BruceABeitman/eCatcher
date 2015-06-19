.class final Lcom/bbm/ui/activities/ij;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ij;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const-string v0, "SecondarySlideMenu Bottom Item Clicked"

    const-class v1, Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ij;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    const/4 v1, 0x0

    :try_start_12
    iget-object v0, p0, Lcom/bbm/ui/activities/ij;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v0, v0, Lcom/bbm/ui/activities/ConversationActivity;->f:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1f
    .catch Lcom/bbm/j/z; {:try_start_12 .. :try_end_1f} :catch_30

    move-result v0

    :goto_20
    new-instance v1, Lcom/bbm/util/d/a;

    iget-object v2, p0, Lcom/bbm/ui/activities/ij;->a:Lcom/bbm/ui/activities/ConversationActivity;

    new-instance v3, Lcom/bbm/ui/activities/ik;

    invoke-direct {v3, p0}, Lcom/bbm/ui/activities/ik;-><init>(Lcom/bbm/ui/activities/ij;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/bbm/util/d/a;-><init>(Landroid/content/Context;ZLcom/bbm/util/d/c;)V

    invoke-virtual {v1}, Lcom/bbm/util/d/a;->c()V

    return-void

    :catch_30
    move-exception v0

    move v0, v1

    goto :goto_20
.end method
