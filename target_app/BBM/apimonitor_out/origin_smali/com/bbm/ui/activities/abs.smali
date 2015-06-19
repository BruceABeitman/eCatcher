.class final Lcom/bbm/ui/activities/abs;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ProfileActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/abs;->a:Lcom/bbm/ui/activities/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "mRootView Clicked"

    const-class v1, Lcom/bbm/ui/activities/ProfileActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/abs;->a:Lcom/bbm/ui/activities/ProfileActivity;

    invoke-static {v0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/abs;->a:Lcom/bbm/ui/activities/ProfileActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ProfileActivity;->e(Lcom/bbm/ui/activities/ProfileActivity;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/abs;->a:Lcom/bbm/ui/activities/ProfileActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ProfileActivity;->l(Lcom/bbm/ui/activities/ProfileActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    iget-object v0, p0, Lcom/bbm/ui/activities/abs;->a:Lcom/bbm/ui/activities/ProfileActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;Z)V

    return-void
.end method
