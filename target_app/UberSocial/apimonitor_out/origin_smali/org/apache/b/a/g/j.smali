.class Lorg/apache/b/a/g/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private a:I

.field private final b:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/b/a/g/j;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 3

    iget v0, p0, Lorg/apache/b/a/g/j;->a:I

    iget-object v1, p0, Lorg/apache/b/a/g/j;->b:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lorg/apache/b/a/g/j;->a:I

    iget-object v1, p0, Lorg/apache/b/a/g/j;->b:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_d

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_d
    iget-object v0, p0, Lorg/apache/b/a/g/j;->b:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/b/a/g/j;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/b/a/g/j;->a:I

    aget-object v0, v0, v1

    return-object v0
.end method
