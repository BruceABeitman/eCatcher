.class Lorg/apache/log4j/f/b/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final a:Lorg/apache/log4j/f/b/am;


# direct methods
.method constructor <init>(Lorg/apache/log4j/f/b/am;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/f/b/an;->a:Lorg/apache/log4j/f/b/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/awt/event/ActionEvent;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/f/b/an;->a:Lorg/apache/log4j/f/b/am;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/am;->hide()V

    return-void
.end method
