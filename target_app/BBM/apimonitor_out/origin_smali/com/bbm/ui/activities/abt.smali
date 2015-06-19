.class final Lcom/bbm/ui/activities/abt;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ProfileActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/abt;->a:Lcom/bbm/ui/activities/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 16

    iget-object v0, p0, Lcom/bbm/ui/activities/abt;->a:Lcom/bbm/ui/activities/ProfileActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ProfileActivity;->m(Lcom/bbm/ui/activities/ProfileActivity;)Lcom/bbm/ui/FooterActionBar;

    move-result-object v0

    if-eqz v0, :cond_38

    sub-int v0, p5, p3

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lcom/bbm/ui/activities/abt;->a:Lcom/bbm/ui/activities/ProfileActivity;

    invoke-virtual {v2}, Lcom/bbm/ui/activities/ProfileActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    int-to-double v2, v0

    iget v0, v1, Landroid/graphics/Point;->y:I

    int-to-double v0, v0

    const-wide v4, 0x3fe999999999999aL

    mul-double/2addr v0, v4

    cmpg-double v0, v2, v0

    if-gez v0, :cond_39

    const/4 v0, 0x1

    :goto_2b
    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/bbm/ui/activities/abt;->a:Lcom/bbm/ui/activities/ProfileActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/ProfileActivity;->b(Lcom/bbm/ui/activities/ProfileActivity;Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/abt;->a:Lcom/bbm/ui/activities/ProfileActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ProfileActivity;->e(Lcom/bbm/ui/activities/ProfileActivity;)V

    :cond_38
    :goto_38
    return-void

    :cond_39
    const/4 v0, 0x0

    goto :goto_2b

    :cond_3b
    iget-object v0, p0, Lcom/bbm/ui/activities/abt;->a:Lcom/bbm/ui/activities/ProfileActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/ProfileActivity;->b(Lcom/bbm/ui/activities/ProfileActivity;Z)V

    goto :goto_38
.end method
