.class Lcom/facebook/b/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/b/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lcom/facebook/b/b;


# direct methods
.method constructor <init>(Lcom/facebook/b/b;Ljava/lang/String;Ljava/io/File;)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/b/b$1;->c:Lcom/facebook/b/b;

    iput-object p2, p0, Lcom/facebook/b/b$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/b/b$1;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/b/b$1;->c:Lcom/facebook/b/b;

    iget-object v1, p0, Lcom/facebook/b/b$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/b/b$1;->b:Ljava/io/File;

    invoke-static {v0, v1, v2}, Lcom/facebook/b/b;->a(Lcom/facebook/b/b;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method
