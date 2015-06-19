.class final Lcom/bbm/ui/ar;
.super Lcom/bbm/j/u;
.source "ConferenceHeaderView.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/am;

.field private final b:Lcom/bbm/d/gp;


# direct methods
.method public constructor <init>(Lcom/bbm/ui/am;Lcom/bbm/d/gp;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/ar;->a:Lcom/bbm/ui/am;

    invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V

    iput-object p2, p0, Lcom/bbm/ui/ar;->b:Lcom/bbm/d/gp;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/ar;)Lcom/bbm/d/gp;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/ar;->b:Lcom/bbm/d/gp;

    return-object v0
.end method


# virtual methods
.method protected final b()Z
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/ar;->a:Lcom/bbm/ui/am;

    invoke-static {v0}, Lcom/bbm/ui/am;->b(Lcom/bbm/ui/am;)Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/a;->M()Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->b()Z

    move-result v1

    if-nez v1, :cond_32

    new-instance v1, Lcom/bbm/ui/as;

    invoke-direct {v1, p0, v0}, Lcom/bbm/ui/as;-><init>(Lcom/bbm/ui/ar;Lcom/bbm/j/r;)V

    invoke-virtual {v1}, Lcom/bbm/d/b/m;->d()I

    move-result v0

    if-lez v0, :cond_26

    iget-object v0, p0, Lcom/bbm/ui/ar;->a:Lcom/bbm/ui/am;

    iget-object v1, p0, Lcom/bbm/ui/ar;->b:Lcom/bbm/d/gp;

    iget-object v1, v1, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/am;->a(Ljava/lang/String;)V

    :goto_24
    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    iget-object v0, p0, Lcom/bbm/ui/ar;->a:Lcom/bbm/ui/am;

    iget-object v1, p0, Lcom/bbm/ui/ar;->b:Lcom/bbm/d/gp;

    invoke-static {v1}, Lcom/bbm/d/b/a;->a(Lcom/bbm/d/gp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/am;->b(Ljava/lang/String;)V

    goto :goto_24

    :cond_32
    const/4 v0, 0x0

    goto :goto_25
.end method
