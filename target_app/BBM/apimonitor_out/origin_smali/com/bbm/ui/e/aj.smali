.class public final Lcom/bbm/ui/e/aj;
.super Ljava/lang/Object;
.source "HeaderHolder.java"

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
    .registers 6

    new-instance v0, Lcom/bbm/ui/e/a;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bbm/ui/e/a;-><init>(Landroid/content/Context;B)V

    return-object v0
.end method

.method public final a(Lcom/bbm/ui/e/i;Z)V
    .registers 3

    return-void
.end method
