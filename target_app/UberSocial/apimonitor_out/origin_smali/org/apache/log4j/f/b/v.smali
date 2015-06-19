.class Lorg/apache/log4j/f/b/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final a:Lorg/apache/log4j/f/b/d;


# direct methods
.method constructor <init>(Lorg/apache/log4j/f/b/d;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/f/b/v;->a:Lorg/apache/log4j/f/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/awt/event/ActionEvent;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/f/b/v;->a:Lorg/apache/log4j/f/b/d;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/d;->l()V

    return-void
.end method
