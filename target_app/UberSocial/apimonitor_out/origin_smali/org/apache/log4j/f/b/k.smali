.class Lorg/apache/log4j/f/b/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final a:Lorg/apache/log4j/f/b/d;


# direct methods
.method constructor <init>(Lorg/apache/log4j/f/b/d;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/f/b/k;->a:Lorg/apache/log4j/f/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/awt/event/ActionEvent;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/log4j/f/b/k;->a:Lorg/apache/log4j/f/b/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/log4j/f/b/d;->c(Z)V

    iget-object v0, p0, Lorg/apache/log4j/f/b/k;->a:Lorg/apache/log4j/f/b/d;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/d;->F()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/f/b/k;->a:Lorg/apache/log4j/f/b/d;

    iget-object v1, v1, Lorg/apache/log4j/f/b/d;->e:Lorg/apache/log4j/f/b/at;

    invoke-virtual {v1, v0}, Lorg/apache/log4j/f/b/at;->a(Ljava/util/List;)V

    return-void
.end method
