.class final Lcom/c/bx;
.super Lcom/c/bp;


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/c/bp;-><init>(Lcom/c/bx;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Class;)Lcom/c/bp;
    .registers 2

    return-object p0
.end method

.method protected a(Lcom/c/bc;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public a(Lcom/c/bc;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
