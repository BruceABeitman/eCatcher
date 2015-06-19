.class public Lorg/apache/log4j/f/b/a/s;
.super Lorg/apache/log4j/f/b/a/t;
.source "SourceFile"


# static fields
.field private static final e:J = -0x5495189194b32de6L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/log4j/f/b/a/t;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljavax/swing/JTree;Ljava/lang/Object;ZZZIZ)Ljava/awt/Component;
    .registers 9

    invoke-super/range {p0 .. p7}, Lorg/apache/log4j/f/b/a/t;->a(Ljavax/swing/JTree;Ljava/lang/Object;ZZZIZ)Ljava/awt/Component;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljavax/swing/JCheckBox;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/f/b/a/s;->b:Ljavax/swing/JCheckBox;

    return-object v0
.end method
