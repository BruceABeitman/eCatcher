.class final Lcom/facebook/g/c;
.super Ljava/lang/Object;
.source "FileLruCache.java"

# interfaces
.implements Lcom/facebook/g/l;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lcom/facebook/g/b;


# direct methods
.method constructor <init>(Lcom/facebook/g/b;Ljava/lang/String;Ljava/io/File;)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/g/c;->c:Lcom/facebook/g/b;

    iput-object p2, p0, Lcom/facebook/g/c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/g/c;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/g/c;->c:Lcom/facebook/g/b;

    iget-object v1, p0, Lcom/facebook/g/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/g/c;->b:Ljava/io/File;

    invoke-static {v0, v1, v2}, Lcom/facebook/g/b;->a(Lcom/facebook/g/b;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method
