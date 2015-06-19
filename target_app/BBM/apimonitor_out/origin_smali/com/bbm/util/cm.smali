.class final Lcom/bbm/util/cm;
.super Ljava/lang/Object;
.source "LocationServicesUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/b/o;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/bbm/ui/b/o;Landroid/app/Activity;Landroid/view/View$OnClickListener;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/util/cm;->a:Lcom/bbm/ui/b/o;

    iput-object p2, p0, Lcom/bbm/util/cm;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/bbm/util/cm;->c:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "showEnableLocationDialog right button clicked"

    const-class v1, Lcom/bbm/util/ck;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/util/cm;->a:Lcom/bbm/ui/b/o;

    invoke-virtual {v0}, Lcom/bbm/ui/b/o;->dismiss()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bbm/util/cm;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/bbm/util/cm;->c:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/bbm/util/cm;->c:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_21
    return-void
.end method
