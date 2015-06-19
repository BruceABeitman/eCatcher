.class final Lcom/bbm/ui/activities/vv;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/widget/EditText;

.field final synthetic d:Lcom/bbm/ui/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/MainActivity;Landroid/view/View;Landroid/view/View;Landroid/widget/EditText;)V
    .registers 5

    iput-object p1, p0, Lcom/bbm/ui/activities/vv;->d:Lcom/bbm/ui/activities/MainActivity;

    iput-object p2, p0, Lcom/bbm/ui/activities/vv;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/bbm/ui/activities/vv;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/bbm/ui/activities/vv;->c:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "Add Contacts, search Clicked"

    const-class v1, Lcom/bbm/ui/activities/MainActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/vv;->a:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/vv;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/vv;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/bbm/ui/activities/vv;->d:Lcom/bbm/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;)V

    return-void
.end method
