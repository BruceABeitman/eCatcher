.class final Lcom/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private synthetic a:Lcom/a/a/bf;


# direct methods
.method constructor <init>(Lcom/a/a/bf;)V
    .registers 2

    iput-object p1, p0, Lcom/a/a/a;->a:Lcom/a/a/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/a/a/a;->a:Lcom/a/a/bf;

    invoke-static {v0}, Lcom/a/a/bf;->f(Lcom/a/a/bf;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;

    move-result-object v0

    const-string v1, "Crashlytics"

    const-string v2, "Initialization marker file created."

    invoke-interface {v0, v1, v2}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
