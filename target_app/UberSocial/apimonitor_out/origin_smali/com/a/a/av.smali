.class final Lcom/a/a/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/a/av;


# instance fields
.field private synthetic a:Lcom/a/a/e;


# direct methods
.method constructor <init>(Lcom/a/a/e;)V
    .registers 2

    iput-object p1, p0, Lcom/a/a/av;->a:Lcom/a/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/a/a/a/ay;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/a/a/a/ay;->d:Lcom/a/a/a/aq;

    iget-boolean v1, v1, Lcom/a/a/a/aq;->a:Z

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/a/a/av;->a:Lcom/a/a/e;

    invoke-static {}, Lcom/a/a/e;->q()Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_14
.end method
