.class final Lcom/bbm/h/ae;
.super Lcom/bbm/d/b/m;
.source "AddContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/d/b/m",
        "<",
        "Lcom/bbm/h/al;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/h/m;


# direct methods
.method constructor <init>(Lcom/bbm/h/m;Lcom/bbm/j/r;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/h/ae;->a:Lcom/bbm/h/m;

    invoke-direct {p0, p2}, Lcom/bbm/d/b/m;-><init>(Lcom/bbm/j/r;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Lcom/bbm/h/al;

    iget-object v0, p0, Lcom/bbm/h/ae;->a:Lcom/bbm/h/m;

    invoke-static {v0}, Lcom/bbm/h/m;->a(Lcom/bbm/h/m;)Lcom/bbm/util/cr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bbm/h/al;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
