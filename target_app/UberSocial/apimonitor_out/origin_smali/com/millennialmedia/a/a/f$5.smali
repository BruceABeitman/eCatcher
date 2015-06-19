.class Lcom/millennialmedia/a/a/f$5;
.super Lcom/millennialmedia/a/a/aa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/a/a/f;->a(Lcom/millennialmedia/a/a/x;)Lcom/millennialmedia/a/a/aa;
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/a/a/f;


# direct methods
.method constructor <init>(Lcom/millennialmedia/a/a/f;)V
    .registers 2

    iput-object p1, p0, Lcom/millennialmedia/a/a/f$5;->a:Lcom/millennialmedia/a/a/f;

    invoke-direct {p0}, Lcom/millennialmedia/a/a/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Number;
    .registers 4

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/a/a/d/c;->i:Lcom/millennialmedia/a/a/d/c;

    if-ne v0, v1, :cond_d

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->j()V

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_c
.end method

.method public a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Number;)V
    .registers 4

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->f()Lcom/millennialmedia/a/a/d/d;

    :goto_5
    return-void

    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/d;->b(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/d;

    goto :goto_5
.end method

.method public bridge synthetic a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/f$5;->a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/f$5;->a(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method
