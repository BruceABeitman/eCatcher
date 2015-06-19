.class final Lcom/bbm/ui/c/av;
.super Ljava/lang/Object;
.source "ChatsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/at;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/at;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/av;->a:Lcom/bbm/ui/c/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "Received invite clicked"

    const-class v1, Lcom/bbm/ui/c/at;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "Transition invite tab"

    const-class v1, Lcom/bbm/ui/c/at;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/c/av;->a:Lcom/bbm/ui/c/at;

    invoke-virtual {v0}, Lcom/bbm/ui/c/at;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/MainActivity;

    const v1, 0x7f0a007f

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/MainActivity;->b(I)V

    return-void
.end method
