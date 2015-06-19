.class final Lcom/instagram/cliffjumper/edit/photo/render/e;
.super Ljava/lang/Object;
.source "ImageRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/render/c;


# direct methods
.method constructor <init>(Lcom/instagram/cliffjumper/edit/photo/render/c;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/render/e;->a:Lcom/instagram/cliffjumper/edit/photo/render/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/render/e;->a:Lcom/instagram/cliffjumper/edit/photo/render/c;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/render/c;->b(Lcom/instagram/cliffjumper/edit/photo/render/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/photo/render/f;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/render/f;->a(Lcom/instagram/cliffjumper/edit/photo/render/f;)I

    move-result v2

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/render/f;->b(Lcom/instagram/cliffjumper/edit/photo/render/f;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/instagram/cliffjumper/edit/photo/render/RenderBridge;->a(ILjava/lang/String;)J

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/render/e;->a:Lcom/instagram/cliffjumper/edit/photo/render/c;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/render/f;->b(Lcom/instagram/cliffjumper/edit/photo/render/f;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/instagram/cliffjumper/edit/photo/render/c;->a(Lcom/instagram/cliffjumper/edit/photo/render/c;Ljava/lang/String;)V

    goto :goto_a

    :cond_2b
    return-void
.end method
