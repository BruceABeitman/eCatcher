.class final Lcom/bbm/ui/a/ad;
.super Ljava/lang/Object;
.source "UpdatesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/a/z;


# direct methods
.method constructor <init>(Lcom/bbm/ui/a/z;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/a/ad;->a:Lcom/bbm/ui/a/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const v1, 0x7f0a007d

    iget-object v0, p0, Lcom/bbm/ui/a/ad;->a:Lcom/bbm/ui/a/z;

    invoke-static {v0}, Lcom/bbm/ui/a/z;->c(Lcom/bbm/ui/a/z;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/MainActivity;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/MainActivity;->b(I)V

    iget-object v0, p0, Lcom/bbm/ui/a/ad;->a:Lcom/bbm/ui/a/z;

    invoke-static {v0}, Lcom/bbm/ui/a/z;->c(Lcom/bbm/ui/a/z;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/MainActivity;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/MainActivity;->a(I)V

    return-void
.end method
