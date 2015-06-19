.class final Lcom/bbm/ui/activities/zk;
.super Ljava/lang/Object;
.source "NewListItemActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/NewListItemActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/NewListItemActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/zk;->a:Lcom/bbm/ui/activities/NewListItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "mHeaderActionBar PositiveButton Clicked"

    const-class v1, Lcom/bbm/ui/activities/NewListItemActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/zk;->a:Lcom/bbm/ui/activities/NewListItemActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/zk;->a:Lcom/bbm/ui/activities/NewListItemActivity;

    iget-object v1, v1, Lcom/bbm/ui/activities/NewListItemActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/NewListItemActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/zk;->a:Lcom/bbm/ui/activities/NewListItemActivity;

    invoke-static {v0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V

    return-void
.end method
