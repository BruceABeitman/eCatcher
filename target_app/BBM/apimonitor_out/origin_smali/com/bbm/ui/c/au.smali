.class final Lcom/bbm/ui/c/au;
.super Ljava/lang/Object;
.source "ChatsFragment.java"

# interfaces
.implements Lcom/bbm/ui/dt;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/at;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/at;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/au;->a:Lcom/bbm/ui/c/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/c/au;->a:Lcom/bbm/ui/c/at;

    invoke-virtual {v0}, Lcom/bbm/ui/c/at;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/bbm/ui/activities/MainActivity;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/bbm/ui/c/au;->a:Lcom/bbm/ui/c/at;

    invoke-virtual {v0}, Lcom/bbm/ui/c/at;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/MainActivity;

    if-nez p1, :cond_19

    const/4 v1, 0x1

    :goto_15
    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/MainActivity;->a(Z)V

    :cond_18
    return-void

    :cond_19
    const/4 v1, 0x0

    goto :goto_15
.end method
