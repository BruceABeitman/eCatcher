.class abstract Lcom/c/a/cw;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/c/a/bw;Lcom/c/a/bf;)Lcom/c/a/cw;
    .registers 3

    new-instance v0, Lcom/c/a/da;

    invoke-direct {v0, p0, p1}, Lcom/c/a/da;-><init>(Lcom/c/a/bw;Lcom/c/a/bf;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/c/a/cg;Ljava/util/List;Lcom/c/ba;)Lcom/c/o;
.end method

.method public abstract a(Lcom/c/a/cg;)V
.end method
