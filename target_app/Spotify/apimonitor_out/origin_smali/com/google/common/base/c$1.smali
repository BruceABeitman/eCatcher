.class final Lcom/google/common/base/c$1;
.super Lcom/google/common/base/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/c;->b(Ljava/lang/String;)Lcom/google/common/base/c;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/common/base/c;


# direct methods
.method constructor <init>(Lcom/google/common/base/c;Lcom/google/common/base/c;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/google/common/base/c$1;->b:Lcom/google/common/base/c;

    iput-object p3, p0, Lcom/google/common/base/c$1;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/common/base/c;-><init>(Lcom/google/common/base/c;B)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3

    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/google/common/base/c$1;->a:Ljava/lang/String;

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/google/common/base/c$1;->b:Lcom/google/common/base/c;

    invoke-virtual {v0, p1}, Lcom/google/common/base/c;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4
.end method

.method public final b(Ljava/lang/String;)Lcom/google/common/base/c;
    .registers 4

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already specified useForNull"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
