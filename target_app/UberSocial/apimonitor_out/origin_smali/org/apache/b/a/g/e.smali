.class Lorg/apache/b/a/g/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/b/a/g/e;->a:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/b/a/g/e;->b:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/b/a/g/e;->c:[Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/b/a/g/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/b/a/g/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/b/a/g/e;->c:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/b/a/g/d;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/b/a/g/e;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static a(Lorg/apache/b/a/g/e;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/g/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method static b(Lorg/apache/b/a/g/e;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/g/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method static c(Lorg/apache/b/a/g/e;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/g/e;->c:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lorg/apache/b/a/g/e;

    iget-object v0, p0, Lorg/apache/b/a/g/e;->a:Ljava/lang/String;

    iget-object v1, p1, Lorg/apache/b/a/g/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
