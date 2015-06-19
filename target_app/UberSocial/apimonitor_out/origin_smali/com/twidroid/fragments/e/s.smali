.class Lcom/twidroid/fragments/e/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/e/r;

.field private b:Ljava/lang/Long;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/twidroid/fragments/e/r;Ljava/lang/Long;Z)V
    .registers 4

    iput-object p1, p0, Lcom/twidroid/fragments/e/s;->a:Lcom/twidroid/fragments/e/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/twidroid/fragments/e/s;->b:Ljava/lang/Long;

    iput-boolean p3, p0, Lcom/twidroid/fragments/e/s;->c:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/s;->b:Ljava/lang/Long;

    return-object v0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/twidroid/fragments/e/s;->c:Z

    return v0
.end method
