.class Lorg/apache/log4j/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final a:Lorg/apache/log4j/a/q;

.field private final b:Lorg/apache/log4j/a/a;


# direct methods
.method constructor <init>(Lorg/apache/log4j/a/a;Lorg/apache/log4j/a/q;)V
    .registers 3

    iput-object p1, p0, Lorg/apache/log4j/a/g;->b:Lorg/apache/log4j/a/a;

    iput-object p2, p0, Lorg/apache/log4j/a/g;->a:Lorg/apache/log4j/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/awt/event/ActionEvent;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/a/g;->a:Lorg/apache/log4j/a/q;

    invoke-virtual {v0}, Lorg/apache/log4j/a/q;->c()V

    return-void
.end method
