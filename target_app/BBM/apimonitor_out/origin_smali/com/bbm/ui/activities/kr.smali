.class final Lcom/bbm/ui/activities/kr;
.super Ljava/lang/Object;
.source "GroupAdminAddActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupAdminAddActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupAdminAddActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/kr;->a:Lcom/bbm/ui/activities/GroupAdminAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "mHeaderActionBar Negative Button Clicked"

    const-class v1, Lcom/bbm/ui/activities/GroupAdminAddActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/kr;->a:Lcom/bbm/ui/activities/GroupAdminAddActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupAdminAddActivity;->finish()V

    return-void
.end method
