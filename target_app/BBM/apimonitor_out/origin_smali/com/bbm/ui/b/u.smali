.class final Lcom/bbm/ui/b/u;
.super Ljava/lang/Object;
.source "FirstTimeSetAvatarDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/b/s;


# direct methods
.method constructor <init>(Lcom/bbm/ui/b/s;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/b/u;->a:Lcom/bbm/ui/b/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/b/u;->a:Lcom/bbm/ui/b/s;

    invoke-static {v0}, Lcom/bbm/ui/b/s;->a(Lcom/bbm/ui/b/s;)Lcom/bbm/ui/activities/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/util/fb;->c(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/activities/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
