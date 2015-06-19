.class final Lcom/bbm/ui/activities/yw;
.super Ljava/lang/Object;
.source "NewGroupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/NewGroupActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/NewGroupActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/yw;->a:Lcom/bbm/ui/activities/NewGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "mHeaderActionBar PositiveButton Clicked"

    const-class v1, Lcom/bbm/ui/activities/NewGroupActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/yw;->a:Lcom/bbm/ui/activities/NewGroupActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/NewGroupActivity;->c(Lcom/bbm/ui/activities/NewGroupActivity;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
