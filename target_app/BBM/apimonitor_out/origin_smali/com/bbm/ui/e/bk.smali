.class public final Lcom/bbm/ui/e/bk;
.super Ljava/lang/Object;
.source "NotAvailableHolder.java"

# interfaces
.implements Lcom/bbm/ui/e/at;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    new-instance v0, Lcom/bbm/ui/e/a;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bbm/ui/e/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final a(Lcom/bbm/ui/e/i;Z)V
    .registers 3

    return-void
.end method
