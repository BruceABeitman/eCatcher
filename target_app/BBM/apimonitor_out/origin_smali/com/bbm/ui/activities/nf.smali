.class final Lcom/bbm/ui/activities/nf;
.super Ljava/lang/Object;
.source "GroupEventDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupEventDetailsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupEventDetailsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/nf;->a:Lcom/bbm/ui/activities/GroupEventDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "headerActionBar Negative Button Clicked"

    const-class v1, Lcom/bbm/ui/activities/GroupEventDetailsActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/nf;->a:Lcom/bbm/ui/activities/GroupEventDetailsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->d(Lcom/bbm/ui/activities/GroupEventDetailsActivity;)Lcom/bbm/j/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/j/u;->c()V

    return-void
.end method
