.class Lcom/facebook/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = -0x2288d511ce8549edL


# instance fields
.field private final b:Ljava/util/Date;

.field private final c:Ljava/util/List;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/facebook/c;

.field private final f:Ljava/util/Date;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/c;Ljava/util/Date;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/facebook/b;->b:Ljava/util/Date;

    iput-object p3, p0, Lcom/facebook/b;->c:Ljava/util/List;

    iput-object p1, p0, Lcom/facebook/b;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/b;->e:Lcom/facebook/c;

    iput-object p5, p0, Lcom/facebook/b;->f:Ljava/util/Date;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/c;Ljava/util/Date;Lcom/facebook/a$1;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/facebook/b;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/c;Ljava/util/Date;)V

    return-void
.end method

.method private a()Ljava/lang/Object;
    .registers 7

    new-instance v0, Lcom/facebook/a;

    iget-object v1, p0, Lcom/facebook/b;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/b;->b:Ljava/util/Date;

    iget-object v3, p0, Lcom/facebook/b;->c:Ljava/util/List;

    iget-object v4, p0, Lcom/facebook/b;->e:Lcom/facebook/c;

    iget-object v5, p0, Lcom/facebook/b;->f:Ljava/util/Date;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/a;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/c;Ljava/util/Date;)V

    return-object v0
.end method
