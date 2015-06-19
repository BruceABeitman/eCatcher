.class Lorg/apache/b/a/g/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private a:Ljava/lang/Object;

.field private final b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lorg/apache/b/a/g/i;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lorg/apache/b/a/g/i;->b:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/b/a/g/i;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/g/i;->a:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/b/a/g/i;->a:Ljava/lang/Object;

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Lorg/apache/b/a/g/i;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/b/a/g/i;->a:Ljava/lang/Object;

    return-object v0
.end method
