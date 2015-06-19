.class public abstract Lorg/apache/b/a/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/b/a/e/c;


# instance fields
.field private a:Lorg/apache/b/a/e/f;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/b/a/e/a;->a:Lorg/apache/b/a/e/f;

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/b/a/e/f;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/e/a;->a:Lorg/apache/b/a/e/f;

    return-object v0
.end method

.method public a(Lorg/apache/b/a/e/f;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/b/a/e/a;->a:Lorg/apache/b/a/e/f;

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method
