.class final Lcom/c/a/cy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/c/a/dk;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Float;
    .registers 3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/c/a/cy;->a(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method