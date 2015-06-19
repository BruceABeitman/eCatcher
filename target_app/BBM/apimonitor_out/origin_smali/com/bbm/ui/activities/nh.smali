.class final Lcom/bbm/ui/activities/nh;
.super Ljava/lang/Object;
.source "GroupEventDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupEventDetailsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupEventDetailsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/nh;->a:Lcom/bbm/ui/activities/GroupEventDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/nh;->a:Lcom/bbm/ui/activities/GroupEventDetailsActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupEventDetailsActivity;->finish()V

    return-void
.end method
