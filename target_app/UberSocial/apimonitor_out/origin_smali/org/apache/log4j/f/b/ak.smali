.class Lorg/apache/log4j/f/b/ak;
.super Ljava/awt/event/WindowAdapter;
.source "SourceFile"


# instance fields
.field protected a:Lorg/apache/log4j/f/b/d;

.field private final b:Lorg/apache/log4j/f/b/d;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/f/b/d;Lorg/apache/log4j/f/b/d;)V
    .registers 3

    iput-object p1, p0, Lorg/apache/log4j/f/b/ak;->b:Lorg/apache/log4j/f/b/d;

    invoke-direct {p0}, Ljava/awt/event/WindowAdapter;-><init>()V

    iput-object p2, p0, Lorg/apache/log4j/f/b/ak;->a:Lorg/apache/log4j/f/b/d;

    return-void
.end method


# virtual methods
.method public a(Ljava/awt/event/WindowEvent;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/f/b/ak;->a:Lorg/apache/log4j/f/b/d;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/d;->ah()V

    return-void
.end method
