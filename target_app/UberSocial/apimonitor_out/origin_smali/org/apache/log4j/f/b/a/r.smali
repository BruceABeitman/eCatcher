.class Lorg/apache/log4j/f/b/a/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final a:Lorg/apache/log4j/f/b/a/j;


# direct methods
.method constructor <init>(Lorg/apache/log4j/f/b/a/j;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/f/b/a/r;->a:Lorg/apache/log4j/f/b/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/awt/event/ActionEvent;)V
    .registers 3

    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/f/b/a/r;->a:Lorg/apache/log4j/f/b/a/j;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/j;->h()I

    move-result v0

    if-gtz v0, :cond_0

    return-void
.end method
