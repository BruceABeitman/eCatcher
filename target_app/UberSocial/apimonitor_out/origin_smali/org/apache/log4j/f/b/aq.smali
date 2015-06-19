.class Lorg/apache/log4j/f/b/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final a:Lorg/apache/log4j/f/b/ao;


# direct methods
.method constructor <init>(Lorg/apache/log4j/f/b/ao;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/f/b/aq;->a:Lorg/apache/log4j/f/b/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/awt/event/ActionEvent;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/f/b/aq;->a:Lorg/apache/log4j/f/b/ao;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/ao;->hide()V

    return-void
.end method
