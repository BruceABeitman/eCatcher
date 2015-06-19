.class final Lcom/bbm/ui/activities/acd;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ProfileActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/acd;->a:Lcom/bbm/ui/activities/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "mEmoticonButton Clicked"

    const-class v1, Lcom/bbm/ui/activities/ProfileActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {}, Lcom/bbm/ui/activities/ProfileActivity;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/bbm/ui/activities/acd;->a:Lcom/bbm/ui/activities/ProfileActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/ProfileActivity;->c(Lcom/bbm/ui/activities/ProfileActivity;Z)V

    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/bbm/ui/activities/acd;->a:Lcom/bbm/ui/activities/ProfileActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/ProfileActivity;->c(Lcom/bbm/ui/activities/ProfileActivity;Z)V

    goto :goto_17
.end method
