.class Lorg/apache/b/a/e/h;
.super Lorg/apache/b/a/f/a;
.source "SourceFile"


# instance fields
.field private final a:Lorg/apache/b/a/f/j;

.field private final b:Lorg/apache/b/a/e/g;


# direct methods
.method constructor <init>(Lorg/apache/b/a/e/g;Lorg/apache/b/a/f/j;)V
    .registers 3

    iput-object p1, p0, Lorg/apache/b/a/e/h;->b:Lorg/apache/b/a/e/g;

    iput-object p2, p0, Lorg/apache/b/a/e/h;->a:Lorg/apache/b/a/f/j;

    invoke-direct {p0}, Lorg/apache/b/a/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/e/h;->a:Lorg/apache/b/a/f/j;

    invoke-virtual {v0}, Lorg/apache/b/a/f/j;->c()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/b/a/e/h;->b:Lorg/apache/b/a/e/g;

    invoke-static {p1}, Lorg/apache/b/a/c/k;->d(Ljava/lang/String;)Lorg/apache/b/a/c/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/b/a/e/g;->a(Lorg/apache/b/a/c/k;)V

    return-void
.end method
