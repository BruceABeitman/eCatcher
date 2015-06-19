.class final Lcom/instagram/cliffjumper/edit/photo/a/l;
.super Ljava/lang/Object;
.source "PhotoFilterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/a/l;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    const/4 v2, 0x0

    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/a/v;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/l;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-direct {v0, v1, v2}, Lcom/instagram/cliffjumper/edit/photo/a/v;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/a/v;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
