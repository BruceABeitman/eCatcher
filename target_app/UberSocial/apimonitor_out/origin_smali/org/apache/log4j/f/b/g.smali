.class Lorg/apache/log4j/f/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final a:Ljavax/swing/JMenuItem;

.field private final b:Lorg/apache/log4j/f/e;

.field private final c:Lorg/apache/log4j/f/b/d;


# direct methods
.method constructor <init>(Lorg/apache/log4j/f/b/d;Ljavax/swing/JMenuItem;Lorg/apache/log4j/f/e;)V
    .registers 4

    iput-object p1, p0, Lorg/apache/log4j/f/b/g;->c:Lorg/apache/log4j/f/b/d;

    iput-object p2, p0, Lorg/apache/log4j/f/b/g;->a:Ljavax/swing/JMenuItem;

    iput-object p3, p0, Lorg/apache/log4j/f/b/g;->b:Lorg/apache/log4j/f/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/awt/event/ActionEvent;)V
    .registers 5

    iget-object v0, p0, Lorg/apache/log4j/f/b/g;->c:Lorg/apache/log4j/f/b/d;

    iget-object v1, p0, Lorg/apache/log4j/f/b/g;->a:Ljavax/swing/JMenuItem;

    iget-object v2, p0, Lorg/apache/log4j/f/b/g;->b:Lorg/apache/log4j/f/e;

    invoke-virtual {v0, v1, v2}, Lorg/apache/log4j/f/b/d;->a(Ljavax/swing/JMenuItem;Lorg/apache/log4j/f/e;)V

    return-void
.end method
