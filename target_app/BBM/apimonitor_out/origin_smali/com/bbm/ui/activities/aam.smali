.class final Lcom/bbm/ui/activities/aam;
.super Ljava/lang/Object;
.source "OwnProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/OwnProfileActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/OwnProfileActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/aam;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const-string v0, "mAvatarView Clicked"

    const-class v1, Lcom/bbm/ui/activities/OwnProfileActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/aam;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/bbm/ui/activities/aam;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    const-class v3, Lcom/bbm/ui/activities/AvatarViewerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/OwnProfileActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
