.class final Lcom/instagram/share/b/b;
.super Lcom/instagram/share/a/a;
.source "FacebookAccount.java"


# instance fields
.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iput-object p2, p0, Lcom/instagram/share/b/b;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/instagram/share/a/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/common/a/c/b;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/share/b/b;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/instagram/share/b/a;->a(Lcom/instagram/common/a/c/b;Ljava/lang/String;)Lcom/instagram/common/a/c/b;

    return-void
.end method
