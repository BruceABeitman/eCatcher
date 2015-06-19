.class final Lcom/bbm/ui/activities/tu;
.super Ljava/lang/Object;
.source "GroupsIconActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupsIconActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupsIconActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/tu;->a:Lcom/bbm/ui/activities/GroupsIconActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "headerButtonActionBar Negative Button Clicked"

    const-class v1, Lcom/bbm/ui/activities/GroupsIconActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/tu;->a:Lcom/bbm/ui/activities/GroupsIconActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/GroupsIconActivity;->setResult(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/tu;->a:Lcom/bbm/ui/activities/GroupsIconActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupsIconActivity;->finish()V

    return-void
.end method
