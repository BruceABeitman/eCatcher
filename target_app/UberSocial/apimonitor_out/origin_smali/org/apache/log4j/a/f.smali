.class Lorg/apache/log4j/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/swing/event/DocumentListener;


# instance fields
.field private final a:Lorg/apache/log4j/a/q;

.field private final b:Ljavax/swing/JTextField;

.field private final c:Lorg/apache/log4j/a/a;


# direct methods
.method constructor <init>(Lorg/apache/log4j/a/a;Lorg/apache/log4j/a/q;Ljavax/swing/JTextField;)V
    .registers 4

    iput-object p1, p0, Lorg/apache/log4j/a/f;->c:Lorg/apache/log4j/a/a;

    iput-object p2, p0, Lorg/apache/log4j/a/f;->a:Lorg/apache/log4j/a/q;

    iput-object p3, p0, Lorg/apache/log4j/a/f;->b:Ljavax/swing/JTextField;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljavax/swing/event/DocumentEvent;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/log4j/a/f;->a:Lorg/apache/log4j/a/q;

    iget-object v1, p0, Lorg/apache/log4j/a/f;->b:Ljavax/swing/JTextField;

    invoke-virtual {v1}, Ljavax/swing/JTextField;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/a/q;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljavax/swing/event/DocumentEvent;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/log4j/a/f;->a:Lorg/apache/log4j/a/q;

    iget-object v1, p0, Lorg/apache/log4j/a/f;->b:Ljavax/swing/JTextField;

    invoke-virtual {v1}, Ljavax/swing/JTextField;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/a/q;->b(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljavax/swing/event/DocumentEvent;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/log4j/a/f;->a:Lorg/apache/log4j/a/q;

    iget-object v1, p0, Lorg/apache/log4j/a/f;->b:Ljavax/swing/JTextField;

    invoke-virtual {v1}, Ljavax/swing/JTextField;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/a/q;->b(Ljava/lang/String;)V

    return-void
.end method
