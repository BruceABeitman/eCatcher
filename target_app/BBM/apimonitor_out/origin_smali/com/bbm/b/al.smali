.class public final Lcom/bbm/b/al;
.super Ljava/lang/Object;
.source "SponsoredInviteViewTracker.java"


# instance fields
.field private final a:Lcom/bbm/j/u;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View;Lcom/bbm/util/eq;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bbm/b/am;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/bbm/b/am;-><init>(Lcom/bbm/b/al;Lcom/bbm/util/eq;Landroid/view/View;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bbm/b/al;->a:Lcom/bbm/j/u;

    iget-object v0, p0, Lcom/bbm/b/al;->a:Lcom/bbm/j/u;

    invoke-virtual {v0}, Lcom/bbm/j/u;->c()V

    return-void
.end method
