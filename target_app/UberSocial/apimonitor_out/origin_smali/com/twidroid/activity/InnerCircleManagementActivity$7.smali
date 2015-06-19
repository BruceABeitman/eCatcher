.class Lcom/twidroid/activity/InnerCircleManagementActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/InnerCircleManagementActivity;->b(Lcom/twidroid/model/twitter/User;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/model/twitter/User;

.field final synthetic b:Lcom/twidroid/activity/InnerCircleManagementActivity;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/InnerCircleManagementActivity;Lcom/twidroid/model/twitter/User;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$7;->b:Lcom/twidroid/activity/InnerCircleManagementActivity;

    iput-object p2, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$7;->a:Lcom/twidroid/model/twitter/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$7;->b:Lcom/twidroid/activity/InnerCircleManagementActivity;

    invoke-static {v0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->c(Lcom/twidroid/activity/InnerCircleManagementActivity;)Lcom/twidroid/b/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$7;->a:Lcom/twidroid/model/twitter/User;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/b/a/b;->c(Lcom/twidroid/model/twitter/User;I)Z

    iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$7;->b:Lcom/twidroid/activity/InnerCircleManagementActivity;

    invoke-virtual {v0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->j()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/a/ae;

    iget-object v1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$7;->a:Lcom/twidroid/model/twitter/User;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/twidroid/model/twitter/User;->a(Z)V

    iget-object v1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$7;->a:Lcom/twidroid/model/twitter/User;

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/ae;->a(Ljava/lang/Object;)V

    return-void
.end method
