.class public Lcom/c/cf;
.super Lcom/c/bp;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/c/bp;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Class;)Lcom/c/bp;
    .registers 3

    new-instance v0, Lcom/c/cf;

    invoke-direct {v0, p1}, Lcom/c/cf;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method protected a(Lcom/c/bc;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
