.class final Lcom/a/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/a/a/bf;


# direct methods
.method constructor <init>(Lcom/a/a/bf;)V
    .registers 2

    iput-object p1, p0, Lcom/a/a/i;->a:Lcom/a/a/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/a/a/i;->a:Lcom/a/a/bf;

    iget-object v1, p0, Lcom/a/a/i;->a:Lcom/a/a/bf;

    sget-object v2, Lcom/a/a/ap;->a:Ljava/io/FilenameFilter;

    invoke-static {v1, v2}, Lcom/a/a/bf;->a(Lcom/a/a/bf;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/bf;->a([Ljava/io/File;)V

    return-void
.end method
