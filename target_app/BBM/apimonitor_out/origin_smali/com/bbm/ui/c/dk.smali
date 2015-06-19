.class final Lcom/bbm/ui/c/dk;
.super Ljava/lang/Object;
.source "GroupsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/de;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/de;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/dk;->a:Lcom/bbm/ui/c/de;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const-string v0, "mNewGroupButton Clicked"

    const-class v1, Lcom/bbm/ui/c/de;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/c/dk;->a:Lcom/bbm/ui/c/de;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/bbm/ui/c/dk;->a:Lcom/bbm/ui/c/de;

    invoke-virtual {v2}, Lcom/bbm/ui/c/de;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/bbm/ui/activities/NewGroupActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/c/de;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/bbm/ui/c/dk;->a:Lcom/bbm/ui/c/de;

    invoke-virtual {v0}, Lcom/bbm/ui/c/de;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/high16 v1, 0x7f04

    const v2, 0x7f040016

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
