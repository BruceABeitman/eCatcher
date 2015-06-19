.class final Lcom/bbm/ui/c/bo;
.super Ljava/lang/Object;
.source "ContactsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/bm;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/bm;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/bo;->a:Lcom/bbm/ui/c/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "inviteButton Clicked"

    const-class v1, Lcom/bbm/ui/c/bm;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/c/bo;->a:Lcom/bbm/ui/c/bm;

    invoke-virtual {v0}, Lcom/bbm/ui/c/bm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/MainActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/MainActivity;->f()V

    return-void
.end method
