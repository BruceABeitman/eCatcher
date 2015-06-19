.class public Lcom/twidroid/fragments/d/o;
.super Lcom/twidroid/fragments/base/o;
.source "SourceFile"


# instance fields
.field I:Lcom/twidroid/model/twitter/User;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twidroid/fragments/base/o;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/twidroid/model/twitter/User;)V
    .registers 2

    invoke-direct {p0}, Lcom/twidroid/fragments/base/o;-><init>()V

    iput-object p1, p0, Lcom/twidroid/fragments/d/o;->I:Lcom/twidroid/model/twitter/User;

    return-void
.end method


# virtual methods
.method public S()Ljava/lang/String;
    .registers 2

    const-string v0, "No caption set"

    return-object v0
.end method

.method protected b()V
    .registers 1

    return-void
.end method

.method protected c()Lcom/twidroid/model/twitter/User;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/d/o;->I:Lcom/twidroid/model/twitter/User;

    return-object v0
.end method

.method public d()V
    .registers 1

    return-void
.end method
