.class final Lcom/bbm/ui/c/m;
.super Lcom/bbm/j/a;
.source "ChannelDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/j/a",
        "<",
        "Lcom/bbm/d/ec;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/l;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/l;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/m;->a:Lcom/bbm/ui/c/l;

    invoke-direct {p0}, Lcom/bbm/j/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/c/m;->a:Lcom/bbm/ui/c/l;

    invoke-static {v0}, Lcom/bbm/ui/c/l;->b(Lcom/bbm/ui/c/l;)Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/c/m;->a:Lcom/bbm/ui/c/l;

    invoke-static {v1}, Lcom/bbm/ui/c/l;->a(Lcom/bbm/ui/c/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;

    move-result-object v0

    return-object v0
.end method
