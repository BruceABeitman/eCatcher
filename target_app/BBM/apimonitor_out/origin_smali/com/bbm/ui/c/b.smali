.class final Lcom/bbm/ui/c/b;
.super Lcom/bbm/ui/c/g;
.source "BlockedContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/ui/c/a",
        "<TT;TK;>.com/bbm/ui/c/g<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/bbm/ui/c/a;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/a;Landroid/content/Context;Lcom/bbm/j/r;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/ui/c/b;->b:Lcom/bbm/ui/c/a;

    invoke-direct {p0, p1, p2, p3}, Lcom/bbm/ui/c/g;-><init>(Lcom/bbm/ui/c/a;Landroid/content/Context;Lcom/bbm/j/r;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/ui/c/b;->b:Lcom/bbm/ui/c/a;

    invoke-virtual {v0, p1}, Lcom/bbm/ui/c/a;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
