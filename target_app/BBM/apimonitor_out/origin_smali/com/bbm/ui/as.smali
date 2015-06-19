.class final Lcom/bbm/ui/as;
.super Lcom/bbm/d/b/m;
.source "ConferenceHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/d/b/m",
        "<",
        "Lcom/bbm/d/er;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/ui/ar;


# direct methods
.method constructor <init>(Lcom/bbm/ui/ar;Lcom/bbm/j/r;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/as;->a:Lcom/bbm/ui/ar;

    invoke-direct {p0, p2}, Lcom/bbm/d/b/m;-><init>(Lcom/bbm/j/r;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Z
    .registers 4

    check-cast p1, Lcom/bbm/d/er;

    iget-object v0, p1, Lcom/bbm/d/er;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/bbm/ui/as;->a:Lcom/bbm/ui/ar;

    invoke-static {v1}, Lcom/bbm/ui/ar;->a(Lcom/bbm/ui/ar;)Lcom/bbm/d/gp;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method
