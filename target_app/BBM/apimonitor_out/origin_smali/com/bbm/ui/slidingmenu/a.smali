.class public final Lcom/bbm/ui/slidingmenu/a;
.super Lcom/bbm/d/a/a/a;
.source "SlideMenuItem.java"


# instance fields
.field public final a:I

.field public b:Z

.field public d:Z

.field private e:Lcom/google/b/a/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/a/l",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/bbm/d/a/a/a;-><init>()V

    invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/slidingmenu/a;->e:Lcom/google/b/a/l;

    iput-boolean v2, p0, Lcom/bbm/ui/slidingmenu/a;->d:Z

    iput p1, p0, Lcom/bbm/ui/slidingmenu/a;->a:I

    invoke-static {p2}, Lcom/google/b/a/l;->c(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/slidingmenu/a;->e:Lcom/google/b/a/l;

    iput-object p3, p0, Lcom/bbm/ui/slidingmenu/a;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/bbm/ui/slidingmenu/a;->g:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/bbm/ui/slidingmenu/a;->h:Z

    iput-boolean v2, p0, Lcom/bbm/ui/slidingmenu/a;->j:Z

    iput-boolean v1, p0, Lcom/bbm/ui/slidingmenu/a;->b:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/b/a/l;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/b/a/l",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V

    iget-object v0, p0, Lcom/bbm/ui/slidingmenu/a;->e:Lcom/google/b/a/l;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/slidingmenu/a;->g:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/bbm/util/bg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iput-object p1, p0, Lcom/bbm/ui/slidingmenu/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bbm/ui/slidingmenu/a;->c()V

    goto :goto_8
.end method

.method public final a(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/bbm/ui/slidingmenu/a;->h:Z

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/bbm/ui/slidingmenu/a;->h:Z

    invoke-virtual {p0}, Lcom/bbm/ui/slidingmenu/a;->c()V

    goto :goto_4
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V

    iget-object v0, p0, Lcom/bbm/ui/slidingmenu/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/bbm/ui/slidingmenu/a;->b:Z

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/bbm/ui/slidingmenu/a;->b:Z

    invoke-virtual {p0}, Lcom/bbm/ui/slidingmenu/a;->c()V

    goto :goto_4
.end method

.method public final c(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/bbm/ui/slidingmenu/a;->i:Z

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/bbm/ui/slidingmenu/a;->i:Z

    invoke-virtual {p0}, Lcom/bbm/ui/slidingmenu/a;->c()V

    goto :goto_4
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V

    iget-object v0, p0, Lcom/bbm/ui/slidingmenu/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/bbm/ui/slidingmenu/a;->j:Z

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/bbm/ui/slidingmenu/a;->j:Z

    invoke-virtual {p0}, Lcom/bbm/ui/slidingmenu/a;->c()V

    goto :goto_4
.end method

.method public final e(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/bbm/ui/slidingmenu/a;->d:Z

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/bbm/ui/slidingmenu/a;->d:Z

    invoke-virtual {p0}, Lcom/bbm/ui/slidingmenu/a;->c()V

    goto :goto_4
.end method

.method public final e()Z
    .registers 2

    invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V

    iget-boolean v0, p0, Lcom/bbm/ui/slidingmenu/a;->h:Z

    return v0
.end method

.method public final f()Z
    .registers 2

    invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V

    iget-boolean v0, p0, Lcom/bbm/ui/slidingmenu/a;->i:Z

    return v0
.end method

.method public final g()Z
    .registers 2

    invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V

    iget-boolean v0, p0, Lcom/bbm/ui/slidingmenu/a;->j:Z

    return v0
.end method
