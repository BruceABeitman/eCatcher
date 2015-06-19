.class public final Lcom/instagram/bugreport/a/g;
.super Lcom/instagram/bugreport/a/d;
.source "IgFlytrapRequestBuilder.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/bugreport/a/d;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/instagram/share/b/f;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/bugreport/a/g;->d(Ljava/lang/String;)Lcom/instagram/bugreport/a/d;

    invoke-static {}, Lcom/instagram/share/b/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/bugreport/a/g;->c(Ljava/lang/String;)Lcom/instagram/bugreport/a/d;

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/bugreport/a/g;->b(Ljava/lang/String;)Lcom/instagram/bugreport/a/d;

    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/b/b;->b()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/b/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/bugreport/a/g;->e(Ljava/lang/String;)Lcom/instagram/bugreport/a/d;

    invoke-static {}, Lcom/instagram/share/b/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/bugreport/a/g;->h(Ljava/lang/String;)Lcom/instagram/bugreport/a/d;

    :goto_3c
    return-void

    :cond_3d
    invoke-static {}, Lcom/instagram/share/b/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/bugreport/a/g;->g(Ljava/lang/String;)Lcom/instagram/bugreport/a/d;

    invoke-static {}, Lcom/instagram/share/b/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/bugreport/a/g;->f(Ljava/lang/String;)Lcom/instagram/bugreport/a/d;

    goto :goto_3c
.end method
