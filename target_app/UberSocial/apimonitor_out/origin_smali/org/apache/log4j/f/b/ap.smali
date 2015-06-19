.class Lorg/apache/log4j/f/b/ap;
.super Ljava/awt/event/KeyAdapter;
.source "SourceFile"


# instance fields
.field private final a:Lorg/apache/log4j/f/b/ao;


# direct methods
.method constructor <init>(Lorg/apache/log4j/f/b/ao;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/f/b/ap;->a:Lorg/apache/log4j/f/b/ao;

    invoke-direct {p0}, Ljava/awt/event/KeyAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/awt/event/KeyEvent;)V
    .registers 4

    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lorg/apache/log4j/f/b/ap;->a:Lorg/apache/log4j/f/b/ao;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/ao;->hide()V

    :cond_d
    return-void
.end method
